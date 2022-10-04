library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sequenceTB is
  --Port ( );
end sequenceTB;

architecture Behavioral of sequenceTB is
component sequence
    port(
          Y: out std_logic_vector(0 to 3);
                 A: in std_logic_vector(0 to 3);
                 B: in std_logic_vector(0 to 3);
                  
                  G: in std_logic;
                  AB: in std_logic
    );
  end component;

  signal Y: std_logic_vector(0 to 3);
  
  signal input: std_logic_vector(9 downto 0);
begin
  --lab1_inst1 : entity work.lab1(Behavioral)
  
mapping: sequence port map (
    Y => Y,
    A(0) => input(0),
    A(1) => input(1),
    A(2) => input(2),
    A(3) => input(3),
    
    B(0) => input(4),
    B(1) => input(5),
    B(2) => input(6),
    B(3) => input(7),
    
    G => input(8),
    AB => input(9)
    
  );
  
  simulation : process
    begin
        input <= "0000000000";
        --wait for 20 ns;
        --input <= std_logic_vector(unsigned(input) + 1);
        for i in 0 to 2047 loop
         input <= std_logic_vector(conv_unsigned(i, 10));
             --input <= input+"1";
            wait for  0.488519ns;
        end loop;
        wait;
     end process;
    
end Behavioral;