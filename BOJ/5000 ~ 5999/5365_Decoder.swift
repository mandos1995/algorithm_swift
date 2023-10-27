let n = Int(readLine()!)!
let words = readLine()!.split(separator: " ").map { String($0) }
var prev = 1
var answer = ""
for word in words {
    let c = word.count
    if c >= prev {
        answer += word.map { String($0) }[prev - 1]
    } else {
        answer += " "
    }
    prev = c
}
print(answer)
