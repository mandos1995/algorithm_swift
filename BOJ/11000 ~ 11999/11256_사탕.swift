let t = Int(readLine()!)!

for _ in 0..<t {
    solution()
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var j = input[0]
    let n = input[1]
    var box: [Int] = []
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        box.append((input[0] * input[1]))
    }
    box.sort(by: >)
    for i in 0..<n {
        j -= box[i]
        if j <= 0 {
            print(i + 1)
            break
        }
    }
}
