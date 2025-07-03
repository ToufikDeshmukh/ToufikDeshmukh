# Use an official OpenJDK image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the Java file into the container
COPY GreetUser.java .

# Compile the Java file
RUN javac GreetUser.java

# Set default command to run the compiled Java class
ENTRYPOINT ["java", "GreetUser"]
