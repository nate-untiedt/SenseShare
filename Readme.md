# SenseShare

## About
SenseShare is a simple script and folder framework that expedites sharing of Qlik Sense applications by providing:
* A single zip file with an intuitive folder structure to send all necessary files allowing your app to be more portable
* Single click install into the installing user's Qlik Sense Desktop.
* Automatic detection of user's Qlik Sense folder locations

## Use
### To Create a SenseShare package:
1. Copy your files into the appropriate directories
    * Copy the .qvf(s) you want to share into the **App** folder
    * Copy the corresponding **Content** files/folders into the **Content** folder
    * Copy the extensions that are used in the .qvf files into the **Extensions** folder
2. Add all of the folders and the SenseShare.bat to a zip files.  Your final zip should look like this
    * Apps
    * Content
    * Extensions
    * SenseShare.bat


###To Install a SenseShare package:
1. Unzip the contents of the SenseShare package (*.zip) file.
2. In windows explorer, double click **SenseShare.bat**.