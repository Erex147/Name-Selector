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
 print(FirstNames[math.random(1,3)])
 print(LastNames[math.random(1,3)])
 print()
end
local function CustomName()
  io.write("Insert any First Name")
  local firstName = io.read()
  table.insert(FirstNames, firstName)
  io.write("Insert any Last Name")
  local lastName = io.read()
  table.insert(LastNames, lastName)
  local name = tostring(firstName)..(" ")..tostring(lastName)
  print(name)
end
io.write("Do youwant to add a custom name? y/n")
bool = tostring(io.read)
  if (bool = "y")
  then
    CustomName()
end
  