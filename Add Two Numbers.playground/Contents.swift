import UIKit

/*
 in the video a ListNode is used
 in my case I'm using an Array as you can see
 */

func sum(value1: [Int], value2: [Int]) -> Int {
    var list1 = value1
    var list2 = value2
    var res = 0
    var resList = [Int]()
    var carry = 0
    
    if value1.count > value2.count {
        let diff = value1.count - value2.count
        let zeros = repeatElement(0, count: diff)
        list1.append(contentsOf: zeros)
    } else if value1.count < value2.count {
        let diff = value2.count - value1.count
        let zeros = repeatElement(0, count: diff)
        list2.append(contentsOf: zeros)
    }
    
    for i in 0..<list1.count {
        let firstNum = value1[i]
        let secondNum = value2[i]
        
        let dummyRes = firstNum + secondNum + carry
        carry = Int(dummyRes/10)
        resList.append(dummyRes%10)
        
    }
    resList.append(carry)
    resList = resList.reversed()
    var resStr = ""
    resList.map({resStr += "\($0)"})
    res = Int(resStr)!
    
    return res
}

sum(value1: [2,4,3], value2: [5,6,4])
