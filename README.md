Vantage
=======

A sales representative web application


Prerequisites
-------------

1. __JDK 1.7__
    + Check by typing `java` in your terminal
    + If it displays the message `'java' is not recognized as an internal or external command, operable program or batch file.` download and install JDK 1.7 from [here](http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html "JDK 1.7")

2. __MySQL__

3. __npm__
    + It is the package manager for NodeJS and comes bundled with NodeJS
    + Check by typing `npm -v` in your terminal
    + If it displays the message `'npm' is not recognized as an internal or external command, operable program or batch file.` download and install NodeJS from [here](http://nodejs.org "NodeJS")

4. __Grunt__
    + `npm` needs to be installed
    + Check by typing `npm list -g --depth=0`
    + If `grunt-cli` is listed, it means Grunt is installed
    + Otherwise, open terminal window and type `npm install -g grunt-cli` to install Grunt globally

5. __Bower__
    + `npm` needs to be installed
    + Check by typing `npm list -g --depth=0`
    + If `bower` is listed, it means Bower is installed
    + Otherwise, open terminal window and type `npm install -g bower` to install Bower globally



Setting up
-----------

Follow this section only after installing all the pre-requisites listed in the previous section.

1. Setup the database by executing the following commands one-by-one in a terminal

    - `mysql -u <username> -p<password>`
    - `CREATE DATABASE sales_rep`
    - `use sales_rep`
    - `source 'path/to/db.sql'` (the `db.sql` file is located in this project directory)

2. Install all the project dependencies

    - Open terminal window
    - Navigate to the project directory (it is the directory containing this README)
    - Type `bower install`
    - Wait for the dependencies to download and then move forward

3. Install all the Grunt plugins

    - Open terminal window
    - Navigate to the project directory (it is the directory containing this README)
    - Type `npm install`
    - Wait for the plugins to download

4. Configure the MySQL password in the web application. Follow these steps if your MySQL server password is other than the defaule password i.e. `password`

    - Open the `spring-config.xml` file located at the `src/main/webapp/WEB-INF` directory in a text editor
    - Go to `beans/bean[id="myDataSource"]/property[name="password"]` xpath
    - Configure the correct password in the `value` attribute like this:
        ```xml
        <property name="password" value="myPassword" />
        ```

_NOTE: These steps need to be followed only once_


Running the app
---------------

Follow this section only after following the steps in the previous section.

1. Start the MySQL server
2. Open terminal window
3. Navigate to the project directory (it is the directory containing this README)
4. Type `run-server.bat` and hit Enter (There should be no error outputs on the terminal)
5. Open the link `http://localhost:8080/SRA` in a web browser
6. Done

_NOTE: These steps need to be followed every time the app needs to be run_


Author
------
[Navdeep Singh Bagga](mailto:navdeepb3191@gmail.com "navdeepb3191@gmail.com")