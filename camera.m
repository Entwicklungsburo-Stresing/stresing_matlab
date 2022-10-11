% This matlab example was created with DLL version 3.24.2

%% create prototype file with library source
%[notfound, warnings] = loadlibrary('ESLSCDLL', 'ESLSCDLL', 'mfilename', 'ESLSCDLL_prototype');

%% load library when prototype file is existent
[notfound, warnings] = loadlibrary('ESLSCDLL', @ESLSCDLL_prototype);
%[methodinfo,structs,enuminfo,ThunkLibName]=ESLSCDLL_prototype(); not needed

%% Initialize driver and board
ptr_number_of_boards = libpointer('uint8Ptr', 0);
status = calllib('ESLSCDLL', 'DLLCCDDrvInit', ptr_number_of_boards);
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
status = calllib('ESLSCDLL', 'DLLInitBoard');
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Load settings and prepre measurement with it
settings = load('settings.mat');
settings = libstruct('global_settings',settings);
status = calllib('ESLSCDLL','DLLSetGlobalSettings',settings);
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
status = calllib('ESLSCDLL','DLLInitMeasurement');
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Start measurement
calllib('ESLSCDLL','DLLReadFFLoop');
% Give it 1 second to start
pause(1);
ptr_measureOn = libpointer('uint8Ptr', 1);
% Wait while measurement is running
while ptr_measureOn.value
    status = calllib('ESLSCDLL', 'DLLisMeasureOn', 1, ptr_measureOn);
    if ~strcmp(status,'es_no_error')
        msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
        error(msg)
    end
end
%% Get data

%% Exit driver
[status] = calllib('ESLSCDLL', 'DLLCCDDrvExit', 1);
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Unload library
unloadlibrary('ESLSCDLL')