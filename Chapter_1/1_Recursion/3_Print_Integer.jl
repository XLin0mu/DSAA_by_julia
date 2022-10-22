#
#Author: Xlin0mu
#Date: 2022-10-23 02:04
#LastEditTime: 2022-10-23 02:05
#Description: Description
#Edited by TAMRIKer
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function print_integer(n::UInt)
    if n >= 10
        print_integer(n ÷ 10)
    end
    print(n%10)
end