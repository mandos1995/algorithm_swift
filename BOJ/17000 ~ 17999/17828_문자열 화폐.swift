let input = readLine()!.split(separator: " ").map { Int($0)! }
var n = input[0]
var x = input[1]
var answer = ""

if n * 26 < x || n > x {
    print("!")
} else {
    while n > 0 {
        if x - 1 < 26 * (n - 1) {
            answer += "A"
            x -= 1
            n -= 1
        } else {
            answer += String(UnicodeScalar(x - 26 * (n - 1) + 64)!)
            x -= 26 * (n - 1)
            n -= 1
            break
        }
    }
    
    answer += String(repeating: "Z", count: n)
    print(answer)
}
