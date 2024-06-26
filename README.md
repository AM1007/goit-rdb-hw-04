## Home task. DML and DDL commands. Complex SQL expressions

#### Task Instructions

1. Create a database to manage the library's book collection based on the provided structure. Utilize DDL commands to establish the required tables and their relationships.

##### Database structure

a) Scheme name — “LibraryManagement”

b) "authors" table:
`author_id` (INT, auto-increment PRIMARY KEY)
`author_name` (VARCHAR)

c) Table "genres":
`genre_id` (INT, auto-increment PRIMARY KEY)
`genre_name` (VARCHAR)

d) Table "books":
`book_id` (INT, auto-increment PRIMARY KEY)
`title` (VARCHAR)
`publication_year` (YEAR)
`author_id` (INT, FOREIGN KEY relation to "Authors")
`genre_id` (INT, FOREIGN KEY relation to "Genres")

e) Table "users":
`user_id` (INT, auto-increment PRIMARY KEY)
`username` (VARCHAR)
`email` (VARCHAR)

f) Table "borrowed_books":
`borrow_id` (INT, auto-increment PRIMARY KEY)
`book_id` (INT, FOREIGN KEY relation to "Books")
`user_id` (INT, FOREIGN KEY relation to "Users")
`borrow_date` (DATE)
`return_date` (DATE)

![Preview](./p1/p1.png)

2. Populate the tables with simple fictitious test data. One or two rows in each table should suffice.

![Preview](./p2/p2.png)

3. Navigate to the database you worked with in topic 3. Write a query using the FROM and INNER JOIN statements to combine all the data tables we loaded from the files: order_details, orders, customers, products, categories, employees, shippers, and suppliers. You'll need to identify shared keys for this task. Verify the query's proper execution.

![Preview](./p3/p3.png)

4. Follow the prompts provided below.

   - Use the COUNT statement to determine the number of rows retrieved.

![Preview](./p4/p4_1.png)

- Change several INNER statements to LEFT or RIGHT. Determine the impact on the number of rows. Record your observations in a text file.

![Preview](./p4/p4_2_1.png)
![Preview](./p4/p4_2_2.png)

- Next, select only rows where employee_id is greater than 3 and less than or equal to 10.

![Preview](./p4/p4_3.png)

- Then, group the data by category name, calculating the count of rows in each group and the average product quantity from order_details.

![Preview](./p4/p4_4.png)

- Afterward, filter out rows where the average product quantity exceeds 21.

![Preview](./p4/p4_5.png)

- Sort the resulting rows in descending order based on the count of rows.

![Preview](./p4/p4_6.png)

- Finally, display four lines of the sorted data, with the first line excluded.

![Preview](./p4/p4_7.png)

These are the basic steps for exporting an SQL file from MySQL Workbench.
