----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C Anders Enga
-- 
-- Create Date: 02/24/2025 08:29:04 AM
-- Design Name: Testbench for Hex Seven Segment Decoder
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    component sevenseg_decoder is
        port(
            i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
            o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
        );	
    end component;

  signal w_Hex : std_logic_vector (3 downto 0):= (others=> '0');
  signal w_seg : std_logic_vector (6 downto 0) := (others=> '0');
  

begin

sevenseg_decoder_inst : sevenseg_decoder port map (
    i_Hex => w_Hex,
    o_seg_n => w_seg
   );
   test_process : process
   begin
   
        w_Hex <= x"0"; wait for 10 ns;
            assert w_seg = "1000000" report "error on x0" severity failure;
        w_Hex <= x"1"; wait for 10 ns;
            assert w_seg = "1111001" report "error on x1" severity failure;
        w_Hex <= x"2"; wait for 10 ns;
            assert w_seg = "0100100" report "error on x2" severity failure;
        w_Hex <= x"3"; wait for 10 ns;
            assert w_seg = "0110000" report "error on x3" severity failure;
        w_Hex <= x"4"; wait for 10 ns;
            assert w_seg = "0011001" report "error on x4" severity failure;
        w_Hex <= x"5"; wait for 10 ns;
            assert w_seg = "0010010" report "error on x5" severity failure;
        w_Hex <= x"6"; wait for 10 ns;
            assert w_seg = "0000010" report "error on x6" severity failure;
        w_Hex <= x"7"; wait for 10 ns;
            assert w_seg = "1111000" report "error on x7" severity failure;
        w_Hex <= x"8"; wait for 10 ns;
            assert w_seg = "0000000" report "error on x8" severity failure;
        w_Hex <= x"9"; wait for 10 ns;
            assert w_seg = "0011000" report "error on x9" severity failure;
        w_Hex <= x"A"; wait for 10 ns;
            assert w_seg = "0001000" report "error on xA" severity failure;
        w_Hex <= x"B"; wait for 10 ns;
            assert w_seg = "0000011" report "error on xB" severity failure;
        w_Hex <= x"C"; wait for 10 ns;
            assert w_seg = "0100111" report "error on xC" severity failure;
        w_Hex <= x"D"; wait for 10 ns;
            assert w_seg = "0100001" report "error on xD" severity failure;
        w_Hex <= x"E"; wait for 10 ns;
            assert w_seg = "0000110" report "error on xE" severity failure;
        w_Hex <= x"F"; wait for 10 ns;
            assert w_seg = "0001110" report "error on xF" severity failure;
        
        wait; -- wait forever
   end process;
   
end Behavioral;
