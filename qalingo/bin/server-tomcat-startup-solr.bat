CALL %~dp0env.bat

SET PORT_PREFIX=14
SET SOLR_HOME_DIR=%~dp0../workspace/git/qalingo-solr
SET SOLR_DATA_DIR=%SOLR_HOME_DIR%/data

SET JAVA_OPTS=-Xmx1024m -XX:MaxPermSize=256m -Dport.prefix=%PORT_PREFIX% -Dsolr.home.dir=%SOLR_HOME_DIR% -Dsolr.data.dir=%SOLR_DATA_DIR% -Xdebug -Xrunjdwp:transport=dt_socket,address=%PORT_PREFIX%000,server=y,suspend=n 

SET CATALINA_HOME=%~dp0../servers/server-apache-tomcat-7.0.22-solr
REM SET CATALINA_OPTS=

SET PATH=%PATH%;%CATALINA_HOME%\bin;

%CATALINA_HOME%\bin\startup.bat 