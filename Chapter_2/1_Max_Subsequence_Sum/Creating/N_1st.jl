#
#Author: Xlin0mu
#Date: 2022-10-19 19:32
#LastEditTime: 2022-10-23 02:40
#Description: Description
#Edited by TAMRIKer
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function mss(array::Vector{Int})
    #initialize
    l = length(array)
    ms = array[1]
    site = 0

    #find greatest line
    this = 0
    for i in 1 : l
        this += array[i]
        if this > ms
            ms = this
            site = i
        end
    end

    #find greatest subsequence sum
    this = ms
    for i in 1 : site - 1
        this -= array[i]
        this > ms ? ms = this : nothing
    end

    return ms > 0 ? ms : 0
end