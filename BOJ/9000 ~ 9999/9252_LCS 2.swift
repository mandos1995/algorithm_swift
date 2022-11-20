let str1 = ["0"] + readLine()!.map { String($0) }
let str2 = ["1"] + readLine()!.map { String($0) }

var cache = [[Int]](repeating: [Int](repeating: 0, count: str1.count), count: str2.count)

for i in 1..<str2.count {
    for j in 1..<str1.count {
        if str1[j] == str2[i] {
            cache[i][j] = cache[i - 1][j - 1] + 1
        } else {
            cache[i][j] = max(cache[i - 1][j], cache[i][j - 1])
        }
    }
}

var length = cache.flatMap { $0 }.max()!

var i = str2.count - 1
var j = str1.count - 1
var answer = ""

while true {
    if answer.count == length {
        break
    }
    if cache[i][j] == cache[i - 1][j] {
        i -= 1
        continue
    }
    if cache[i][j] == cache[i][j - 1] {
        j -= 1
        continue
    }
    answer += str1[j]
    i -= 1
    j -= 1
    
}
print(length)
print(String(answer.reversed()))
