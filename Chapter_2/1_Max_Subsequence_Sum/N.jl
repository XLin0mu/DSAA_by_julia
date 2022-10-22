#
#Author: Xlin0mu
#Date: 2022-10-19 19:45
#LastEditTime: 2022-10-23 02:48
#Description: Description
#Edited by TAMRIKer
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function mss(array::Vector{Int})
    tempsum = maxsum = 0
    for i in 1 : length(array)
        tempsum += array[i]
        tempsum <= 0 ? tempsum = 0 :
        tempsum > maxsum ? maxsum = tempsum :  nothing
    end
    return maxsum
end