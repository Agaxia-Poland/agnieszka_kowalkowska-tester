del build/libs/*.jar
call gradlew build
IF [/i] [EXISTS] build/libs/*.jar
copy build/libs/*.jar C:\project
IF [/i] [NOT] [EXISTS] build/libs/*.jar
echo Failed, file doesn't exist.