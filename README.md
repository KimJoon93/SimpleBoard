# SimpleBoard

## Do!

- Make Simple Board with mysql.

    - Connect to database.

    - Make comment function.

    - Make comment in comment function.

- Login Service

- Security

- MVC pattern

- Spring Framwork

## Maven Project

### What is maven?
It's kind of project managing tool.\
We could easily use useful liblaries only by adding 
depency to pom.xml file.

[Look here if you want more Info.](https://maven.apache.org/what-is-maven.html)

### Why Maven?
- Making the build process easy
- Providing a uniform build system
- Providing quality project information
- Providing guidelines for best practices development
- Allowing transparent migration to new features

### Maven Structure
![스크린샷 2019-07-05 오후 7 22 50](https://user-images.githubusercontent.com/32008149/60716417-51d07600-9f5a-11e9-8ac3-a6e6d81adcf2.png)
\
\
JBoard --- src --- main --- java : Java Package folder and SourceCode in it.\
                            resouces : \
                            webapp : \
       --- target : \
       --- pom.xml : Maven Setting file(You could add Library dependency here.) \            


### Start Maven
- Make Project with maven
    ![스크린샷 2019-07-05 오후 7 02 51](https://user-images.githubusercontent.com/32008149/60715285-a1fa0900-9f57-11e9-92da-dd84b3248858.png)

- Project location

- Project name

- Pom.xml

- JSTL (JSP Standard Tag Library)
    - Core
    - Formatting
    - Database
    - XML
    - Function
    
    We could easily use with prefix
    ```
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/Database"%>
    ```
    There were problems using JSTL. I spend 2days to solve this problem. I know JSTL doesn't use in real, but I'd like to solve this problem. And I found tag is problem. First, I tried to use JSTL sql tag. But error says there are problem in ${}. They can't read and find that class. So I realize I forgot the JDBC connection file. First I downloaded and put it in to lib directory. But everybody says put jar file in lib/ext directory but, I couldn't find ext directory in my lib directory. I was worried that maybe I made mistake when I install JAVA. I just put it in to lib directory but, that doesn't work. So I found maven dependency, and add it to pom.xml. I found jar file has successfully inserted, but that doesn't work. I tried to find reason of error, but there were so many people that has same error with me. I found about version issue, So I changed all the version that fits, But that doesn't work at all. So I tried c:out tag. But that doesn't work, So I realized DB is not the problem. There are problem in JSTL. 
    I should add isELIgnored="false" because they read EL expression in text if we don't have that code. I had error text that they can't read ${}. I should have used c:out first to figure out what problem is. But I thought problem exists in JSTL because I used sql tag first.

- Connect database
    I used mysql with Docker. If I run docker container that contains mysql image, we could use mysql databases without installing mysql. 
    ```
    docker ps -a
    ```
    I could check what container is running now, or what container is stopped by this command. 
- CSS

- 

## Database
I need to install mysql, but I saw Docker. So I download mysql Image and run in docker with one line. Then I connect with DBeaver Tool to 
check my Database. 
But Becareful for the container because it doesn't matter when we stop the container but if we remove the container, all database will be deleted.
So if we don't use mysql database, stop container.
