let n = readLine()!.map { String($0) }
var sum = 0
var index = 0
for i in 0..<13 {
    if let num = Int(n[i]) {
        sum += i % 2 == 0 ? num : num * 3
    } else {
        index = i
    }
}

for i in 0...9 {
    let total = index % 2 == 0 ? sum + i : sum + i * 3
    if (total % 10) % 10 == 0 {
        print(i)
        break
    }
}
