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

local function PrintNames(value)
  for count = 1,value do
    PrintFirstName(1)
    PrintLastName(1)
    print()  
  end   
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

function is_numeric(x)
    if tonumber(x) ~= nil then
      return true
    end
  return false
end

local function DeleteN(tab)
       for i,v in ipairs(tab) do
      print(i,v)
    end
  io.write("Which name would you like to delete? Enter Number")
  local choice = io.read()
  print()
      if is_numeric(nchoice) then
         table.remove(tab,choice)
      else print("not valid number")  
      end   
end

while not busy do
busy = true
print()
io.write("What do you want to do?")
print()    
local choice = io.read()
print()    
 if choice == "print names" then
    io.write("Enter Number")
    print()
    value = io.read()  
    PrintNames(value)  
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
 elseif choice == "delete first name" then
    DeleteN(FirstNames)
 elseif choice == "delete last name" then
    DeleteN(LastNames)
 else print("Not Valid Command")    
 end  
 busy = false
end
