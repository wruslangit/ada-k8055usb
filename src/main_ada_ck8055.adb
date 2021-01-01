-- File   : main_ada_ck8055.adb
-- Date   : Tue 29 Dec 2020 05:30:17 PM +08
-- Env    : Linux HPEliteBook8470p-Ub2004-rt38 5.4.66-rt38
-- #1 SMP PREEMPT_RT Sat Sep 26 16:51:59 +08 2020 x86_64 x86_64 x86_64 GNU/Linux
-- Author: WRY wruslandr@gmail.com
-- ========================================================
-- GNAT Studio Community 2020 (20200427) hosted on x86_64-pc-linux-gnu
-- GNAT 9.3.1 targetting x86_64-linux-gnu
-- SPARK Community 2020 (20200818)
--
-- 
-- ==========================================================
-- ADA STANDARD PACKAGES
with Ada.Text_IO;
with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions; use Interfaces.c.Extensions;
with Ada.Strings.Unbounded;

-- USER CREATED PACKAGES
with pkg_ada_dtstamp;
with pkg_ada_ck8055;
with pkg_aada_ck8055;

-- ========================================================
procedure main_ada_ck8055 is
-- ========================================================
   package ATIO    renames Ada.Text_IO;
   package IFaceC  renames Interfaces.C; 
   package IFaceCE renames Interfaces.C.Extensions;
   package ASU     renames Ada.Strings.Unbounded;  

   package PADTS      renames pkg_ada_dtstamp;
   package PACK8055   renames pkg_ada_ck8055;
   package PAACK8055  renames pkg_aada_ck8055;
   
   
   -- FOR ADA STRING PRINT MANIPULATION
   -- Introduced because we are interfacing C-code "IFaceC.char_array"
   -- with Ada strings in Ada-code. Ha ha ha.
   -- Where no string initialization is needed, created default empty
   
   ret_k8055_version : IFaceC.char_array := "version";
   UBret_k8055_version : ASU.Unbounded_String;
   
   board_address     : IFaceC.long := 0;
   ret_board_address : IFaceC.int  := 999;
   
begin

   PADTS.dtstamp; ATIO.Put_Line ("Bismillah 3 times WRY");
   -- PADTS.dtstamp; PARS232.ExeC_ada_current_working_directory;
   -- PADTS.dtstamp; PARS232.ExeC_ada_display_date_only;
   ATIO.Put_Line ("Started main_ada_ck8055.adb program.");
   ATIO.New_Line;
   -- =====================================================
   
   ret_board_address := PACK8055.GetC_ada_open_device (board_address);
   ATIO.Put ("GetC_ada_open_device (");
   ATIO.Put (IFaceC.long'Image(board_address) & ") = ");
   ATIO.Put_Line (IFaceC.int'Image(ret_board_address));
   
   --UBret_k8055_version := PACK8055.GetC_ada_version; -- return IFaceC.char_array
   --ret_k8055_version := PACK8055.GetC_ada_version;
   
   -- =====================================================   
   ATIO.New_Line;
   PADTS.dtstamp; ATIO.Put_Line ("Ended main_ada_ck8055.adb program.");
   PADTS.dtstamp; ATIO.Put_Line ("Alhamdulillah 3 times WRY");

-- ========================================================
end main_ada_ck8055;
-- ========================================================

