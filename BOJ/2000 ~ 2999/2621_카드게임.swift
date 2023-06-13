var deck: [Character: [Int]] = [:]
var radixNumber = [Int](repeating: 0, count: 10)
for _ in 0..<5 {
    let input = readLine()!
    let color = input.first!
    let num = Int(String(input.last!))!
    radixNumber[num] += 1
    deck[color, default: []].append(num)
    
}

func isStraight(_ deck: [Character: [Int]]) -> Bool {
    let nums = deck.values.flatMap { $0 }.sorted()
    for i in 1...5 {
        if nums == [Int](i..<i + 5) {
            return true
        }
    }
    return false
}

if deck.count == 1 && isStraight(deck) {
    print(900 + deck.values.flatMap { $0 }.max()!)
} else if radixNumber.max()! == 4 {
    print(800 + radixNumber.firstIndex(of: 4)!)
} else if radixNumber.contains(3) && radixNumber.contains(2) {
    print(700 + radixNumber.firstIndex(of: 3)! * 10 + radixNumber.firstIndex(of: 2)!)
} else if deck.count == 1 {
    print(600 + radixNumber.lastIndex(of: 1)!)
} else if isStraight(deck) {
    print(500 + radixNumber.lastIndex(of: radixNumber.max()!)!)
} else if radixNumber.contains(3) {
    print(400 + radixNumber.firstIndex(of: 3)!)
} else if radixNumber.sorted()[9] == 2 && radixNumber.sorted()[8] == 2 {
    print(300 + radixNumber.lastIndex(of: 2)! * 10 + radixNumber.firstIndex(of: 2)!)
} else if radixNumber.contains(2) {
    print(200 + radixNumber.firstIndex(of: 2)!)
} else {
    print(100 + radixNumber.lastIndex(of: 1)!)
}
