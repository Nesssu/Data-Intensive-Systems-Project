
def getLocation():
    locations = ["Finland", "USA", "Japan"]
    while True:
        print("\n** SELECT YOUR LOCATION")
        print("** 1) Finland")
        print("** 2) USA")
        print("** 3) Japan\n")
        choice = input("Your choice: ")
        if choice == "1" or choice == "2" or choice == "3":
            print("\n** YOU ARE NOW ACCESSING THE DATABASES IN {}...\n".format(locations[int(choice) - 1]))
            return choice
        
        print("\nYour choice was not valid!! Try again!")
        
def menu():
    while True:
        print("\n** SELECT WHAT YOU WANT TO DO NEXT")
        print("** 1) ...")
        print("** 2) ...")
        print("** 3) ...")
        print("** 0) Quit\n")
        choice = input("Your choice: ")
        if choice in ["0", "1", "2", "3"]:
            return choice
        
        print("\nYour choice was not valid!! Try again!")

def main():
    # 1 == Finland, 2 == USA and 3 == Japan
    location = int(getLocation())
    
    choice = menu()
    while choice != "0":
        if choice == "1":
            pass
        
        elif choice == "2":
            pass
        
        elif choice == "3":
            pass
        
        choice = menu()

    print("\n** QUITTING...\n")

main()
