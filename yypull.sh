#!/bin/bash

REMOTE_HOST=10.1.1.186
REMOTE_BASEDIR=/mnt/yyspace
LOCAL_BASEDIR=/data/yyspace-


echo "### START!"

echo "====copy knowledge*.tar.gz"
scp yyuser1@${REMOTE_HOST}:$REMOTE_BASEDIR/knowledge/ext/knowledge*.tar.gz $LOCAL_BASEDIR/knowledge/ext

echo "====copy systemcenter*.tar.gz"
scp yyuser1@${REMOTE_HOST}:$REMOTE_BASEDIR/sys/ext/systemcenter*.tar.gz $LOCAL_BASEDIR/apps/sys/ext

echo "====copy engine*.tar.gz"
scp yyuser1@${REMOTE_HOST}:$REMOTE_BASEDIR/engine/ext/engine*.tar.gz $LOCAL_BASEDIR/apps/engine/ext

echo "====copy med_all*.tar.gz"
scp yyuser1@${REMOTE_HOST}:$REMOTE_BASEDIR/med/ext/med_all*.tar.gz $LOCAL_BASEDIR/apps/med/ext

echo "====copy med.war"
scp yyuser1@${REMOTE_HOST}:$REMOTE_BASEDIR/soft/tomcat-med/webapps/med.war $LOCAL_BASEDIR/apps/med

echo "====copy knowledge ROOT.war"
scp yyuser1@${REMOTE_HOST}:$REMOTE_BASEDIR/soft/tomcat-base/webapps/ROOT.war $LOCAL_BASEDIR/apps/base

echo "====copy sys ROOT.war"
scp yyuser1@${REMOTE_HOST}:/mnt/syscenter/apache-tomcat-7.0.69/webapps/ROOT.war $LOCAL_BASEDIR/apps/sys

echo "====copy nginx web"
scp -r yyuser1@${REMOTE_HOST}:/mnt/syscenter/web/systemcenter/* $LOCAL_BASEDIR/apps/web/syscenter/
scp -r yyuser1@${REMOTE_HOST}:/mnt/homecenter/dist/* $LOCAL_BASEDIR/apps/web/homecenter/


echo "### END!"
