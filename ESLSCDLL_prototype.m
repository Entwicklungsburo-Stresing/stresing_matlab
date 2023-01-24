function [methodinfo,structs,enuminfo,ThunkLibName]=ESLSCDLL_prototype
%ESLSCDLL_PROTOTYPE Create structures to define interfaces found in 'ESLSCDLL'.

%This function was generated by loadlibrary.m parser version  on Tue Jan 24 15:32:56 2023
%perl options:'ESLSCDLL.i -outfile=ESLSCDLL_prototype.m -thunkfile=ESLSCDLL_thunk_pcwin64.c -header=ESLSCDLL.h'
ival={cell(1,0)}; % change 0 to the actual number of functions to preallocate the data.
structs=[];enuminfo=[];fcnNum=1;
fcns=struct('name',ival,'calltype',ival,'LHS',ival,'RHS',ival,'alias',ival,'thunkname', ival);
MfilePath=fileparts(mfilename('fullpath'));
ThunkLibName=fullfile(MfilePath,'ESLSCDLL_thunk_pcwin64');
% BOOL __stdcall DLLMain ( HINSTANCE hinstDLL , DWORD fdwReason , LPVOID lpvReserved ); 
fcns.thunkname{fcnNum}='int32voidPtrulongvoidPtrThunk';fcns.name{fcnNum}='DLLMain'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'HINSTANCE__Ptr', 'ulong', 'voidPtr'};fcnNum=fcnNum+1;
%  es_status_codes DLLInitBoard (); 
fcns.thunkname{fcnNum}='es_status_codesThunk';fcns.name{fcnNum}='DLLInitBoard'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  es_status_codes DLLInitDriver ( UINT8 * _number_of_boards ); 
fcns.thunkname{fcnNum}='es_status_codesvoidPtrThunk';fcns.name{fcnNum}='DLLInitDriver'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint8Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLExitDriver (); 
fcns.thunkname{fcnNum}='es_status_codesThunk';fcns.name{fcnNum}='DLLExitDriver'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  es_status_codes DLLSetGlobalSettings ( struct global_settings settings ); 
fcns.thunkname{fcnNum}='es_status_codesstructglobal_settingsThunk';fcns.name{fcnNum}='DLLSetGlobalSettings'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'global_settings'};fcnNum=fcnNum+1;
%  es_status_codes DLLAbortMeasurement (); 
fcns.thunkname{fcnNum}='es_status_codesThunk';fcns.name{fcnNum}='DLLAbortMeasurement'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  es_status_codes DLLReturnFrame ( UINT32 drv , UINT32 curr_nos , UINT32 curr_nob , UINT16 curr_cam , UINT16 * pdest , UINT32 length ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint32uint16voidPtruint32Thunk';fcns.name{fcnNum}='DLLReturnFrame'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint32', 'uint16', 'uint16Ptr', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLCopyAllData ( UINT32 drv , UINT16 * pdioden ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtrThunk';fcns.name{fcnNum}='DLLCopyAllData'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint16Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLCopyOneBlock ( UINT32 drv , UINT16 block , UINT16 * pdest ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint16voidPtrThunk';fcns.name{fcnNum}='DLLCopyOneBlock'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint16', 'uint16Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLInitMeasurement (); 
fcns.thunkname{fcnNum}='es_status_codesThunk';fcns.name{fcnNum}='DLLInitMeasurement'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  es_status_codes DLLStartMeasurement_blocking (); 
fcns.thunkname{fcnNum}='es_status_codesThunk';fcns.name{fcnNum}='DLLStartMeasurement_blocking'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  void DLLStartMeasurement_nonblocking (); 
fcns.thunkname{fcnNum}='voidThunk';fcns.name{fcnNum}='DLLStartMeasurement_nonblocking'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  UINT64 DLLTicksTimestamp ( void ); 
fcns.thunkname{fcnNum}='uint64voidThunk';fcns.name{fcnNum}='DLLTicksTimestamp'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint64'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  UINT32 DLLTickstous ( UINT64 tks ); 
fcns.thunkname{fcnNum}='uint32uint64Thunk';fcns.name{fcnNum}='DLLTickstous'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint64'};fcnNum=fcnNum+1;
%  void DLLFreeMemInfo ( UINT64 * pmemory_all , UINT64 * pmemory_free ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='DLLFreeMemInfo'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'uint64Ptr', 'uint64Ptr'};fcnNum=fcnNum+1;
%  void DLLErrorMsg ( char ErrMsg [ 20 ]); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='DLLErrorMsg'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'int8Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLCalcTrms ( UINT32 drvno , UINT32 firstSample , UINT32 lastSample , UINT32 TRMS_pixel , UINT16 CAMpos , double * mwf , double * trms ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint32uint32uint16voidPtrvoidPtrThunk';fcns.name{fcnNum}='DLLCalcTrms'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint32', 'uint32', 'uint16', 'doublePtr', 'doublePtr'};fcnNum=fcnNum+1;
%  int DLLGetProcessCount (); 
fcns.thunkname{fcnNum}='int32Thunk';fcns.name{fcnNum}='DLLGetProcessCount'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  int DLLGetThreadCount (); 
fcns.thunkname{fcnNum}='int32Thunk';fcns.name{fcnNum}='DLLGetThreadCount'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  void DLLErrMsgBoxOn (); 
fcns.thunkname{fcnNum}='voidThunk';fcns.name{fcnNum}='DLLErrMsgBoxOn'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  void DLLErrMsgBoxOff (); 
fcns.thunkname{fcnNum}='voidThunk';fcns.name{fcnNum}='DLLErrMsgBoxOff'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  double DLLCalcRamUsageInMB ( UINT32 nos , UINT32 nob ); 
fcns.thunkname{fcnNum}='doubleuint32uint32Thunk';fcns.name{fcnNum}='DLLCalcRamUsageInMB'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='double'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  double DLLCalcMeasureTimeInSeconds ( UINT32 nos , UINT32 nob , double exposure_time_in_ms ); 
fcns.thunkname{fcnNum}='doubleuint32uint32doubleThunk';fcns.name{fcnNum}='DLLCalcMeasureTimeInSeconds'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='double'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'double'};fcnNum=fcnNum+1;
%  void DLLInitProDLL (); 
fcns.thunkname{fcnNum}='voidThunk';fcns.name{fcnNum}='DLLInitProDLL'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  char * DLLConvertErrorCodeToMsg ( es_status_codes status ); 
fcns.thunkname{fcnNum}='cstringes_status_codesThunk';fcns.name{fcnNum}='DLLConvertErrorCodeToMsg'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'es_status_codes'};fcnNum=fcnNum+1;
%  es_status_codes DLLAbout ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLAbout'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLAboutS0 ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLAboutS0'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLFFValid ( UINT32 drvno , UINT8 * valid ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtrThunk';fcns.name{fcnNum}='DLLFFValid'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLreadBlockTriggerState ( UINT32 drv , UCHAR btrig_ch , UINT8 * state ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8voidPtrThunk';fcns.name{fcnNum}='DLLreadBlockTriggerState'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8', 'uint8Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLAboutGPX ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLAboutGPX'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLwaitForMeasureReady ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLwaitForMeasureReady'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLwaitForBlockReady ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLwaitForBlockReady'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLisMeasureOn ( UINT32 drvno , UINT8 * measureOn ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtrThunk';fcns.name{fcnNum}='DLLisMeasureOn'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLisBlockOn ( UINT32 drvno , UINT8 * blockOn ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtrThunk';fcns.name{fcnNum}='DLLisBlockOn'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8Ptr'};fcnNum=fcnNum+1;
%  void DLLGetCurrentScanNumber ( uint32_t drvno , int64_t * sample , int64_t * block ); 
fcns.thunkname{fcnNum}='voiduint32voidPtrvoidPtrThunk';fcns.name{fcnNum}='DLLGetCurrentScanNumber'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'uint32', 'int64Ptr', 'int64Ptr'};fcnNum=fcnNum+1;
%  void setSWTrig ( UINT8 on ); 
fcns.thunkname{fcnNum}='voiduint8Thunk';fcns.name{fcnNum}='setSWTrig'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'uint8'};fcnNum=fcnNum+1;
%  void DLLSetContFFLoop ( UINT8 activate , UINT32 pause_in_microseconds ); 
fcns.thunkname{fcnNum}='voiduint8uint32Thunk';fcns.name{fcnNum}='DLLSetContFFLoop'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'uint8', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSWTrig ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLSWTrig'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLOutTrigHigh ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLOutTrigHigh'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLOutTrigLow ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLOutTrigLow'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLOutTrigPulse ( UINT32 drvno , UINT32 PulseWidth ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLOutTrigPulse'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLOpenShutter ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLOpenShutter'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLCloseShutter ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLCloseShutter'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLLedOff ( UINT32 drvno , UINT8 LED_OFF ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLLedOff'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLsetUseEC ( UINT32 drvno , UINT8 use_EC ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLsetUseEC'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLInitCameraGeneral ( UINT32 drvno , UINT16 pixel , UINT16 cc_trigger_input , UINT8 is_fft , UINT8 is_area , UINT8 IS_COOLED , UINT16 led_off , UINT16 sensor_gain , UINT16 use_EC ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint16uint16uint8uint8uint8uint16uint16uint16Thunk';fcns.name{fcnNum}='DLLInitCameraGeneral'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint16', 'uint16', 'uint8', 'uint8', 'uint8', 'uint16', 'uint16', 'uint16'};fcnNum=fcnNum+1;
%  es_status_codes DLLInitCamera3001 ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLInitCamera3001'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLInitCamera3010 ( UINT32 drvno , UINT8 adc_mode , UINT16 custom_pattern ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8uint16Thunk';fcns.name{fcnNum}='DLLInitCamera3010'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8', 'uint16'};fcnNum=fcnNum+1;
%  es_status_codes DLLInitCamera3030 ( UINT32 drvno , UINT8 adc_mode , UINT16 custom_pattern , UINT8 adc_gain , UINT8 useDac , UINT32 * dac_output , UINT8 is_hs_ir ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8uint16uint8uint8voidPtruint8Thunk';fcns.name{fcnNum}='DLLInitCamera3030'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8', 'uint16', 'uint8', 'uint8', 'uint32Ptr', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetupFullBinning ( UINT32 drvno , UINT32 lines , UINT8 vfreq ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint8Thunk';fcns.name{fcnNum}='DLLSetupFullBinning'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetBTI ( UINT32 drvno , UINT8 bti_mode ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLSetBTI'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetSTI ( UINT32 drvno , UINT8 sti_mode ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLSetSTI'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetSTimer ( UINT32 drvno , UINT32 stime_in_microseconds ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLSetSTimer'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetBTimer ( UINT32 drvno , UINT32 btime_in_microseconds ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLSetBTimer'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetSSlope ( UINT32 drvno , UINT32 sslope ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLSetSSlope'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetBSlope ( UINT32 drvno , UINT32 slope ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLSetBSlope'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetGain ( UINT32 drvno , UINT16 gain_value ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint16Thunk';fcns.name{fcnNum}='DLLSetGain'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint16'};fcnNum=fcnNum+1;
%  es_status_codes DLLClearAllUserRegs ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLClearAllUserRegs'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetupPCIE_DMA ( UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesuint32Thunk';fcns.name{fcnNum}='DLLSetupPCIE_DMA'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetTLPS ( UINT32 drvno , UINT32 pixel ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLSetTLPS'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetSDAT ( UINT32 drvno , UINT32 datin10ns ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLSetSDAT'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetBDAT ( UINT32 drvno , UINT32 datin10ns ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLSetBDAT'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetTemp ( UINT32 drvno , UINT8 level ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLSetTemp'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetSEC ( UINT32 drvno , UINT32 ecin10ns ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLSetSEC'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetBEC ( UINT32 drvno , UINT32 ecin10ns ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLSetBEC'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetTORReg ( UINT32 drvno , UINT8 tor ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLSetTORReg'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetSensorType ( UINT32 drvno , UINT8 set ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLSetSensorType'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetupVPB ( UINT32 drvno , UINT32 range , UINT32 lines , UINT8 keep ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint32uint8Thunk';fcns.name{fcnNum}='DLLSetupVPB'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLDAC_setOutput ( UINT32 drvno , UINT8 channel , UINT16 output ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8uint16Thunk';fcns.name{fcnNum}='DLLDAC_setOutput'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8', 'uint16'};fcnNum=fcnNum+1;
%  es_status_codes DLLDAC_setAllOutputs ( UINT32 drvno , UINT32 * output , UINT8 isIR ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtruint8Thunk';fcns.name{fcnNum}='DLLDAC_setAllOutputs'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32Ptr', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetMeasurementParameters ( UINT32 drvno , UINT32 nos , UINT32 nob ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint32Thunk';fcns.name{fcnNum}='DLLSetMeasurementParameters'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetupVCLK ( UINT32 drvno , UINT32 lines , UINT8 vfreq ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint8Thunk';fcns.name{fcnNum}='DLLSetupVCLK'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLInitGPX ( UINT32 drvno , UINT32 delay ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLInitGPX'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLIOCtrl_setOutput ( uint32_t drvno , uint32_t number , uint16_t width_in_5ns , uint16_t delay_in_5ns ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint16uint16Thunk';fcns.name{fcnNum}='DLLIOCtrl_setOutput'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint16', 'uint16'};fcnNum=fcnNum+1;
%  es_status_codes DLLIOCtrl_setAllOutputs ( uint32_t drvno , uint16_t * width_in_5ns , uint16_t * delay_in_5ns ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtrvoidPtrThunk';fcns.name{fcnNum}='DLLIOCtrl_setAllOutputs'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint16Ptr', 'uint16Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLIOCtrl_setT0 ( uint32_t drvno , uint32_t period_in_10ns ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32Thunk';fcns.name{fcnNum}='DLLIOCtrl_setT0'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetTicnt ( uint32_t drvno , uint8_t divider ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLSetTicnt'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetTocnt ( uint32_t drvno , uint8_t divider ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLSetTocnt'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLGetIsTdc ( UINT32 drvno , UINT8 * isTdc ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtrThunk';fcns.name{fcnNum}='DLLGetIsTdc'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLGetIsDsc ( UINT32 drvno , UINT8 * isDsc ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtrThunk';fcns.name{fcnNum}='DLLGetIsDsc'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLResetDSC ( uint32_t drvno , uint8_t DSCNumber ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8Thunk';fcns.name{fcnNum}='DLLResetDSC'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetDIRDSC ( uint32_t drvno , uint8_t DSCNumber , uint8_t dir ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8uint8Thunk';fcns.name{fcnNum}='DLLSetDIRDSC'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8', 'uint8'};fcnNum=fcnNum+1;
%  es_status_codes DLLGetDSC ( uint32_t drvno , uint8_t DSCNumber , uint32_t * ADSC , uint32_t * LDSC ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8voidPtrvoidPtrThunk';fcns.name{fcnNum}='DLLGetDSC'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8', 'uint32Ptr', 'uint32Ptr'};fcnNum=fcnNum+1;
%  es_status_codes DLLReadByteS0 ( UINT32 drvno , UINT8 * data , UINT32 address ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtruint32Thunk';fcns.name{fcnNum}='DLLReadByteS0'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8Ptr', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLWriteByteS0 ( UINT32 drvno , UINT8 data , UINT32 address ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8uint32Thunk';fcns.name{fcnNum}='DLLWriteByteS0'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLReadLongS0 ( UINT32 drvno , UINT32 * data , UINT32 address ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtruint32Thunk';fcns.name{fcnNum}='DLLReadLongS0'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32Ptr', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLWriteLongS0 ( UINT32 drvno , UINT32 data , UINT32 address ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint32Thunk';fcns.name{fcnNum}='DLLWriteLongS0'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLReadLongDMA ( UINT32 drvno , UINT32 * data , UINT32 address ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtruint32Thunk';fcns.name{fcnNum}='DLLReadLongDMA'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32Ptr', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLWriteLongDMA ( UINT32 drvno , UINT32 data , UINT32 address ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint32Thunk';fcns.name{fcnNum}='DLLWriteLongDMA'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLReadLongIOPort ( UINT32 drvno , UINT32 * data , UINT32 address ); 
fcns.thunkname{fcnNum}='es_status_codesuint32voidPtruint32Thunk';fcns.name{fcnNum}='DLLReadLongIOPort'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32Ptr', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLWriteLongIOPort ( UINT32 drvno , UINT32 data , UINT32 address ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint32uint32Thunk';fcns.name{fcnNum}='DLLWriteLongIOPort'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint32', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSetS0Bit ( ULONG bitnumber , CHAR address , UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesulongint8uint32Thunk';fcns.name{fcnNum}='DLLSetS0Bit'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'ulong', 'int8', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLResetS0Bit ( ULONG bitnumber , CHAR address , UINT32 drvno ); 
fcns.thunkname{fcnNum}='es_status_codesulongint8uint32Thunk';fcns.name{fcnNum}='DLLResetS0Bit'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'ulong', 'int8', 'uint32'};fcnNum=fcnNum+1;
%  es_status_codes DLLSendFLCAM ( UINT32 drvno , UINT8 maddr , UINT8 adaddr , UINT16 data ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8uint8uint16Thunk';fcns.name{fcnNum}='DLLSendFLCAM'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8', 'uint8', 'uint16'};fcnNum=fcnNum+1;
%  es_status_codes DLLSendFLCAM_DAC ( UINT32 drvno , UINT8 ctrl , UINT8 addr , UINT16 data , UINT8 feature ); 
fcns.thunkname{fcnNum}='es_status_codesuint32uint8uint8uint16uint8Thunk';fcns.name{fcnNum}='DLLSendFLCAM_DAC'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='es_status_codes'; fcns.RHS{fcnNum}={'uint32', 'uint8', 'uint8', 'uint16', 'uint8'};fcnNum=fcnNum+1;
structs.HINSTANCE__.members=struct('unused', 'int32');
structs.global_settings.members=struct('use_software_polling', 'uint32', 'nos', 'uint32', 'nob', 'uint32', 'sti_mode', 'uint32', 'bti_mode', 'uint32', 'stime_in_microsec', 'uint32', 'btime_in_microsec', 'uint32', 'sdat_in_10ns', 'uint32', 'bdat_in_10ns', 'uint32', 'sslope', 'uint32', 'bslope', 'uint32', 'xckdelay_in_10ns', 'uint32', 'sec_in_10ns', 'uint32', 'trigger_mode_cc', 'uint32', 'board_sel', 'uint32', 'sensor_type', 'uint32', 'camera_system', 'uint32', 'camcnt', 'uint32', 'pixel', 'uint32', 'mshut', 'uint32', 'led_off', 'uint32', 'sensor_gain', 'uint32', 'adc_gain', 'uint32', 'temp_level', 'uint32', 'dac', 'uint32', 'shortrs', 'uint32', 'gpx_offset', 'uint32', 'fft_lines', 'uint32', 'vfreq', 'uint32', 'fft_mode', 'uint32', 'lines_binning', 'uint32', 'number_of_regions', 'uint32', 'keep', 'uint32', 'region_size', 'uint32#8', 'dac_output', 'uint32#40', 'tor', 'uint32', 'adc_mode', 'uint32', 'adc_custom_pattern', 'uint32', 'bec_in_10ns', 'uint32', 'cont_pause_in_microseconds', 'uint32', 'is_hs_ir', 'uint32', 'ioctrl_impact_start_pixel', 'uint32', 'ioctrl_output_width_in_5ns', 'uint32#8', 'ioctrl_output_delay_in_5ns', 'uint32#8', 'ioctrl_T0_period_in_10ns', 'uint32', 'dma_buffer_size_in_scans', 'uint32', 'tocnt', 'uint32', 'ticnt', 'uint32', 'use_ec', 'uint32', 'write_to_disc', 'uint32', 'file_path', 'int8#256', 'file_split_mode', 'uint32', 'is_cooled_cam', 'uint32');
enuminfo.es_status_codes=struct('es_no_error',0,'es_device_not_found',1,'es_driver_init_failed',2,'es_debug_init_failed',3,'es_setting_driver_name_failed',4,'es_invalid_pixel_count',5,'es_invalid_driver_number',6,'es_getting_device_info_failed',7,'es_open_device_failed',8,'es_invalid_driver_handle',9,'es_register_read_failed',10,'es_register_write_failed',11,'es_no_space0',12,'es_allocating_memory_failed',13,'es_not_enough_ram',14,'es_parameter_out_of_range',15,'es_unknown_error',16,'es_enabling_interrupts_failed',17,'es_getting_dma_buffer_failed',18,'es_unlocking_dma_failed',19,'es_camera_not_found',20,'es_abortion',21,'es_creating_thread_failed',22,'es_setting_thread_priority_failed',23,'es_already_running',24,'es_disabling_interrupt_failed',25);
methodinfo=fcns;