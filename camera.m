% This matlab example was created with DLL version 3.24.3

% drvno = 1 selects the first PCIe board. This is example is for one PCIe board.
drvno = 1;

%% create prototype file with library source
%[notfound, warnings] = loadlibrary('ESLSCDLL', 'ESLSCDLL', 'mfilename', 'ESLSCDLL_prototype');

%% load library when prototype file is existent
[notfound, warnings] = loadlibrary('ESLSCDLL', @ESLSCDLL_prototype);

%% Initialize driver and board
ptr_number_of_boards = libpointer('uint8Ptr', 0);
status = calllib('ESLSCDLL', 'DLLInitDriver', ptr_number_of_boards);
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
%% Start measurement with blocking call, to wait until end of measurement
status = calllib('ESLSCDLL','DLLStartMeasurement_blocking');
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Get data of one frame
% allocate memory for destination pointer of size pixel * sizeof(uint16)
frameArray = zeros(get(settings, 'pixel'),1);
ptr_frameArray = libpointer('uint16Ptr',frameArray);
% get data of sample 10 in block 0, camera 0
status = calllib('ESLSCDLL', 'DLLReturnFrame', drvno, 10, 0, 0, ptr_frameArray, get(settings, 'pixel'));
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Get data of one block
% allocate memory for destination pointer of size pixel * nos * camcnt * sizeof(uint16)
blockArray = zeros(get(settings, 'pixel')*get(settings,'nos')*get(settings,'camcnt'),1);
ptr_blockArray = libpointer('uint16Ptr',blockArray);
% get data of block number 0
status = calllib('ESLSCDLL', 'DLLCopyOneBlock', drvno, 0, ptr_blockArray);
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Get all data
% allocate memory for destination pointer of size pixel * nos * nob * camcnt * sizeof(uint16)
dataArray = zeros(get(settings, 'pixel')*get(settings,'nos')*get(settings,'camcnt')*get(settings,'nob'),1);
ptr_dataArray = libpointer('uint16Ptr',dataArray);
% get all data
status = calllib('ESLSCDLL', 'DLLCopyAllData', drvno, ptr_dataArray);
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Display data
plot(ptr_frameArray.value);
ylim([0 65535]);
%% Exit driver
[status] = calllib('ESLSCDLL', 'DLLExitDriver');
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Unload library
clear('settings');
unloadlibrary('ESLSCDLL')