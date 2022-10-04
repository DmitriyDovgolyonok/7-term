----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.10.2022 04:35:48
-- Design Name: 
-- Module Name: sequence - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sequence is
    Port ( 
             Y: out std_logic_vector(0 to 3);
             A: in std_logic_vector(0 to 3);
             B: in std_logic_vector(0 to 3);
              
              G: in std_logic;
              AB: in std_logic
       );
            
end sequence;

architecture Sequence of sequence is

begin
   process(G, AB, A, B) is
   begin
    if(G = '0') then
        if(AB = '0') then
            Y <= A;
         else
            Y <= B;
         end if;
     else 
        Y <= "0000";
     end if;
   end process;

end Sequence;
