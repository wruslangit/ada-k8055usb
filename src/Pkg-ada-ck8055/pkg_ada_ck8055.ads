-- File   : pkg_ada_ck8055.ads
-- Date   : Tue 29 Dec 2020 05:30:17 PM +08
-- Env	  : Linux HPEliteBook8470p-Ub2004-rt38 5.4.66-rt38
-- #1 SMP PREEMPT_RT Sat Sep 26 16:51:59 +08 2020 x86_64 x86_64 x86_64 GNU/Linux
-- Author: WRY wruslandr@gmail.com
-- ========================================================
-- GNAT Studio Community 2020 (20200427) hosted on x86_64-pc-linux-gnu
-- GNAT 9.3.1 targetting x86_64-linux-gnu
-- SPARK Community 2020 (20200818)
--
-- ========================================================
with Interfaces.C;
with Interfaces.C.Extensions;

-- TO INTERFACE TO C, just create the spec ads file, not the adb file, 
-- Otherwise, we have an infinite recursion. Just spec and no body.

-- ========================================================
package pkg_ada_ck8055 is
-- ========================================================

   package IFaceC  renames Interfaces.C; 
   package IFaceCE renames Interfaces.C.Extensions;
   
   -- Aspect specification only (ads file) and not body (adb file).
   -- Convention used in this specification
   -- (1) For Ada to call void C-function, use "ExeC_" as prefix 
   -- (2) For Ada to call return-value C-function, use "GetC_" prefix.
 
 -- SECTION ON ADA INTERFACE TO C-FUNCTIONS 
 -- ======================================================
 -- (1) K8055 USB BOARD
 -- ======================================================
-- int OpenDevice(long board_address);
function GetC_ada_open_device (board_address : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "OpenDevice";      

-- =======================================================   
-- long SetCurrentDevice(long deviceno);
function GetC_ada_set_current_device (device_no : in IFaceC.long) return IFaceC.long    
     with Import => True, Convention => C, 
     External_Name => "SetCurrentDevice";      
   
-- =======================================================   
-- long SearchDevices(void);
function GetC_ada_search_devices return IFaceC.long    
     with Import => True, Convention => C, 
     External_Name => "SearchDevices";   
   
-- =======================================================   
-- char *Version(void); 
-- function GetC_ada_version return IFaceC.char_array    
--     with Import => True, Convention => C, 
--     External_Name => "Version";   
   
-- =======================================================   
-- int CloseDevice();
function GetC_ada_close_device return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "CloseDevice";   

-- ========================================================
-- (2) ANALOG    
-- ========================================================   
-- long ReadAnalogChannel(long Channelno);
function GetC_ada_read_analog_channel (channel_no : in IFaceC.long) return IFaceC.long    
     with Import => True, Convention => C, 
     External_Name => "ReadAnalogChannel";  
   
-- =======================================================   
-- int ReadAllAnalog(long* data1, long* data2);
function GetC_ada_read_all_analog (data1, data2 : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "ReadAllAnalog";  
   
-- =======================================================   
-- int OutputAnalogChannel(long channel, long data);
function GetC_ada_output_analog_channel (channel_no, data : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "OutputAnalogChannel";  
   
-- =======================================================   
-- int OutputAllAnalog(long data1,long data2);
function GetC_ada_output_all_analog (data1, data2 : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "OutputAllAnalog";  
   
-- =======================================================   
-- int ClearAllAnalog();
function GetC_ada_clear_all_analog return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "ClearAllAnalog";   
   
-- =======================================================   
-- int ClearAnalogChannel(long channel);
function GetC_ada_clear_analog_channel (channel_no : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "ClearAnalogChannel";  

-- =======================================================   
-- int SetAnalogChannel(long channel);
function GetC_ada_set_analog_channel (channel_no : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "SetAnalogChannel";  

-- =======================================================   
-- int SetAllAnalog();
function GetC_ada_set_all_analog return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "SetAllAnalog";   
   
-- ========================================================   
-- (3) DIGITAL   
-- ========================================================
-- int WriteAllDigital(long data);
function GetC_ada_write_all_digital (data : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "WriteAllDigital";  
   
-- =======================================================   
-- int ClearDigitalChannel(long channel);
function GetC_ada_clear_digital_channel (channel_no : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "ClearDigitalChannel";  
   
-- =======================================================   
-- int ClearAllDigital();
function GetC_ada_clear_all_digital return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "ClearAllDigital";   
   
-- =======================================================   
-- int SetDigitalChannel(long channel);
function GetC_ada_set_digital_channel (channel_no : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "SetDigitalChannel";  
   
-- =======================================================   
-- int SetAllDigital();
function GetC_ada_set_all_digital return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "SetAllDigital";  
  
-- =======================================================   
-- int ReadDigitalChannel(long channel);
function GetC_ada_read_digital_channel (channel_no : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "ReadDigitalChannel";  

-- =======================================================   
-- long ReadAllDigital();
function GetC_ada_read_all_digital return IFaceC.long    
     with Import => True, Convention => C, 
     External_Name => "ReadAllDigital";  
   
-- =======================================================   
-- int ResetCounter(long counternr);
function GetC_ada_reset_counter (counter_no : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "ResetCounter";  
   
-- =======================================================   
-- long ReadCounter(long counterno);
function GetC_ada_read_counter (counter_no : in IFaceC.long) return IFaceC.long    
     with Import => True, Convention => C, 
     External_Name => "ReadCounter";  
   
-- =======================================================   
-- int SetCounterDebounceTime(long counterno, long debouncetime);
function GetC_ada_set_counter_debounce_time (counter_no, debounce_time : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "SetCounterDebounceTime";  
   
-- =======================================================   
-- int ReadAllValues (long int  *data1, long int *data2, long int *data3, long int *data4, long int *data5);
function GetC_ada_read_all_values (data1, data2, data3, data4, data5 : in IFaceC.long) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "ReadAllValues";  
   
-- =======================================================   
-- int SetAllValues(int digitaldata, int addata1, int addata2);
function GetC_ada_set_all_values (Ddata, ADdata1, ADdata2 : in IFaceC.int) return IFaceC.int    
     with Import => True, Convention => C, 
     External_Name => "SetAllValues";  

-- ========================================================      
end pkg_ada_ck8055;
-- ======================================================== 

