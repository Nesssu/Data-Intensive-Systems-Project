#### Created by Nestori Kangashaka, Akseli Hulkkonen and Eetu Pelkonen

# Data-Intensive-Systems-Project

This is our prototype for NetCars. In order you to try this prototype you need to perform few things. 
First you need to clone this github repository, use this command to do that
```
git clone https://github.com/Nesssu/Data-Intensive-Systems-Project.git
```
Or you can just download zip from clicking green <>Code dropdown menu

### Set up Databases

1.	After you have downloaded or cloned this repository you need to open pgAdmin 4 
2.	Create databases with names Customers, Transaction and Warehouse. 
3.	Then right click database and select restore. 
4.	Now click filename folder and select .sql file that you just downloaded. These sql files can be found from databases directory. 
5.	Now select the right sql file name that corresponds to database that you just created. 
6.	Click open and then restore. 
7.	Repeat this to other databases.
Now databases are set in postgresql

### Open visual studio code or other IDE that you like the most

In order to run this program without any error you should
1.	Navigate to frontend directory and open main.py file.
2.	Now find functions called GetWareHouseCursor(), GetCustomerCursor() and GetTransactionCursor(). These can be found in line 240,251 and 262.
```
def GetWarehouseCursor():
  connection = psycopg2.connect(
      database="Warehouse", <- Change to correspond to DB you created
      host="localhost",
      user="postgres",
      password="password", <- use your own postgres password
      port="5432" <- change port that you use
  )

return connection.cursor()
```

Repeat this to other functions as well.
Now you should be able to run the code without any errors.
