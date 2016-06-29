----------------------------------------
----------------------------------------
-------------------
----
--
-- The Von Neumann Calculator
-- A VHDL Project
-- UniKL
-- 2016
--
----
-------------------
----------------------------------------
----------------------------------------

-- Version 1 : Created the RAM
---- La simulation du RAM a été modifié
---- Au lieu d'utiliser Nbadr = 2**16,
----  nous avons utilisé Nbadr = 2**8
----  car le simulateur n'arrive pas à
----  simuler 63556 case de mémoire

-- Version 2 : Created the Datapath
---- Création des composants du datapath
----   pour les raisons de tests
---- Intégration des comportement de
----   chacuns des composants dans
----   la description du datapath

-- Version 3 : Created the Control Unit
---- Création de l'unité de contrôle
---- Pas de testbench pour l'instant

-- Version 4 : The design shall be reworked in order to correct every wrong functionality
---- Timing information shall also be removed

entity README is
end entity;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------