----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2022 21:11:26
-- Design Name: 
-- Module Name: parallelTB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity parallelTB is
  --Port ( );
end parallelTB;

architecture Behavioral of parallelTB is
component parallelThree
    port(
      y1: out std_logic;
           y2: out std_logic;
           y3: out std_logic;
           y4: out std_logic;
           
           A1: in std_logic;
           A2: in std_logic;
           A3: in std_logic;
           A4: in std_logic;
           
           B1: in std_logic;
           B2: in std_logic;
           B3: in std_logic;
           B4: in std_logic;
           
           G: in std_logic;
           AB: in std_logic
    );
  end component;

  signal y1: std_logic;
  signal y2: std_logic;
  signal y3: std_logic;
  signal y4: std_logic;
  
  signal input: std_logic_vector(9 downto 0);
  
begin
  --lab1_inst1 : entity work.lab1(Behavioral)
  
mapping: parallelThree port map (
    y1 => y1,
    y2 => y2,
    y3 => y3,
    y4 => y4,
    
    A1 => input(0),
    A2 => input(1),
    A3 => input(2),
    A4 => input(3),
    
    B1 => input(4),
    B2 => input(5),
    B3 => input(6),
    B4 => input(7),
    
    G => input(8),
    AB => input(9)
  );
  
  simulation : process
    begin
        --input <= "0000000000";
        --wait for 20 ns;
        --input <= std_logic_vector(unsigned(input) + 1);
        for i in 0 to 2047 loop
                input <= std_logic_vector(conv_unsigned(i, 10));
             --input <= input+'1';
            wait for 0.488519ns;
        end loop;
        wait;
     end process;
    
end Behavioral;
