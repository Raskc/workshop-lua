function Calculator(...)
    local list = {...}
    local result = 0

    for i,v in pairs(list) do
        result = result + v
    end
    print(result)
end

Calculator('3', '4', '3', '5', '7', '8', '1')