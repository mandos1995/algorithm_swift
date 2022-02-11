let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], n = input[2], w = input[3]
var count = 1
var sheep = 0
var goat = 0
for i in 1..<n {
    for j in 1..<n {
        if i + j == n {
            if i * a + j * b == w {
                sheep = i
                goat = j
                count -= 1
            }
        }
    }
}

count != 0 ? print(-1) : print(sheep, goat)

