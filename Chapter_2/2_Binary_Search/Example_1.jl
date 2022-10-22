#
#Author: Xlin0mu
#Date: 2022-10-21 16:57:13
#LastEditTime: 2022-10-21 16:58:08
#FilePath: \Binary_Search\Example_1.jl
#Description: Description
#Just a newcomer,hummm...
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function binary_search(num::Int, array::Vector{Int})
    high = length(array)
    if high == 0
        throw(MethodError(binary_search, "length of array is zero."))
    end
    low = 1

    while high - low >= 0
        mid = low + high
        if isodd(mid)
            mid += 1
        end
        mid = Int(mid/2)
        midnum = array[mid]

        if num == midnum
            return midnum
        elseif num < midnum
            high = mid - 1
        elseif num > midnum
            low = mid + 1
        end
    end

    return -1
end

test_Type = Int16

A = Int.([i for i in 1:typemax(test_Type)])

num = Int.(rand(test_Type))
println(binary_search(num, A))

@time(
for i in 1 : 5000
    testn = Int.(rand(test_Type))
    binary_search(testn, A)
end
)