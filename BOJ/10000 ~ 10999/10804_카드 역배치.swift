var cardData = [Int](repeating: 0, count: 20)
for i in 0..<cardData.count {
    cardData[i] += i + 1
}
for _ in 0..<10 {
    let step = readLine()!.split(separator: " ").map { Int($0)! }
    var temp = [Int](repeating: 0, count: step[1] - step[0] + 1)
    for i in 0..<temp.count {
        temp[i] = cardData[step[0] + i - 1]
    }
    let reversedTemp = Array(temp.reversed())

    var j = 0
    for i in step[0] - 1..<step[1] {
        cardData[i] = reversedTemp[j]
        j += 1
    }
}

for data in cardData {
    print(data, terminator: " ")
}
