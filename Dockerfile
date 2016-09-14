FROM anapsix/alpine-java
WORKDIR /tmp/server
COPY . .
ENTRYPOINT ["java", "-XX:+UseG1GC", "-XX:+UseFastAccessorMethods", "-XX:+OptimizeStringConcat", "-XX:MetaspaceSize=128m", "-XX:MaxMetaspaceSize=256m", "-XX:MaxGCPauseMillis=10", "-XX:+UseStringDeduplication", "-Xms256m", "-Xmx480m", "-XX:hashCode=5", "-Dfile.encoding=UTF-8"]
CMD ["-jar", "Thermos-1.7.10-1614-server.jar", "--log-strip-color"]
