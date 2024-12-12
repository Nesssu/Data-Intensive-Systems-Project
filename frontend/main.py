import psycopg2
from datetime import datetime, timedelta

def getLocation():
    locations = ["Finland", "USA", "Japan"]
    while True:
        print("\n** SELECT YOUR LOCATION")
        print("** 1) Finland")
        print("** 2) USA")
        print("** 3) Japan\n")
        choice = input("Your choice: ")
        if choice == "1" or choice == "2" or choice == "3":
            print("\n** YOU ARE NOW ACCESSING THE DATABASES IN {}...".format(locations[int(choice) - 1]))
            return choice
        
        print("\nYour choice was not valid!! Try again!")
        
def menu():
    while True:
        print("\n** SELECT WHAT YOU WANT TO DO NEXT")
        print("** 1) View all available cars")
        print("** 2) Add a car to your wishlist")
        print("** 3) View your wishlist")
        print("** 4) Remove a car from your wishlist")
        print("** 5) Buy a car")
        print("** 0) Quit\n")
        choice = input("Your choice: ")
        if choice in ["0", "1", "2", "3", "4", "5"]:
            return choice
        
        print("\nYour choice was not valid!! Try again!")

def GetCarTableBasedOn(location):
    if location == 1:
        return "cars_europe"
    elif location == 2:
        return "cars_usa"
    else:
        return "cars_asia"

def GetOrderTableBasedOn(location):
    if location == 1:
        return "orders_europe"
    elif location == 2:
        return "orders_usa"
    else:
        return "orders_asia"

def GetCurrencyBasedOn(location):
    if location == 1:
        return "EUR"
    elif location == 2:
        return "USD"
    else:
        return "JPY"

def GetEmployeeTableBasedOn(location):
    if location == 1:
        return "employee_europe"
    elif location == 2:
        return "employee_usa"
    else:
        return "employee_asia"

def GetRegionBasedOn(location):
    if location == 1:
        return "Finland"
    elif location == 2:
        return "West Coast"
    else:
        return "Japan"

def GetRegionColumnBasedOn(location):
    if location == 2:
        return "region"
    else:
        return "country"

# Show all the cars available in the selected location
# Returns False if the location doesn't have any cars and True if it does.
def ViewAllCars(warehouse_cursor, location):
    table = GetCarTableBasedOn(location)
    warehouse_cursor.execute("SELECT * FROM " + table)
    cars = warehouse_cursor.fetchall()

    if len(cars) <= 0:
        print("\nThere are no cars available in your location!!")
        return False

    print("\n** All the cars in your location **")
    for car in cars:
        print("{0} | {1} {2}, {3}, {4}, {5:g} km".format(car[0], car[1], car[2], car[4], car[3], car[5]))

    return True

# Show all the cars that the user has in their wishlist.
# Returns False if the list is empty and True if not.
def ViewYourWishlist(customers_cursor, user):
    customers_cursor.execute("SELECT * FROM wishlist WHERE userid = " + str(user[0]))
    items = customers_cursor.fetchall()

    if len(items) <= 0:
        print("\nYour wishlist is empty!!")
        return False

    print("\n** All the cars in your wishlist **")
    for item in items:
        print("{0} | {1} {2}, {3}".format(item[0], item[2], item[1], item[3]))

    return True

def AddCarToWishlist(warehouse_cursor, customers_cursor, location, user):
    # Show all the cars again
    if ViewAllCars(warehouse_cursor, location) == False:
        return

    while True:
        choice = input("\nSelect the ID of the car you want to wishlist: ")
        if choice.isnumeric():
            # Get the car that will be added to the wishlist
            table = GetCarTableBasedOn(location)
            warehouse_cursor.execute("SELECT * FROM " + table + " WHERE carid = " + choice)
            car = warehouse_cursor.fetchone()
            if car is None:
                print("\nThe ID you gave doesn't match any cars in your location!!")
                return
            
            # Get the biggest id in the wishlist table that will be used as the next id.
            customers_cursor.execute("SELECT * FROM wishlist WHERE wishlistid = (SELECT MAX(wishlistid) FROM wishlist)")
            item = customers_cursor.fetchone()

            insert_query = "INSERT INTO wishlist (wishlistid, model, manufacturer, year, userid) VALUES (%s, %s, %s, %s, %s)"
            customers_cursor.execute(insert_query, (item[0] + 1, car[2], car[1], car[3], user[0]))
            print("\nCar added to the wishlist succesfully!!")

            return
            
        print("\nYour choice was not valid!! Try again.")

def RemoveCarFromWishlist(customers_cursor, user):
    # Show all the cars in the wishlist
    if ViewYourWishlist(customers_cursor, user) == False:
        return

    while True:
        choice = input("\nSelect the ID of the car you want to remove from the wishlist: ")
        if choice.isnumeric():
            try:
                customers_cursor.execute("DELETE FROM wishlist WHERE wishlistid = " + choice)
                print("\nCar removed from the wishlist succesfully")
            except:
                print("\nError while trying to remove the car from the wishlist!!")

            return

        print("\nYour choice was not valid!! Try again.")

