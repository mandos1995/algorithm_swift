let n = Int(readLine()!)!
let word = readLine()!.map { $0 }
let isOdd = n % 2 == 1
let mid = n / 2
let start = String(word[0..<mid]).map { $0 }
let end = isOdd ? String(word[mid + 1..<n]).reversed().map { $0 } : String(word[mid..<n]).reversed().map { $0 }
var answer = 0
for i in 0..<mid {
    if start[i] != end[i] {
        answer += 1
    }
}
print(answer)
