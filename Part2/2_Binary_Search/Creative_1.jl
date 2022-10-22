#
#Author: Xlin0mu
#Date: 2022-10-21 15:29:37
#LastEditTime: 2022-10-21 15:30:17
#FilePath: \Binary_Search\C_1.jl
#Description: Description
#Just a newcomer,hummm...
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function binary_search(num::Int, array::Vector{Int})
    l = length(array)
    if l == 0
        throw(MethodError(binary_search, "length of array is zero."))
    end

    #basic situation
    if l == 1
        if num == array[1]
            return 1
        else
            return -1
        end
    end

    #recursion
    mid = l
    if isodd(mid)
        mid += 1
    end
    mid = Int(mid/2)
    midnum = array[mid]

    if num == midnum
        return l
    elseif num < midnum
        return binary_search(num, array[1:mid])
    elseif num > midnum
        return l + binary_search(num, array[mid+1:end])
    else
        return -1
    end
end

test_Type = Int16

A = Int.([i for i in 1:typemax(test_Type)])

num = Int.(rand(test_Type))
println(binary_search(num, A))

@time(
for i in 1 : 500
    testn = Int.(rand(test_Type))
    binary_search(testn, A)
end
)
