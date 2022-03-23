from name import formatted_name

print("Please enter the first and last names or enter x to Exit.")

while True:
   first_name = input("Please enter the first name: ")
   if first_name == "x":
       break

   last_name = input("Please enter the last name: ")
   if last_name == "x":
       break

   result = formatted_name(first_name, last_name)
   print(f"\nFormatted name is: {result}\n")
