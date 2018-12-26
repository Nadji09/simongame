--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:24:48 12/13/2018
-- Design Name:   
-- Module Name:   E:/2CS SIQ/SYSE/Projet/didact_hdl/didact_top_tb.vhd
-- Project Name:  didact_hdl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: didact_top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY didact_top_tb IS
END didact_top_tb;
 
ARCHITECTURE behavior OF didact_top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT didact_top
    PORT(
         rst : IN  std_logic;
         clkin : IN  std_logic;
         bouton1 : IN  std_logic;
         bouton2 : IN  std_logic;
         bouton3 : IN  std_logic;
         Q_del : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clkin : std_logic := '0';
   signal bouton1 : std_logic := '0';
   signal bouton2 : std_logic := '0';
   signal bouton3 : std_logic := '0';

 	--Outputs
   signal Q_del : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clkin_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: didact_top PORT MAP (
          rst => rst,
          clkin => clkin,
          bouton1 => bouton1,
          bouton2 => bouton2,
          bouton3 => bouton3,
          Q_del => Q_del
        );

-- process pour g�n�rer l'horloge
-- une p�riode d'horloge de 20 ns est utilis�e
clkin_gen:process(clkin)
begin
	clkin <= not clkin after 10 ns;
end process clkin_gen;

-- process de d'assignation des signaux de test
tb : PROCESS
BEGIN
	rst <='1';
	bouton1 <= '0';
	bouton2 <= '0';
	bouton3 <= '0';
	wait for 100 us;
	rst <= '0';
	bouton1 <= '0';
	bouton2 <= '0';
	bouton3 <= '0';
	wait for 4000 us;
	bouton1 <= '1';
	bouton2 <= '0';
	bouton3 <= '0';
	wait for 4000 us;
	bouton1 <= '0';
	bouton2 <= '0';
	bouton3 <= '0';
	wait for 4000 us;
	bouton1 <= '0';
	bouton2 <= '1';
	bouton3 <= '0';
	wait for 4000 us;
	bouton1 <= '0';
	bouton2 <= '0';
	bouton3 <= '0';
	wait for 4000 us;
	bouton1 <= '0';
	bouton2 <= '0';
	bouton3 <= '1';
	wait for 4000 us;
	bouton1 <= '0';
	bouton2 <= '0';
	bouton3 <= '0';
	WAIT; -- will wait forever
END PROCESS;

END;
