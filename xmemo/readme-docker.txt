
cd /data/yyspace/yydocker/dockfiles
docker build -t yyjdk:latest -f yyjdk_dockfile .
docker build -t yytomcat:latest -f yyweb_dockfile .
