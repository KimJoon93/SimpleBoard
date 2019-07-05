# SimpleBoard

## What did I do?

- Make Simple database. I used mysql (There are some samples in it.)

- Connect to database.

- Make comment

- Login Service

- Security

- MVC pattern

## Maven Project

### What is maven?
It's kind of project managing tool.\
[Look here if you want more Info.](https://maven.apache.org/what-is-maven.html)
- Making the build process easy
- Providing a uniform build system
- Providing quality project information
- Providing guidelines for best practices development
- Allowing transparent migration to new features

    ### Maven Structure
    ![스크린샷 2019-07-05 오후 7 22 50](https://user-images.githubusercontent.com/32008149/60716417-51d07600-9f5a-11e9-8ac3-a6e6d81adcf2.png)

### Start Maven
- Make Project with maven
    ![스크린샷 2019-07-05 오후 7 02 51](https://user-images.githubusercontent.com/32008149/60715285-a1fa0900-9f57-11e9-92da-dd84b3248858.png)

- Project location

- Project name

## Database
I need to install mysql, but I saw Docker. So I download mysql Image and run in docker with one line. Then I connect with DBeaver Tool to 
check my Database. 
But Becareful for the container because it doesn't matter when we stop the container but if we remove the container, all database will be deleted.