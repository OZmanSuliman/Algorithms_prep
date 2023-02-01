import UIKit

func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    var dp = Array(repeating: Array(repeating: 0, count: text2.count + 1), count: text1.count + 1)
    
    for i in (0..<text1.count).reversed() {
        for j in (0..<text2.count).reversed() {
            if text1[text1.index(text1.startIndex, offsetBy: i)] == text2[text2.index(text2.startIndex, offsetBy: j)] {
                dp[i][j] = 1 + dp[i + 1][j + 1]
            } else {
                dp[i][j] = max(dp[i][j + 1], dp[i + 1][j])
            }
        }
    }

    return dp[0][0]
}

longestCommonSubsequence("abcde", "ace")
