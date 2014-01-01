CALL %~dp0env.bat

SET JAVA_HOME=C:\dev\tools\jdk1.7.0_45
SET JRE_HOME=%JAVA_HOME%/jre

SET PORT_PREFIX=8
REM SET PROJECT_PATH=%~dp0../workspace/git/qalingo-alfresco/alfresco-allinone
SET PROJECT_PATH=C:/dev/hoteia/qalingo_merge/workspace/qalingo-alfresco/alfresco-allinone

SET SOLR_HOME_DIR=%~dp0../workspace/git/qalingo-alfresco/alfresco-allinone/solr/solr_home
SET SOLR_DATA_DIR=%SOLR_HOME_DIR%/data

SET JAVA_OPTS=-Xmx1024m -XX:MaxPermSize=256m -Dport.prefix=%PORT_PREFIX% -Dproject.path=%PROJECT_PATH% -Dsolr.home.dir=%SOLR_HOME_DIR% -Dsolr.data.dir=%SOLR_DATA_DIR% -Xdebug -Xrunjdwp:transport=dt_socket,address=%PORT_PREFIX%000,server=y,suspend=n 

SET CATALINA_HOME=%~dp0../servers/server-apache-tomcat-6.0.35-alfresco
REM SET CATALINA_OPTS=

SET PATH=%PATH%;%CATALINA_HOME%\bin;

%CATALINA_HOME%\bin\startup.bat 