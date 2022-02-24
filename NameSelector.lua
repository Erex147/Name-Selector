local FirstNames = {
    "Alex",
    "Frank",
    "Bruce",
    "Daniel",
    "David",
    "Jason",
    "John",
    "Joseph",
    "Mike",
    "Tank",
    "Terrance",
    "Robert",
    "Richard",
    "Donald"
}

local LastNames = {
    "Mason",
    "Woods",
    "Harris",
    "Clarke",
    "Lynch",
    "Hudson",
    "Kennedy",
    "Bowman",
    "Harper",
    "Dempsey",
    "Brooks",
    "Roberts",
    "Jackson"
}

local busy = false

local function PrintFirstName(value)
  for count = 1, value do
   if #FirstNames ~= 0 then
        print(FirstNames[math.random(1,#FirstNames)])
   else print(" ")
   end   
 end
end

local function PrintLastName(value)
  for count = 1, value do
   if #LastNames ~= 0 then
        print(LastNames[math.random(1,#LastNames)])
   else print(" ")
   end   
 end
end

local function PrintNames()
  PrintFirstName(1)
  PrintLastName(1)  
end   

function InsertLName()
  io.write("Insert any Last Name: ")
  print()
  local lastName = io.read()
  table.insert(LastNames, lastName)   
  return lastName    
end   

function InsertFName()
  io.write("Insert any First Name: ")
  print()
  local firstName = io.read()
  table.insert(FirstNames, firstName)
  return firstName 
end
      
local function CustomName()
  local name = tostring(InsertFName())..(" ")..tostring(InsertLName())
  print("Added Custom Name Succesfully. Result: ".. name)
  return name 
end

while not busy do
busy = true
print()
io.write("What do you want to do?")
print()    
local choice = io.read()
print()    
 if choice == "print names" then
    PrintNames()  
 elseif choice == "add custom name" then
    CustomName()   
 elseif choice == "add first name" then
    InsertFName()  
 elseif choice == "add last name" then
    InsertLName()   
 elseif choice == "stop" then
    break
 elseif choice == "clear first names" then
    FirstNames = {}
 elseif choice == "clear last names" then
    LastNames = {}     
 else print("Not Valid Command")    
 end  
 busy = false
end
