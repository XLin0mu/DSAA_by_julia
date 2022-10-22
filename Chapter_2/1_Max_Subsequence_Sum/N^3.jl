#
#Author: Xlin0mu
#Date: 2022-10-18 00:35
#LastEditTime: 2022-10-23 02:43
#Description: Description
#Edited by TAMRIKer
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function mss(array::Vector{Int})
    leng = length(array)
    maxsum = 0
    for op in 1 : leng
        for ed in op : leng
            sum(array[op:ed]) > maxsum ? maxsum = sum(array[op:ed]) : nothing
        end
    end
    return maxsum
end