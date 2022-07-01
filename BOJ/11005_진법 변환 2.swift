let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], b = input[1]
print(transRadix(n, b))

func transRadix(_ n: Int, _ k: Int) -> String {
    var answer = ""
    var n = n
    var dict: [Int: Character] = [:]
    for i in 10...35 {
        dict[i] = Character(UnicodeScalar(i + 55)!)
    }
    
    while n >= k {
        if n % k > 9 {
            answer += String(dict[n % k]!)
        } else {
            answer += "\(n % k)"
        }
        n /= k
    }
    
    if n > 9 {
        answer += String(dict[n]!)
    } else {
        answer += "\(n)"
    }
    return String(answer.reversed())
}
