#
#Author: Xlin0mu
#Date: 2022-10-18 13:33
#LastEditTime: 2022-10-23 02:43
#Description: Description
#Edited by TAMRIKer
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function mss(array::Vector{Int})
    leng = length(array)
    tempsum = maxsum = 0
    for i in 1 : leng
        for j in i : leng
            tempsum += array[j]
            tempsum > maxsum ? maxsum = tempsum : nothing
        end
        tempsum = 0
    end
    return maxsum
end