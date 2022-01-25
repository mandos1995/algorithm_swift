var words: [String] = []

var dic: [String: Int] = [:]
for _ in 0..<Int(readLine()!)! {
    words.append(readLine()!)
}

for i in 0..<words.count {
    var count = words[i].count - 1
    for word in words[i] {
        if let value = dic[String(word)] {
            dic.updateValue(value + pow10(count), forKey: String(word))
        } else {
            dic[String(word)] = pow10(count)
        }
        count -= 1
    }
    
}

let sortedDictionary = dic.sorted { $0.value > $1.value }
var sum = 0
var max = 9

for dic in sortedDictionary {
    sum += dic.value * max
    max -= 1
}

print(sum)

func pow10(_ n: Int) -> Int {
    var result = 1
    for _ in 0..<n {
        result = result * 10
    }
    return result
}
