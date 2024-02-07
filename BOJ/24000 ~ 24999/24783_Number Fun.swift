let t = Int(readLine()!)!
for _ in 0..<t {
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    let a = nums[0], b = nums[1], c = nums[2]
    var isPossible = false
    if a + b == c {
        isPossible = true
    } else if a - b == c || b - a == c {
        isPossible = true
    } else if a * b == c {
        isPossible = true
    } else if (a % b == 0 && a / b == c) || (b % a == 0 && b / a == c) {
        isPossible = true
    }
    print(isPossible ? "Possible" : "Impossible")
    
}
