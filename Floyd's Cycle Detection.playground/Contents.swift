import UIKit

func findDoublicateWithHash(arr: [Int]) -> Int {
    var doublicateCounter = [Int:Int]()
    var doublicateNumber = 0
    for i in 0..<arr.count {
        let num = arr[i]
        if !doublicateCounter.isEmpty && doublicateCounter.contains(where: {$0.key == num}) {
            doublicateCounter[num]! += 1
            doublicateNumber = num
        } else {
            doublicateCounter[num] = 1
        }
    }
 
    
    
    return doublicateNumber
}

func findDoublicateWithFloyd(arr: [Int]) -> Int {
    var slow = 0
    var fast = 0
    
    while true {
        slow = arr[slow]
        fast = arr[arr[fast]]
        if slow == fast {
            break
        }
    }
    
    var slow2 = 0

    while true {
        slow = arr[slow]
        slow2 = arr[slow2]
        if slow == slow2 {
            return slow
        }
    }

}

findDoublicateWithHash(arr: [1,3,4,2,2])
findDoublicateWithFloyd(arr: [1,3,4,2,2])
