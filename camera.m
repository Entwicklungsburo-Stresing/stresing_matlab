% This matlab example was created with DLL version 4.4.4
% This script initializes the camera, does one measurement, reads the data and plots the data. The data access happens after the complete measurement is done. This is example is written for 1 camera on 1 PCIe board.

% Selects the PCIe board. While there is only 1 PCIe board in this exmaple, it is always 1.
board_sel = 1;

%% Create prototype file with library source.
% This needs to be done, when there are no prototype files in this directory or when you want to update the DLL version. For this call, some source files from the EBST_CAM repository are needed. Copy the folders shared_src/, Jungo/ and the file ESLSCDLL.h to this folder.
%[notfound, warnings] = loadlibrary('ESLSCDLL', 'ESLSCDLL', 'mfilename', 'ESLSCDLL_prototype');

%% load library when prototype file is existent
[notfound, warnings] = loadlibrary('ESLSCDLL', @ESLSCDLL_prototype);
%%
%[methodinfo,structs,enuminfo,ThunkLibName]=ESLSCDLL_prototype();
%% Initialize driver and board
% Get a pointer to a c-style uint8 variable initialized to 0
ptr_number_of_boards = libpointer('uint8Ptr', 0);
% Initialize the driver and pass the created pointer to it. number_of_boards should show the number of detected PCIe boards after the next call.
status = calllib('ESLSCDLL', 'DLLInitDriver', ptr_number_of_boards);
% Check the status code after each DLL call. When it is not 'es_no_error', an error is raised. The error message will be displayed and the script will stop.
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
% Initialize the PCIe board.
status = calllib('ESLSCDLL', 'DLLInitBoard');
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Load the settings into the DLL.
% See EBST_CAM/shared_src/struct.h for setting details.
measurement_settings = load('measurement_settings.mat');
measurement_settings = libstruct('measurement_settings_matlab',measurement_settings);
camera_settings = load('camera_settings.mat');
camera_settings = libstruct('camera_settings',camera_settings);
% use the same settings for all possible 5 PCIe boards
status = calllib('ESLSCDLL','DLLSetGlobalSettings_matlab',measurement_settings, camera_settings, camera_settings, camera_settings, camera_settings, camera_settings);
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
% Initialize the measurement. The settings from the step before will be used for this.
status = calllib('ESLSCDLL','DLLInitMeasurement');
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Start measurement
% In this example the blocking call is used, which means this call will return when the measurement is finished. This is done to ensure that no data access happens before all data is collected.
status = calllib('ESLSCDLL','DLLStartMeasurement_blocking');
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Get data of one frame
% allocate memory for destination pointer of size pixel * sizeof(uint16)
frameArray = zeros(get(camera_settings, 'pixel'),1);
ptr_frameArray = libpointer('uint16Ptr',frameArray);
% get data of sample 10 in block 0, camera 0
% The second pointer ptr_frameArray could be used to retrive data from a
% second board. Since there is only one board in this example, the same
% pointer is passed to this parameter.
status = calllib('ESLSCDLL', 'DLLReturnFrame', board_sel, 10, 0, 0, ptr_frameArray, ptr_frameArray, get(camera_settings, 'pixel'));
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Display data
plot(ptr_frameArray.value);
ylim([0 65535]);
%% Get data of one block
% % This block is showing you how to get all data of one frame with one DLL call
% % allocate memory for destination pointer of size pixel * nos * camcnt * sizeof(uint16)
% blockArray = zeros(get(settings, 'pixel')*get(settings,'nos')*get(settings,'camcnt'),1);
% ptr_blockArray = libpointer('uint16Ptr',blockArray);
% % get data of block number 0
% status = calllib('ESLSCDLL', 'DLLCopyOneBlock', board_sel, 0, ptr_blockArray, ptr_blockArray);
% if ~strcmp(status,'es_no_error')
%     msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
%     error(msg)
% end
%% Get all data
% % This block is showing you how to get all data of the whole measurement with one DLL call
% % allocate memory for destination pointer of size pixel * nos * nob * camcnt * sizeof(uint16)
% dataArray = zeros(get(settings, 'pixel')*get(settings,'nos')*get(settings,'camcnt')*get(settings,'nob'),1);
% ptr_dataArray = libpointer('uint16Ptr',dataArray);
% % get all data
% status = calllib('ESLSCDLL', 'DLLCopyAllData', board_sel, ptr_dataArray, ptr_dataArray);
% if ~strcmp(status,'es_no_error')
%     msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
%     error(msg)
% end
%% Exit driver
[status] = calllib('ESLSCDLL', 'DLLExitDriver');
if ~strcmp(status,'es_no_error')
    msg = calllib('ESLSCDLL', 'DLLConvertErrorCodeToMsg', status);
    error(msg)
end
%% Unload library
clear('measurement_settings');
clear('camera_settings');
unloadlibrary('ESLSCDLL')
