#
#Author: Xlin0mu
#Date: 2022-10-22 21:53:07
#LastEditTime: 2022-10-22 21:53:59
#FilePath: \undefinede:\AhMyGit\MyGitHub\DSAA\ByJulia\Part2\Algorithms\Power\Creative.jl
#Description: Description
#Just a newcomer,hummm...
#Copyright (c) 2022 by Xlin0mu, All Rights Reserved. 
#

function power(num, p::Integer; notodd = 0)
    if p == 1
        return num
    end

    if isodd(p)
        return num * power(num, Int((p-1)/2))^2
    else
        return power(num, Int(p/2))^2
    end
end

@time(power(BigInt(200),30000))

@time(BigInt(200)^30000)
