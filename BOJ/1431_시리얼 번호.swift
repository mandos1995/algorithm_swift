let t = Int(readLine()!)!
var number: [String] = []
for _ in 0..<t {
    number.append(readLine()!)
}

func isNumberSum(_ str: String) -> Int {
    let words = str.map { $0 }
    var sum = 0
    for word in words {
        if word.isNumber {
            sum += Int(String(word))!
        }
    }
    return sum
}

number.sort {
    if $0.count == $1.count {
        if isNumberSum($0) == isNumberSum($1) {
            return $0 < $1
        } else {
            return isNumberSum($0) < isNumberSum($1)
        }
    } else {
        return $0.count < $1.count
    }
}

number.forEach { print($0) }
