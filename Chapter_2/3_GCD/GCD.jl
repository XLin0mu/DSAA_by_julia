#
#Author: Xlin0mu
#Date: 2022-10-21 17:51:38
#LastEditTime: 2022-10-21 17:51:42
#FilePath: \GCD\Creative_1.jl
#Description: Description
#Just a newcomer,hummm...
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function gcd(a::Int, b::Int)
    while (rem = a % b) != 0
        a = b
        b = rem
    end
    return rem
end

@time(
for i in 1 : 5000
    r = rand(Int, 2)
    gcd(r[1], r[2])
end
)