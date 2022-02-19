func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    
    func combi(_ index: Int, _ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        for i in index..<elements.count {
            combi(i + 1, now + [elements[i]])
        }
    }
    combi(0, [])
    return result
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let cards = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0
for card in combination(cards, 3) {
    if card.reduce(0, +) <= m {
        result = max(card.reduce(0, +), result)
    }
}

print(result)
