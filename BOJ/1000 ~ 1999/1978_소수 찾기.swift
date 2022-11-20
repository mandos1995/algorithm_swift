let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }

func isDecimal(_ n: Int) -> Bool {
    if n == 1 {
        return false
    }
    
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true

}
var answer = 0

for arr in array {
    if isDecimal(arr) {
        answer += 1
    }
}

print(answer)
