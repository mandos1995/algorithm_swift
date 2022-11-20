let input = readLine()!.split(separator: " ").map { Int($0)! }
let length = input[0], n = input[1]

let beat = readLine()!.split(separator: " ").map { Int($0)! }

for _ in 0..<n {
    let range = readLine()!.split(separator: " ").map { Int($0)! }
    var sum = 0
    for i in range[0] - 1..<range[1] - 1 {
        sum += abs(beat[i + 1] - beat[i])
    }
    print(sum)
}
