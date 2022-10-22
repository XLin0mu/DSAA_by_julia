#
#Author: Xlin0mu
#Date: 2022-10-23 02:39
#LastEditTime: 2022-10-23 02:48
#Description: Description
#Edited by TAMRIKer
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function mss_left_border(array::Vector{Int})
    tempsum = maxsum  = 0
    for i in 1 : length(array)
        tempsum += array[i]
        tempsum > maxsum ? maxsum  = tempsum : nothing
    end
    return maxsum
end

function mss_right_border(array::Vector{Int})
    tempsum = maxsum  = 0
    for i in length(array) : -1 : 1
        tempsum += array[i]
        tempsum > maxsum ? maxsum  = tempsum : nothing
    end
    return maxsum
end

function mss(array::Vector{Int})
    leng = length(array)
    #basic situation
    if leng == 1
        return array[1] < 0 ? 0 : array[1]
    end

    #get mid mss
    halfleng = Int(leng÷2)
    ml = mss_right_border(array[1: halfleng])
    mr = mss_left_border(array[halfleng + 1: end])
    mss_mid = ml + mr

    #get other sides mss and return result
    lmss = mss(array[1: halfleng])
    rmss = mss(array[halfleng + 1: end])

    return max(mss_mid, lmss, rmss)
end