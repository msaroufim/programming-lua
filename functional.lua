--higher order function

function derivative (f, delta)
    delta = delta or 1e-4
    return function (x)
                return (f(x + delta) - f(x)) / delta
            end

end


--compare naive implementation above with analytic solution
c = derivative(math.sin)
print(math.cos(5.2),c(5.2))

--closures

function sortbygrade (names, grades)
    table.sort(names, function (n1,n2)
        return grades[n1] > grades[n2]
    end)
end


function newCounter ()
    local i = 0
    return function ()
            i = i +1
            return i
        end
end

c1 = newCounter()
print(c1()) --prints 1
print(c1()) --prints 2

--can redefine existing functions and build a sandbox around them
do
oldSin = math.sin
math.sin = function (x)
    return oldSin(x*k)
    end
end

-- tail calls

function foo (n)
    if n > 0 then return foo (n - 1) end
end

--foo(1000000000) won't break anything
