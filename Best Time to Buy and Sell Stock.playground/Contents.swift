import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var dp = [Int: Int]()
    
    func dfs(_ i: Int, _ buying: Bool) -> Int {
        if i >= prices.count {
            return 0
        }
        if let storedProfit = dp[i * 2 + (buying ? 1 : 0)] {
            return storedProfit
        }
        
        let cooldown = dfs(i + 1, buying)
        if buying {
            let buy = dfs(i + 1, !buying) - prices[i]
            dp[i * 2 + 1] = max(buy, cooldown)
        } else {
            let sell = dfs(i + 2, !buying) + prices[i]
            dp[i * 2] = max(sell, cooldown)
        }
        return dp[i * 2 + (buying ? 1 : 0)]!
    }
    return dfs(0, true)
}

maxProfit([1,2,3,0,2])