def BuyACar(warehouse_cursor, customers_cursor, transaction_cursor, location, user):
    carTable = GetCarTableBasedOn(location)
    car = None
    if ViewAllCars(warehouse_cursor, location) == False:
        return

    while True:
        carID = input("\nGive the ID of the car you want to buy: ")
        if carID.isnumeric():
            warehouse_cursor.execute("SELECT * FROM " + carTable + " WHERE carid = " + carID)
            car = warehouse_cursor.fetchone()
            break
        
        print("\nYour choice was not valid!! Try again.")
    

    if car is None:
        print("\nA car with the ID you gave doesn't exists!!")
        return
    
    # Add an order
    AddAnOrder(warehouse_cursor, customers_cursor, transaction_cursor, location, car)

    # Add the order into the history
    AddOrderToHistry(customers_cursor, car, user)

    # Remove the car from the available cars
    RemoveTheCarFromTheWarehouse(warehouse_cursor, car, location)

def AddAnOrder(warehouse_cursor, customers_cursor, transaction_cursor, location, car):
    orderTable = GetOrderTableBasedOn(location)

    # Get the orderid
    warehouse_cursor.execute("SELECT * FROM " + orderTable + " WHERE orderid = (SELECT MAX(orderid) FROM " + orderTable + ")")
    orderItem = warehouse_cursor.fetchone()
    orderID = 1
    if orderItem is not None:
        orderID = orderItem[0] + 1

    # Get the order date
    orderDate = datetime.now()
    # Get the delivery date, which is just the order date + 4 weeks
    deliveryDate = orderDate + timedelta(weeks = 4)
    # Get the price of the car
    customers_cursor.execute("SELECT * FROM car WHERE carid = " + str(car[0]))
    carItem = customers_cursor.fetchone()
    price = carItem[4]
    # Get the status
    status = "Processing"
    # Get the employee ID
    employeeTable = GetEmployeeTableBasedOn(location)
    transaction_cursor.execute("SELECT * FROM " + employeeTable)
    employeeItem = transaction_cursor.fetchone()
    employeeID = employeeItem[0]
    # Get the warehouse ID
    warehouseID = car[6]
    # Get the shipping method. This is just hardcoded to a shipment for now.
    shipmentMethod = "Shipment"
    # Get the region. USA has region. Europe and Asia has country
    region = GetRegionColumnBasedOn(location)

    # Create a new order entry
    insert_query = "INSERT INTO " + orderTable + " (orderid, order_date, delivery_date, total_amount, currency, status, employeeid, warehouseid, shipping_method, " + region + ") VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    warehouse_cursor.execute(insert_query, (orderID, orderDate, deliveryDate, price, GetCurrencyBasedOn(location), status, employeeID, warehouseID, shipmentMethod, GetRegionBasedOn(location)))
    print("\nYour order was successful!!")

def AddOrderToHistry(customers_cursor, car, user):
    customers_cursor.execute("SELECT * FROM orderhistory WHERE orderhistoryid = (SELECT MAX(orderhistoryid) FROM orderhistory)")
    orderhistoryItem = customers_cursor.fetchone()
    orderhistoryID = 1
    if orderhistoryItem is not None:
        orderhistoryID = orderhistoryItem[0] + 1

    insert_query = "INSERT INTO orderhistory (orderhistoryid, carid, userid) VALUES (%s, %s, %s)"
    customers_cursor.execute(insert_query, (orderhistoryID, car[0], user[0]))

def RemoveTheCarFromTheWarehouse(warehouse_cursor, car, location):
    carTable = GetCarTableBasedOn(location)
    carID = car[0]

    warehouse_cursor.execute("DELETE FROM " + carTable + " WHERE carid = " + str(carID))

def GetWarehouseCursor():
    connection = psycopg2.connect(
        database="Warehouse",
        host="localhost",
        user="postgres",
        password="12345",
        port="5434"
    )

    return connection.cursor()

def GetCustomerCursor():
    connection = psycopg2.connect(
        database="Customers",
        host="localhost",
        user="postgres",
        password="12345",
        port="5434"
    )

    return connection.cursor()

def GetTransactionCursor():
    connection = psycopg2.connect(
        database="Transaction",
        host="localhost",
        user="postgres",
        password="12345",
        port="5434"
    )

    return connection.cursor()

def GetUser(customers_cursor):
    customers_cursor.execute("SELECT * FROM users")
    return customers_cursor.fetchone()

def main():
    # Get database cursors for all the databases.
    warehouse_cursor = GetWarehouseCursor()
    customers_cursor = GetCustomerCursor()
    transaction_cursor = GetTransactionCursor()

    # Because this is just an example program and it doesn't have all
    # the functionalities, we will authomatically select the user from
    # the database and the user of this example program cannot select it.
    user = GetUser(customers_cursor)

    # 1 == Finland, 2 == USA and 3 == Japan
    location = int(getLocation())
    
    choice = menu()
    while choice != "0":
        if choice == "1":
            ViewAllCars(warehouse_cursor, location)
        
        elif choice == "2":
            AddCarToWishlist(warehouse_cursor, customers_cursor, location, user)
        
        elif choice == "3":
            ViewYourWishlist(customers_cursor, user)
            
        elif choice == "4":
            RemoveCarFromWishlist(customers_cursor, user)
            
        elif choice == "5":
            BuyACar(warehouse_cursor, customers_cursor, transaction_cursor, location, user)
        
        choice = menu()

    print("\n** QUITTING...\n")

main()
