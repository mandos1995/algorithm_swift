var cow = [Int?](repeating: nil, count: 11)
let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let num = input[0], location = input[1]
    
    if cow[num] != nil, cow[num]! != location {
        answer += 1
    }
    cow[num] = location
}
print(answer)
