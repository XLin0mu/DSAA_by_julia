
#gradual propulsion

function mss(array::Vector{Int})
    l = length(array)
    ms = 0
    site = (0, 0)
    for i in 1 : l
        si = s = array[i]
        for j in i+1 : l
            si = s+array[i]
            if si > s
                ms = s
                site = (i, j)
            end
        end
    end
    return(ms, site...)
end

function test(;n = 5000)
    array = Int.(rand(Int8, n))
    mss(array)
end

@time(
for i in 1 : 100
    test()
end
)