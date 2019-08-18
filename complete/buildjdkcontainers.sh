#openjdk 11
export JAVA_HOME=$JAVA11_HOME
mvn -version
mvn clean package -DskipTests
docker build -t spring-boot-openjdk -f Dockerfile.openjdk --build-arg JAR_FILE=target/gs-reactive-rest-service-0.1.0.jar .

#oracle jdk
#docker build -t spring-boot-oraclejdk -f Dockerfile.oraclejdk --build-arg JAR_FILE=target/gs-reactive-rest-service-0.1.0.jar .

export JAVA_HOME=$GRAALVM_HOME
mvn -version
mvn clean package -DskipTests
docker build -t spring-boot-graalvmce -f Dockerfile.graalvmce --build-arg JAR_FILE=target/gs-reactive-rest-service-0.1.0.jar .

#zulu jdk
export JAVA_HOME=$ZULUVM_HOME
mvn -version
mvn clean package -DskipTests
docker build -t spring-boot-zulu -f Dockerfile.zulu --build-arg JAR_FILE=target/gs-reactive-rest-service-0.1.0.jar .

