#!/bin/bash

REMOTE_BASEDIR=/mnt/yyspace
LOCAL_BASEDIR=/opt/yyspace

echo "###copy tar.gz"

echo "==copy to 10.1.1.91"
echo "====copy knowledge-dubbo-1.2.0-SNAPSHOT.jar"
scp yyuser1@10.1.1.186:$REMOTE_BASEDIR/apps/base/knowledge-dubbo-1.2.0-SNAPSHOT.jar $LOCAL_BASEDIR/apps/base

echo "====copy systemcenter-provider-1.0-SNAPSHOT.tar.gz"
scp yyuser1@10.1.1.186:$REMOTE_BASEDIR/apps/sys/ext/systemcenter-provider-1.0-SNAPSHOT.tar.gz $LOCAL_BASEDIR/apps/sys/ext

echo "====copy engine-yb-provider-1.2.0-SNAPSHOT.jar"
scp yyuser1@10.1.1.186:/mnt/knowledge/engine_dubbo/engine-yb-provider-1.2.0-SNAPSHOT.jar $LOCAL_BASEDIR/apps/engine
scp -r yyuser1@10.1.1.186:/mnt/knowledge/engine_dubbo/lib $LOCAL_BASEDIR/apps/engine

echo "====copy med_all-3.4-SNAPSHOT.tar.gz"
scp yyuser1@10.1.1.186:$REMOTE_BASEDIR/apps/med/ext/med_all-3.4-SNAPSHOT.tar.gz $LOCAL_BASEDIR/apps/med/ext

echo "====copy med.war"
scp yyuser1@10.1.1.186:$REMOTE_BASEDIR/soft/tomcat-med/webapps/med.war $LOCAL_BASEDIR/apps/med
echo "====copy knowledge ROOT.war"
scp yyuser1@10.1.1.186:$REMOTE_BASEDIR/soft/tomcat-base/webapps/ROOT.war $LOCAL_BASEDIR/apps/base
echo "====copy sys ROOT.war"
scp yyuser1@10.1.1.186:/mnt/syscenter/apache-tomcat-7.0.69/webapps/ROOT.war $LOCAL_BASEDIR/apps/sys
echo "====copy nginx web"
scp -r yyuser1@10.1.1.186:/mnt/syscenter/web/systemcenter/* $LOCAL_BASEDIR/apps/web/syscenter/
scp -r yyuser1@10.1.1.186:/mnt/homecenter/dist/* $LOCAL_BASEDIR/apps/web/homecenter/


echo "### END!"
