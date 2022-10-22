
function mss(array::Vector{Int})
    l = length(array)
    ms = s = 0
    site = (0, 0)
    for op in 1 : l
        for ed in op : l
            for i in op : ed
                s += array[i]
            end
            if s > ms
                ms = s
                site = (op, ed)
            end
            s = 0
        end
    end
    return(ms, site...)
end

function test(;n = 5000)
    array = Int.(rand(Int8, n))
    mss(array)
end

@time(
for i in 1 : 1
    test()
end
)
