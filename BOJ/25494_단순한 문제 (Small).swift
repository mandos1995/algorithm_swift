func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], c = input[2]
    var answer = 0
    for x in 1...a {
        for y in 1...b {
            for z in 1...c {
                if x % y == y % z && x % y == z % x {
                    answer += 1
                }
            }
        }
        
    }
    print(answer)
}

let n = Int(readLine()!)!

for _ in 0..<n {
    solution()
}
