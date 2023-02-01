import UIKit

public func solution(_ S: inout String) -> Int {
    var blocks: [Int] = []
    let stringArr = Array(S)
    var p = 0
    var maxFr = 0
    var addedChar = 0

    for index in 0 ... stringArr.count - 1 {
        if index == 0 {
            // first block
            blocks.append(1)
        } else if stringArr[index] != stringArr[index - 1] {
            // new block
            p += 1
            blocks.append(1)
        } else if stringArr[index] == stringArr[index - 1] {
            // add to last block
            blocks[p] += 1
        }
    }
    maxFr = blocks.max() ?? 0
    blocks.contains(<#T##element: Int##Int#>)
    for index in 0 ... blocks.count - 1 {
        addedChar += maxFr - blocks[index]
    }

    print(blocks)
    return addedChar
}

var testingArr: String = " "
solution(&testingArr)
