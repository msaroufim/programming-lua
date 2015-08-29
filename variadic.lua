-- "..." indicate a variable number of arguments
function add (...)
    local s = 0
    for i, v in ipairs{...} do
        s = s + v
    end

    return s
end

print(add(1,2,3,4,5,6,7,8,9))

--identity function
function id (...) return ... end
