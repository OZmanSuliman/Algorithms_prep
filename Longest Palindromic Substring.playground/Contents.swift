import Foundation

func longestPalindrome(s: String) -> String {
    let stringArr = Array(s)
    var res = ""
    var resLen = 0

    for i in 0 ..< stringArr.count {
        var left = i
        var right = i

        while left >= 0, right < stringArr.count, stringArr[left] == stringArr[right] {
            if (right - left + 1) > resLen {
                res = String(stringArr[left ... right])
                resLen = right - left + 1
            }
            left -= 1
            right += 1
        }

        left = i
        right = i + 1

        while left >= 0, right < stringArr.count, stringArr[left] == stringArr[right] {
            if (right - left + 1) > resLen {
                res = String(stringArr[left ... right])
                resLen = right - left + 1
            }
            left -= 1
            right += 1
        }
    }

    return res
}

longestPalindrome(s: "babad")
