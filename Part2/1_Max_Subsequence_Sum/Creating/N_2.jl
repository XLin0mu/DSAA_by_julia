



function mss(array::Vector{Int})
    #initialize
    l = length(array)
    ms = 0
    site = (0, 0)

    #find greatest line
    this = 0
    for i in 1 : l
        this += array[i]
        if this > ms
            ms = this
            site = (0, i)
        end
    end

    #find greaates subsequence sum
    this = ms
    for i in 1 : site[2]
        this -= array[i]
        if this > ms
            ms = this
            site = (i+1, site[2])
        end
    end

    return(ms, site)
end

function test(;n = 5000000)
    array = Int.(rand(Int8, n))
    mss(array)
end

@time(
for i in 1 : 100
    test()
end
)

