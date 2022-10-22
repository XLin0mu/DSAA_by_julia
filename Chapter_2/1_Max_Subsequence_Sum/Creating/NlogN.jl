


#based on example

function mss_from_left(array::Vector{Int})
    si = ms = 0
    l = length(array)
    site = 1
    for i in 1 : length(array)
        si += array[i]
        if si > ms
            ms = si
            site = 1
        end
    end
    return (ms::Int, site::Int)
end

function mss_from_right(array::Vector{Int})
    si = ms = 0
    l = length(array)
    site = l
    for i in l : -1 : 1
        si += array[i]
        if si > ms
            ms = si
            site = i
        end
    end
    return (ms::Int, site::Int)
end

function mss(array::Vector{Int})
    l = length(array)
    #basic situation
    if l == 1
        return (array[1], (1, 1))
    end

    #get mid mss
    if isodd(l)
        l += 1
    end
    intl = Int(l/2)
    ml = mss_from_right(array[1: intl])
    mr = mss_from_left(array[intl+1: end])
    mss_mid = (ml[1] + mr[1], (ml[2], mr[2]))

    #get other sides mss and return result
    lmss = mss(array[1: intl])
    rmss = mss(array[intl+1: end])
    temp_array = [lmss;; rmss;; mss_mid]
    result = temp_array[:, findmax(temp_array[1,:])[2]]

    return result
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




