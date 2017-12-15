###################################################################
# JAVA_HOME=$IPHARM_HOME/tool/jdk1.8.0_112
# JRE_HOME=$JAVA_HOME/jre
JAVA_OPTS=$JAVA_OPTS" -Dipharm.workdir=$IPHARM_HOME -DIPHARM_HOME=$IPHARM_HOME -DIPHARM_APPDIR=$IPHARM_HOME/apps "
JAVA_OPTS=$JAVA_OPTS" -server -Xms256m -Xmx256m -Xmn96m -XX:MetaspaceSize=256m -XX:MaxMetaspaceSize=256m "
JAVA_OPTS=$JAVA_OPTS" -XX:ErrorFile=$CATALINA_HOME/logs/java_err_%p.log -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$CATALINA_HOME/logs "
