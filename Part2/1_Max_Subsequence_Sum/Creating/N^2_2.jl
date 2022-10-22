
#pacing to solve

function mss(array::Vector{Int})
    l = length(array)
    ms = 0
    site = (0, 0)
    si = 0
    for length in 1 : l
        #initial
        si = sum(array[1:length])
        if si > ms
            ms = si
            site = (1, length)
        end
        #pacing
        for i in 2 : l-length+1
            si = si - array[i-1] + array[length+i-1]
            if si > ms
                ms = si
                site = (i-1, i+length-2)
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