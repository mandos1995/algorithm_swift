let n = Int(readLine()!)!
var table: [Int: (Int, Bool)] = [:]
for i in 0..<10 {
    table[i] = (0, false)
}

for _ in 0..<n {
    let word = readLine()!.reversed().map { $0 }
    var step = 1
    table[Int(word.last!.asciiValue!) - 65]!.1 = true
    
    for w in word {
        table[Int(w.asciiValue!) - 65]!.0 += step
        step *= 10
    }
}

var sorted = table.sorted { $0.value.0 > $1.value.0 }
var deleteIndex = -1
if sorted[9].value.0 != 0 {
    for i in stride(from: 9, to: -1, by: -1) {
        if !sorted[i].value.1 {
            deleteIndex = i
            break
        }
    }
    sorted.remove(at: deleteIndex)
}

var answer = 0
for i in (1...9).reversed() {
    answer += sorted[9 - i].value.0 * i
}
print(answer)
