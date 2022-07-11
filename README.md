## Prerequsit
* PHP 8.0 or higher (required extensions: `mbstring`, `xml`)
* Node.js v16.15.0
* npm v8.5.5
* Accessable 3000 port (for running the solution of development problem 1)
* MySQL version 8

## Development

### Problem 1
Solution directory: [development/problem_01/](development/problem_01/)

Solution file: [development/problem_01/utils.js](development/problem_01/utils.js)

Here we implemented a simple express app with visitor counter. The `visitorCounterFunction` function uses clousers to show the counter.

#### Steps to run the app
* Go to `problem_01` directory.
```
cd development/problem_01
```
* Install the depedencies.
```
npm install
```
* Start the app.
```
npm run start
```
* Go to `http://127.0.0.1:3000/` from browser and we should see the text <b>You are visitor number: 1</b>. Press browser reload, and everytime we press reload the counter should be increased.
* Run the test.
```
npm run test
```

### Problem 2
Solution file: [development/problem_02/app.php](development/problem_02/app.php)

#### Steps to run the app
* Go to `problem_02` directory.
```
cd development/problem_02
```
* Run the `index.php` file from terminal.
```
php index.php
```
* Enter a valid integer when asked in the prompt and press `Enter`.
```
Enter number: 100
The sum is: 2318
```
* Running the tests.
    * Install the depedencies.
    ```
    composer install
    ```
    * Run the tests.
    ```
    ./vendor/bin/phpunit --testdox tests/TestSolution.php
    ```


### Problem 3
Solution file: [development/problem_03/app.js](development/problem_03/app.js)

#### Steps to run the app
* Go to `problem_03` directory.
```
cd development/problem_03
```
* Run the `index.js` file from terminal.
```app.js
node index.js
```
* Enter a valid srtring when asked in the prompt and press `Enter`.
```
Input string: aacaa
Length of the longest palindromic substring of "aacaa" is: 5

Input string: xyz
Length of the longest palindromic substring of "xyz" is: 1
```
* Running the tests.
    * Install the depedencies.
    ```
    npm install
    ```
    * Run the tests.
    ```
    npm run test
    ```


## SQL

<b>First create a MySQL database named `dictionary` with the following schema.</b>
```
create table words(id INT, base_form TEXT);

create table definitions(id INT, word_id INT, def_text TEXT);

create table translations(id INT, word_id INT, translated_form TEXT);
```

### Problem 1
* Solution 1 file (using just a while statement): [sql/problem_01/solution_01.sql](sql/problem_01/solution_01.sql).
    * To run the sql go to the following directory
    ```
    cd sql/problem_01
    ```
    * Run the `solution_01.sql` sql file. (Replace the placeholder with actual connection config.)
    ```
    mysql -uroot -h[MYSQL_HOST] -p[MYSQL_PASSWORD] --port=[MYSQL_PORT] --database=dictionary < "solution_01.sql"
    ```
* Solution 2 file (using prepared statement): [sql/problem_01/solution_02.sql](sql/problem_01/solution_02.sql).
    * To run the sql go to the following directory
    ```
    cd sql/problem_01
    ```
    * Run the `solution_02.sql` sql file. (Replace the placeholder with actual connection config.)
    ```
    mysql -uroot -h[MYSQL_HOST] -p[MYSQL_PASSWORD] --port=[MYSQL_PORT] --database=dictionary < "solution_02.sql"
    ```

### Problem 2
* Solution file: [sql/problem_02/solution.sql](sql/problem_02/solution.sql).
    * To run the sql go to the following directory
    ```
    cd sql/problem_02
    ```
    * Run the `solution.sql` sql file. (Replace the placeholder with actual connection config.)
    ```
    mysql -uroot -h[MYSQL_HOST] -p[MYSQL_PASSWORD] --port=[MYSQL_PORT] --database=dictionary < "solution.sql"
    ```
