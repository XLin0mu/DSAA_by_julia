#
#Author: Xlin0mu
#Date: 2022-10-23 01:14
#LastEditTime: 2022-10-23 01:27
#Description: Description
#Edited by TAMRIKer
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function bad(n::UInt)
    if n == 0
        return 0
    else
        return bad(n ÷ 3 + 1) + n - 1
    end
end