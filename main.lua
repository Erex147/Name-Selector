
  local FirstNames = {
    "Elphias",
    "James",
    "Robert"
}

local LastNames = {
    "Doge",
    "Charlie",
    "Smithson"
}

local function CustomName()
  io.write("Insert any First Name: ")
  print()
  local firstName = io.read()
  table.insert(FirstNames, firstName)
  io.write("Insert any Last Name: ")
  print()
  local lastName = io.read()
  table.insert(LastNames, lastName)
  local name = tostring(firstName)..(" ")..tostring(lastName)
  print("Added Custom Name Succesfully. Result: ".. name)
  return name 
end
  
local busy = false
local function PrintNames()
  for count = 1,10 do
    print(FirstNames[math.random(1,#FirstNames)], 
        LastNames[math.random(1,#LastNames)])
        print()
  end   
end  
while not busy do
busy = true
io.write("Do you want to print names?")
local choice = io.read()
 if choice == "y" then
    PrintNames()
 elseif choice == "n" then
    io.write("Do you want to add a custom name? y/n :")
local choice = io.read()
if choice == "y"
then
    CustomName()
end  
 end
  busy = false
end
