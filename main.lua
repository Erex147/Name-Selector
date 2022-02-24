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
    "Richard"
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
    "Roberts"
}





  
local busy = false
local function PrintNames()
  for count = 0,100,0.1 do
    print(FirstNames[math.random(1,#FirstNames)], 
        LastNames[math.random(1,#LastNames)])
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

while not busy do
busy = true
print()
io.write("What do you want to do?")
print()    
local choice = io.read()
 if choice == "print names" then
    PrintNames()
 elseif choice == "add custom names" then
    CustomName()
 elseif choice == "add f n" then
    InsertFName()
 elseif choice == "add l n" then
    InsertLName()
 elseif choice == "stop" then
 break
 end  
 busy = false
end
