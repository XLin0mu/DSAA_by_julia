#
#Author: Xlin0mu
#Date: 2022-10-18 14:07
#LastEditTime: 2022-10-23 02:43
#Description: Description
#Edited by TAMRIKer
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

#pacing to solve

function mss(array::Vector{Int})
    l = length(array)
    ms = 0
    si = 0
    for length in 1 : l
        #initial
        si = sum(array[1:length])
        si > ms ? ms = si : nothing

        #pacing
        for i in 2 : l-length+1
            si = si - array[i-1] + array[length+i-1]
            si > ms ? ms = si : nothing
        end
    end
    return ms
end