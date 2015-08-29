--value iterator
function values (t)
    local i = 0
    return function ()
        i = i + 1
        return t[i]
    end
end

t = {10,20,30}
iter = values(t)
while true do
    local element = iter()
    if element == nil then break end
    print element
end

--easier to use a generic for
for element in values(t) do
    print(element)
end

--ipairs is a stateless iterator

--pass in f to do some action on the words in stdin
function allwords (f)
    for line in io.lines() do
        for word in string.gmatch(line,"%w+") do
            f(word)
        end
    end
end

allwords(print) --function to print all words

function unique (word)
    local seen_words = {}
    if word not in seen_words then table.insert(seen_words,word)
    end
end

allwords(unique) --Gets all unique words
