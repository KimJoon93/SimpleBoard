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
![스크린샷 2019-07-05 오후 7 22 50](https://user-images.githubusercontent.com/32008149/60716417-51d07600-9f5a-11e9-8ac3-a6e6d81adcf2.png)
\
\
JBoard --- src --- main --- java : Java Package folder and SourceCode in it.\
                            resouces : \
                            webapp : \
       --- target : \
       --- pom.xml : Maven Setting file(You could add Library dependency here.) \            


### Start Maven
- Make Project with maven
    ![스크린샷 2019-07-05 오후 7 02 51](https://user-images.githubusercontent.com/32008149/60715285-a1fa0900-9f57-11e9-92da-dd84b3248858.png)

- Project location

- Project name

- Pom.xml

- JSTL

- Connect database

- CSS

- 

## Database
I need to install mysql, but I saw Docker. So I download mysql Image and run in docker with one line. Then I connect with DBeaver Tool to 
check my Database. 
But Becareful for the container because it doesn't matter when we stop the container but if we remove the container, all database will be deleted.
So if we don't use mysql database, stop container.