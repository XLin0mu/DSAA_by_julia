
#Crazy

function mss(array::Vector{Int});
    this = ms = 0
    site = (0, 0)
    for i in 1 : length(array)
        this += array[i]
        if this < 0
            this = 0
            site = (i, site[2])
        elseif this > ms
            ms = this
            site = (site[1], i)
        end
    end
    return (ms, site)
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

