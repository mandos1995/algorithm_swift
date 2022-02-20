let n = Int(readLine()!)!
let str = readLine()!.map { String($0) }
var i = 0
var result = "*"
while i < str.count {
    if str[i] == "S" {
        result += "S*"
    } else {
        result += "LL*"
        i += 1
    }
    i += 1
}

func countStar(str: String) -> Int {
    var count = 0
    for s in str {
        count += s == "*" ? 1 : 0
    }
    return count
}

n <= countStar(str: result) ? print(n) : print(countStar(str: result))
