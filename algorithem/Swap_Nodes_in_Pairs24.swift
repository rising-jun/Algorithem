class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard var current = head else { return nil }
        while(current.next != nil) {            
            var currentValue = current.val
            current.val = current.next!.val
            current = current.next!
            current.val = currentValue
            if current.next != nil {
                current = current.next!
            }
        }
        return head
    }
}
