#
#Author: Xlin0mu
#Date: 2022-10-23 01:13
#LastEditTime: 2022-10-23 01:25
#Description: Description
#Edited by TAMRIKer
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function f(x::Int)
    if x == 0
        return 0
    else
        return 2f(x - 1) + x^2
    end
end