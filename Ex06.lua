function Pet(name, status)
    local module = {}
    module.name = name or "Kikki"
    module.status = status or "Hungry"

    return module
end
