@echo off

set "JAVA_HOME=C:\Program Files\Java\jre1.8.0_301"
set "SKM_DIR=C:\Program Files (x86)\ABUS\SKM"

rem Setze die Java-Bibliothekspfad (library path)
set "LIBRARY_PATH=%SKM_DIR%"

rem Setze den Classpath für die benötigten JARs und Bibliotheken
set "CLASSPATH=%SKM_DIR%\RXTXcomm.jar;%SKM_DIR%\bin\de\seccor\SKM\SKM\SKM.jar;%SKM_DIR%\bin\de\seccor\SKM\lib\*;%SKM_DIR%\lib\*;%SKM_DIR%\lib\jfreereport-0.8.7-6\*;%SKM_DIR%\lib\jfreereport-0.8.7-6\lib\*"

rem Starte die Java-Anwendung mit der richtigen Main-Klasse
"%JAVA_HOME%\bin\java" -Djava.library.path="%LIBRARY_PATH%" -cp "%CLASSPATH%" main.skm
pause
