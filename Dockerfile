FROM maven:3.9.2 AS build
WORKDIR /usr/src/app
COPY pom.xml .
RUN mvn dependency:go-offline

RUN mkdir -p src/main/webapp
COPY index.jsp src/main/webapp/index.jsp

RUN mvn clean package

FROM tomcat:9.0.76
COPY --from=build /usr/src/app/target/myapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]