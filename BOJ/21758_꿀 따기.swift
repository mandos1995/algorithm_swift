let n = Int(readLine()!)!
let honey = readLine()!.split(separator: " ").map { Int($0)! }
var honeySum = [Int](repeating: 0, count: n)
var sum = 0
for (index, honey) in honey.enumerated() {
    sum += honey
    honeySum[index] = sum
    
}
var answer = 0

//1. 벌 - 벌 - 꿀통
for i in 1..<n {
    // 1번 벌이 딸 수 있는 꿀
    // 자기자신과, 벌이 있는 위치를 제외하고 딸 수 있음
    let bee1 = honeySum.last! - honey[0] - honey[i]
    
    // 2번 벌이 딸 수 있는 꿀
    // 자기 자신을 제외하고 오른쪽 꿀통까지 딸 수 있음
    let bee2 = honeySum.last! - honeySum[i]
    answer = max(answer, bee1 + bee2)
    
}

// 2. 벌 - 꿀통 - 벌
for i in 1..<n {
    let bee1 = honeySum[i] - honey.first!
    let bee2 = honeySum.last! - honeySum[i - 1] - honey.last!
    answer = max(answer, bee1 + bee2)
}

// 3. 꿀통 - 벌 - 벌
// 1번과 동일한 로직, 단지
var reverseHoney = Array(honey.reversed())
sum = 0
var reverseHoneySum = [Int](repeating: 0, count: n)
for (index, reverseHoney) in reverseHoney.enumerated() {
    sum += reverseHoney
    reverseHoneySum[index] = sum
}

for i in 1..<n {
    let bee1 = reverseHoneySum.last! - reverseHoney[0] - reverseHoney[i]
    let bee2 = reverseHoneySum.last! - reverseHoneySum[i]
    answer = max(answer, bee1 + bee2)
}

print(answer)
