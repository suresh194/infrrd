FROM maven:3.8.6-amazoncorretto-8
COPY . .
CMD ["mvn","spring-boot:run"]    
    
