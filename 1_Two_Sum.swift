class Solution {
    func twoSum(_ nums:[Int], _ target: Int) -> [Int] {
        var i = 0, j = nums.count - 1
        let numsSorted = nums.sorted()
        repeat {
            if numsSorted[i] + numsSorted[j] == target {
                return [nums.firstIndex(of: numsSorted[i])!, nums.lastIndex(of: numsSorted[j])!]
            } else if numsSorted[i] + numsSorted[j] < target{
                i += 1
            } else{
                j -= 1
            }
        } while i < j
        return []
    }
}
