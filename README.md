# Matlab script for Stresing cameras

In this repository you can find a matlab script [camera.m](./camera.m) for operating [Stresing](https://stresing.de) cameras. This script is only an example to show you, how to use our library with matlab and do a very basic measurement operation.

**Important:** The development of this script is on stale. So the version of the used DLL can be behind the version of our main repository [EBST_CAM](https://github.com/Entwicklungsburo-Stresing/EBST_CAM). If you want to use Matlab with our cameras and need another software version, you can either generate the prototype files by yourself with a newer DLL and the source from [EBST_CAM](https://github.com/Entwicklungsburo-Stresing/EBST_CAM) or you can [contact us](mailto:info@stresing.de).

## Dependencies
* [Matlab](https://www.mathworks.com/products/matlab.html)
* [Microsoft Visual C++ Redistributable](https://aka.ms/vs/16/release/vc_redist.x64.exe) to use the DLL

## DLL source
The source code of the DLL ESLSCDLL.dll can be found in the repository [EBST_CAM](https://github.com/Entwicklungsburo-Stresing/EBST_CAM).

## Documentation
The script is following the basic operation as described in the chapter *How to operate Stresing cameras* of the [software documentation](https://entwicklungsburo-stresing.github.io/). The settings in camera_settings.mat and measurement_settings.mat  must match your camera system. You can find a description of every setting [here](https://entwicklungsburo-stresing.github.io/structmeasurement__settings__matlab.html) and [here](https://entwicklungsburo-stresing.github.io/structcamera__settings.html).
