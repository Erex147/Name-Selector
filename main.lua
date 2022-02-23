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
  
for count = 1,10 do
 print(FirstNames[math.random(1,3)], LastNames[math.random(1,3)])
 print()
end
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
    
io.write("Do you want to add a custom name? y/n :")
choice = io.read()
if choice == "y"
then
    CustomName()
end  