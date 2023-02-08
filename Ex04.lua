function CalculatorV2(...)
    local list = {...}
    local result = 0

    for _,v in pairs(list) do
        if tonumber(v) == nil then
            print(string.format("Invalid Parameter: %s", v))
            return
        end
        result = result + v
    end
    print(result)
end

CalculatorV2('3', "4", '3', 'a', '7', '8', '1')