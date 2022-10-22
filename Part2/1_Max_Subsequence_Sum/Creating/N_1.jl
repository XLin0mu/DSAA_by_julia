



function mss(array::Vector{Int})
    #initialize
    l = length(array)
    ms = 0
    site = (0, 0)

    #find greatest line
    arrays = zeros(l)
    arrays[1]=array[1]
    for i in 2 : l
        arrays[i]=arrays[i-1]+array[i]
    end
    ma = findmax(arrays)

    #find greatest subsequence sum
    maxline = zeros(ma[2])
    maxline[1]=ma[1]
    for st in 2 : ma[2]
        maxline[st] = maxline[st-1] - array[st-1]
    end
    ma2 = findmax(maxline)
    
    #forming output
    ms = ma2[1]
    site = (ma2[2], ma[2])
    return(ms, site...)
end

function test(;n = 500000)
    array = Int.(rand(Int8, n))
    mss(array)
end

@time(
for i in 1 : 100
    test()
end
)

