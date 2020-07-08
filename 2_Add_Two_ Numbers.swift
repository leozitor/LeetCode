class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result: ListNode? = nil
        var resultIndex: ListNode? = nil
        var l1Index: ListNode? = l1
        var l2Index: ListNode? = l2
        var carry: Int = 0
        var sum: Int = 0

        while l1Index != nil || l2Index != nil {
            if l1Index == nil{
                sum = l2Index!.val + carry
            }else if l2Index == nil {
                sum = l1Index!.val + carry
            }else{
                sum = l1Index!.val + l2Index!.val + carry
            }
            if sum > 9 {
                carry = sum / 10
                sum = sum % 10
            }else {
                carry = 0
            }
            if result == nil {
                result = ListNode(sum)
                resultIndex = result
            } else {
                resultIndex!.next = ListNode(sum)
            }
            l1Index = l1Index?.next
            l2Index = l2Index?.next
            if resultIndex!.next != nil{
                resultIndex = resultIndex!.next
            }
            print()
        }
        if carry == 1 {
            resultIndex!.next = ListNode(carry)
        }
        
        return result
    }
}
