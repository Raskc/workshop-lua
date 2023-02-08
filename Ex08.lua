function Pet(name, status)
    local module = {}
    module.name = name or "Kikki"
    module.status = status or "Hungry"

    function module.check(self)
        print(string.format("%s is %s", self.name, self.status))
    end

    function module.feed(self)
        print(string.format("%s has been fed", self.name))
    end

    return module
end

function Dog(name, status, breed)
    local module = Pet("Meimei" or name, status)
    module.loyalty = 0
    module.breed = "Australian Shepherd" or breed

    function module.feed(self)
        self.loyalty = self.loyalty + 5
        print(string.format("%s has been fed", self.name))
        self.status = "Fed"
    end

    function module.isLoyal(self)
        if (self.loyalty >= 10) then
            print(string.format("%s is loyal", self.name))
        else
            print(string.format("%s is NOT loyal", self.name))
        end
    end

    function module.bark(self)
        print("Woof Woof")
    end

    function module.check(self)
        print(string.format("%s is a %s %s", self.name, self.status, self.breed))
    end

    return module
end

local dog = Dog()
dog.isLoyal(dog)
dog.feed(dog)
dog.feed(dog)
dog.isLoyal(dog)
dog.check(dog)