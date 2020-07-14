class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var y = x
        var aux = 0
        var t = 0
        if x < 0 {
            return false
        }else{
            while y > 0 {
                aux = y % 10
                y /= 10
                t = t*10 + aux
            }
            if x == t {
                return true
            }else {
                return false
            }
        }
    }
}
