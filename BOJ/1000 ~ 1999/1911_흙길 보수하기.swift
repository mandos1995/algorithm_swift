let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], l = input[1]
var coord: [(Int, Int)] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    coord.append((input[0], input[1]))
}

coord.sort { $0.0 < $1.0 }

var answer = 0
var current = 0

for (start, end) in coord {
    if current >= end {
        continue
    }
    
    current = max(current, start)
    
    let quotient = (end - current) / l + ((end - current) % l == 0 ? 0 : 1)
    current += quotient * l
    answer += quotient
}

print(answer)
