--coroutine is a line of execution with its own stack, local variables and instruction pointers but it shares global variables with other coroutines
--difference with threads: coroutines are collaborative and only one runs at a time

co = coroutine.create(function () print("hi") end)
print(co)

--coroutine status can be suspended, running, dead and normal

print(coroutine.status(co))

--coroutine can suspend their own execution so that it can be resumed later

--get all permutations of length n of the string a
 function permgen (a, n)

      if n == 0 then
        printResult(a)

      else
        for i=1,n do
          -- put i-th element as the last one
          a[n], a[i] = a[i], a[n]

          -- generate all permutations of the other elements
          permgen(a, n - 1)

          -- restore i-th element
          a[n], a[i] = a[i], a[n]

        end
      end
    end

--useful helper function
 function printResult (a)
      for i,v in ipairs(a) do
        io.write(v, " ")
      end
      io.write("\n")
    end

-- http://www.lua.org/pil/9.3.html
