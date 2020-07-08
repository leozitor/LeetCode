class Solution {
    func reverse(_ x: Int) -> Int {
        var val:Int
        var t:Int
        var sign = 1
        var res = 0
        if x < 0 {
            sign = -1
            val = abs(x)            
        }else{
            val = x
        }
        while val > 0 {
            t = val%10
            val /= 10
            res = res*10 + t
        }
        res = res * sign
        if res > 2147483647 || res < -2147483648{
            return 0
        }else{
            return res
        }
    }
}
