CALL %~dp0env.bat

SET ECLIPSE_HOME=%~dp0../tools/eclipse

%ECLIPSE_HOME%/eclipse.exe -data %WORKSPACE_HOME% -vm %JAVA_HOME%/bin/javaw.exe