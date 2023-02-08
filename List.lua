function Countword(str1, str2)
    words = {}
    count = 0

    for word in str1:gmatch("%w+") do
        table.insert(words, word)
    end
    for i = 0, #words do
        if (words[i] == str2) then
            count = count + 1
        end
    end
    print(string.format("%s appears %i times", str2, count))
end

Countword(arg[1], arg[2]);