链路追踪模块
启动  bin/start.bat

调试：
在 VM opyions：添加如下内容
-javaagent:D:\learn\learn_spring-cloud-alibaba\apache-skywalking-apm-8.1.0\apache-skywalking-apm-bin\agent\skywalking-agent.jar
-Dskywalking.agent.service_name=ruoyi-job
-Dskywalking.collector.backend_service=localhost:11800

部署：
部署： jar 方式
java -javaagent:/path/to/skywalking-agent/skywalking-agent.jar -jar yourApp.jar
tomcat方式
修改 tomcat/bin/catalina.sh
 CATALINA_OPTS=$CATALINA_OPTS -javaagent:/地址路径/skywalking-agent/skywalking-agent.jar
