function Pet(name, status)
    local module = {}
    module.name = name or "Kikki"
    module.status = status or "Hungry"

    function module.check(self)
        print(string.format("%s is %s", self.name, self.status))
    end

    function module.feed(self)
        print(string.format("%s has been fed", self.name))
        self.status = "Fed"
    end

    return module
end