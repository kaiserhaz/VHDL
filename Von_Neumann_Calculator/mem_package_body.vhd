----------------------------------------
----------------------------------------
-------------------
----
--
-- The Von Neumann Calculator
-- A VHDL Project
-- Polytech Nice-Sophia
-- ELEC4
-- 2013
-- 
-- File 01 : RAM package body
--
----
-------------------
----------------------------------------
----------------------------------------

-- RAM package body

package body mem_package is
  
  impure function init_mem(fichier:string)return defmem is
    file fd : text is fichier;
    variable mem2 : defmem := (others=>"0000000000000000");
    variable adresse : natural := 0;
    variable donnee : bit_vector(Nbbits-1 downto 0);
    variable li : line;
    begin 
      while not endfile(fd) loop
        readline(fd,li);
        if li'length>0 and li(1)/='-' then
          read(li,adresse);
          read(li,donnee);
          mem2(adresse) := signed(donnee);
        end if;
      end loop;
      return mem2;
  end init_mem;
  
  --function to_unsigned(arg:signed,size:natural)return unsigned is
    

end mem_package;