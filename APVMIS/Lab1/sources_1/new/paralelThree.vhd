----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2022 21:09:20
-- Design Name: 
-- Module Name: paralelThree - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity parallelThree is
     Port ( 
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
end parallelThree;

architecture ParallelThree of parallelThree is
    signal and1: std_logic;
    signal and2: std_logic;
    signal and3: std_logic;
    signal and4: std_logic;
    signal and5: std_logic;
    signal and6: std_logic;
    signal and7: std_logic;
    signal and8: std_logic;
    
    signal innerand1: std_logic;
    signal innerand2:std_logic;
begin
    innerand1 <= (not G) and (not AB);
    innerand2 <= (not G) and (not(not AB));
    
    and1 <= A1 and innerand1;
    and2 <= B1 and innerand2;
    and3 <= A2 and innerand1;
    and4 <= B2 and innerand2;
    and5 <= A3 and innerand1;
    and6 <= B3 and innerand2;
    and7 <= A4 and innerand1;
    and8 <= B4 and innerand2;
    
    y1 <= and1 or and2;
    y2 <= and3 or and4;
    y3 <= and5 or and6;
    y4 <= and7 or and8;
    
end ParallelThree;
