FROM maven:3.8.6-jdk-11
COPY . .
CMD ["mvn","spring-boot:run"]    
    
