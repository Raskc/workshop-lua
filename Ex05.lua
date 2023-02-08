local file = io.open("5.txt")
local lines = file:lines()

for line in lines do
    if #line % 2 == 0 then
        print(line)
    end
end