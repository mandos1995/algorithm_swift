let scores = [100, 100, 200, 200, 300, 300, 400, 400, 500]
let input = readLine()!.split(separator: " ").map { Int($0)! }
if input.reduce(0, +) < 100 {
    print("none")
} else {
    var isHacker = false
    for i in 0..<9 {
        if scores[i] < input[i] {
            isHacker = true
            break
        }
    }
    isHacker == true ? print("hacker") : print("draw")
}
