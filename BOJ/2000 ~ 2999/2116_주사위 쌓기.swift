let dict: [Int: Int] = [0: 5, 1: 3, 2: 4, 3: 1, 4: 2, 5: 0]
let n = Int(readLine()!)!
var dices: [[Int]] = []

for _ in 0..<n { dices.append(readLine()!.split { $0 == " " }.map { Int($0)! }) }

func selectedTop(s: Int) -> Int {
    var top = dices[0][s]
    var bottom = dices[0][dict[s]!]
    var result = dices[0].filter { $0 != top && $0 != bottom }.max()!
    for i in 1..<n {
        let bottomIndex = dices[i].firstIndex(of: top)!
        bottom = dices[i][bottomIndex]
        top = dices[i][dict[bottomIndex]!]
        result += dices[i].filter { $0 != bottom && $0 != top }.max()!
    }
    
    return result
}
var result = 0
for i in 0..<6 {
    result = max(result, selectedTop(s: i))
}
print(result)
