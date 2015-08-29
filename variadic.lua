-- "..." indicate a variable number of arguments
function add (...)
    local s = 0
    for i, v in ipairs{...} do
        s = s + v
    end

    return s
end

print(add(1,2,3,4,5,6,7,8,9))

--unpack function
function unpack (t,i,n)
    i = i or 1
    n = n or #t
    if i <= n then
        return t[i], unpack(t, i + 1, n)
end


--identity function
function id (...) return ... end

--5.1
function cat (...)
    local s = ""
    for i, v in ipairs{...} do
        s = s .. v
    end
    return s
end

print(cat("mark","is","trying","out","some"))

--5.3
function cons (...)
    _, a = ...
    return a
end

print(cons(1,2,3))
