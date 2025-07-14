FROM public.ecr.aws/amazoncorretto/amazoncorretto:17
WORKDIR /app
COPY target/demo-1.0.0.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar", "--server.port=8080"]
