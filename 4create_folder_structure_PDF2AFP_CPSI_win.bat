@ECHO OFF

Set dir=E:\OutputTransformPDF2AFP_CPSI\win\output\
Echo Deleting all files from %dir%
del %dir%\* /F /Q

Echo Deleting all folders from %dir%
for /d %%p in (%dir%\*) Do rd /Q /S "%%p"
@echo Folder deleted.


mkdir E:\OutputTransformPDF2AFP_CPSI\win\output\out_AFP\TestFiles
echo mkdir E:\OutputTransformPDF2AFP_CPSI\win\output\out_AFP\TestFiles

mkdir E:\OutputTransformPDF2AFP_CPSI\win\output\out_PDF\TestFiles
echo mkdir E:\OutputTransformPDF2AFP_CPSI\win\output\out_PDF\TestFiles

mkdir E:\OutputTransformPDF2AFP_CPSI\win\output\out_TIFF\MasterFiles
echo mkdir E:\OutputTransformPDF2AFP_CPSI\win\output\out_TIFF\MasterFiles

c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformPDF2AFP_CPSI\win\output\out_AFP\TestFiles\ /s /i
c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformPDF2AFP_CPSI\win\output\out_PDF\TestFiles\ /s /i
c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformPDF2AFP_CPSI\win\output\out_TIFF\MasterFiles\ /s /i


echo Folder structure succesfully done!