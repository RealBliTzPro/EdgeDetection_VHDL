library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity edgeDetection is 
port (
    clk     : in  std_logic;
    --reset   : in  std_logic;
    ssd1 : out std_logic_vector(0 to 6);
    ssd2 : out std_logic_vector(0 to 6);
    ssd3 : out std_logic_vector(0 to 6);
    ssd4 : out std_logic_vector(0 to 6)
);
end edgeDetection;

architecture arch of edgeDetection is

    -- Define the convolution matrix type as an array of signed 8-bit numbers
    type conv_matrix_type is array (0 to 2, 0 to 2) of signed(7 downto 0);

    -- Declare the constant convolution matrix with values from -1 to 1
    constant convMatrix : conv_matrix_type := (
        (to_signed( -1, 8), to_signed( 0, 8), to_signed(1, 8)),  -- First row
        (to_signed( -1, 8), to_signed( 0, 8), to_signed(1, 8)),  -- Second row
        (to_signed( -1, 8), to_signed( 0, 8), to_signed(1, 8))   -- Third row
    );

    -- Define a matrix of signed 8-bit numbers (10x10)
    type Matrix is array(0 to 9, 0 to 9) of signed(8 downto 0);

    -- Declare the signal for the image matrix (input image data)
    signal imageMatrix : Matrix := (
        (to_signed(194, 9), to_signed(183, 9), to_signed(185, 9), to_signed(206, 9), to_signed(225, 9), to_signed(202, 9), to_signed(227, 9), to_signed(202, 9), to_signed(212, 9), to_signed(207, 9)),
        (to_signed(207, 9), to_signed(216, 9), to_signed(185, 9), to_signed(204, 9), to_signed(200, 9), to_signed(212, 9), to_signed(189, 9), to_signed(224, 9), to_signed(191, 9), to_signed(218, 9)),
        (to_signed(224, 9), to_signed(224, 9), to_signed(220, 9), to_signed(191, 9), to_signed(203, 9), to_signed(183, 9), to_signed(208, 9), to_signed(180, 9), to_signed(186, 9), to_signed(209, 9)),
        (to_signed(210, 9), to_signed(216, 9), to_signed(208, 9), to_signed(229, 9), to_signed(214, 9), to_signed(214, 9), to_signed(78, 9), to_signed(186, 9), to_signed(183, 9), to_signed(192, 9)),
        (to_signed(221, 9), to_signed(208, 9), to_signed(193, 9), to_signed(187, 9), to_signed(185, 9), to_signed(224, 9), to_signed(55, 9), to_signed(180, 9), to_signed(183, 9), to_signed(199, 9)),
        (to_signed(211, 9), to_signed(211, 9), to_signed(229, 9), to_signed(182, 9), to_signed(199, 9), to_signed(189, 9), to_signed(91, 9), to_signed(204, 9), to_signed(227, 9), to_signed(210, 9)),
        (to_signed(206, 9), to_signed(183, 9), to_signed(191, 9), to_signed(228, 9), to_signed(183, 9), to_signed(190, 9), to_signed(41, 9), to_signed(226, 9), to_signed(180, 9), to_signed(218, 9)),
        (to_signed(223, 9), to_signed(209, 9), to_signed(206, 9), to_signed(203, 9), to_signed(196, 9), to_signed(224, 9), to_signed(12, 9), to_signed(224, 9), to_signed(212, 9), to_signed(212, 9)),
        (to_signed(195, 9), to_signed(202, 9), to_signed(199, 9), to_signed(219, 9), to_signed(192, 9), to_signed(203, 9), to_signed(31, 9), to_signed(213, 9), to_signed(227, 9), to_signed(186, 9)),
        (to_signed(209, 9), to_signed(191, 9), to_signed(201, 9), to_signed(196, 9), to_signed(201, 9), to_signed(220, 9), to_signed(189, 9), to_signed(211, 9), to_signed(223, 9), to_signed(220, 9))
    );
    -- Hex conversion for 7-segment display
    function to_7seg(hex_val: std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        case hex_val is
            when "0000" => return "0000001"; -- '0'
            when "0001" => return "1001111"; -- '1'
            when "0010" => return "0010010"; -- '2'
            when "0011" => return "0000110"; -- '3'
            when "0100" => return "1001100"; -- '4'
            when "0101" => return "0100100"; -- '5'
            when "0110" => return "0100000"; -- '6'
            when "0111" => return "0001111"; -- '7'
            when "1000" => return "0000000"; -- '8'
            when "1001" => return "0000100"; -- '9'
            when others => return "1111111"; -- Default (turn all segments off)
        end case;
    end function;

    -- Signal for the hex values for the 7-segment display
    signal hex_first_i, hex_first_j, hex_last_i, hex_last_j : std_logic_vector(3 downto 0);  -- 4-bit for each digit

begin
    -- Process to apply convolution to the image matrix
    process(clk)
        variable temp_y : signed(16 downto 0); -- Variable to store the result of convolution for each element
        variable i, j : integer;
        variable first_i, first_j : integer := -1; -- Initialize with invalid values
        variable last_i, last_j : integer := -1;  -- Initialize with invalid values
		Variable tempValue : signed(9 downto 0);
    begin
        if rising_edge(clk) then
            -- Loop through the image matrix (excluding boundary)
            for i in 1 to 8 loop
                for j in 1 to 8 loop
                    -- Convolution: apply the convolution matrix to the surrounding 3x3 region of the image matrix
                    temp_y := (imageMatrix(i-1, j-1) * to_signed( -1, 8)) +
                              (imageMatrix(i-1, j) * to_signed( 0, 8)) +
                              (imageMatrix(i-1, j+1) * to_signed(1, 8)) +
                              (imageMatrix(i, j-1) * to_signed( -1, 8)) +
                              (imageMatrix(i, j) * to_signed( 0, 8)) +
                              (imageMatrix(i, j+1) * to_signed(1, 8)) +
                              (imageMatrix(i+1, j-1) * to_signed( -1, 8)) +
                              (imageMatrix(i+1, j) * to_signed( 0, 8)) +
                              (imageMatrix(i+1, j+1) * to_signed(1, 8));

                    -- Thresholding: Set result based on the value of temp_y
                     if temp_y < to_signed(50, 17) and temp_y > to_signed(-50,17) then
                        temp_y := to_signed(0, 17);  -- Set to 0 if less than 130
                    else
                        temp_y := to_signed(1, 17);  -- Set to 1 if greater or equal to 130
                    end if;

                    -- Check if edge is detected
                    if temp_y = to_signed(1, 16) then
                        -- Save the first occurrence
                        if first_i = -1 then
						tempValue := (to_signed(0,10))+(imageMatrix(i, j+1) - imageMatrix(i, j));
						if i-1=0 and ((tempValue) > to_signed(70, 9) or (tempValue) < to_signed(-70, 9) ) then
                            first_i := i;
                            first_j := j+1;
							else
							first_i := i+1;
                            first_j := j+1;
							end if;
                        end if;
                        -- Save the last occurrence
						tempValue :=(to_signed(0,10))+ imageMatrix(i, j-1) - imageMatrix(i, j);
						if i+1 = 9 and ((tempValue) > to_signed(70, 9) or (tempValue) < to_signed(-70, 9) ) then
							last_i := i;
							last_j := j-1;
						else
							last_i := i-1;
							last_j := j-1;
						end if;
                    end if;
                end loop;
            end loop;

            -- Convert coordinates (first_i, first_j, last_i, last_j) into hex digits
            hex_first_i <= std_logic_vector(to_unsigned(first_i, 4));  -- For 4-bit hex representation
            hex_first_j <= std_logic_vector(to_unsigned(first_j, 4));  -- For 4-bit hex representation
            hex_last_i <= std_logic_vector(to_unsigned(last_i, 4));    -- For 4-bit hex representation
            hex_last_j <= std_logic_vector(to_unsigned(last_j, 4));    -- For 4-bit hex representation

            -- Convert the hex values to 7-segment display values
            ssd4 <= to_7seg(hex_first_i);  -- First digit for first_i
            ssd3 <= to_7seg(hex_first_j);  -- First digit for first_j
            ssd2 <= to_7seg(hex_last_i);   -- First digit for last_i
            ssd1 <= to_7seg(hex_last_j);   -- First digit for last_j
        end if;
    end process;

end arch;
