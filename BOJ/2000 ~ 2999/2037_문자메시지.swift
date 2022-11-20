let input = readLine()!.split(separator: " ").map { Int($0)! }
let p = input[0], w = input[1]
let words = readLine()!.map { $0 }
var alpha = [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 4, 1, 2, 3, 1, 2, 3, 4]
var answer = 0
for word in words {
    if word == " " {
        answer += p
        continue
    }
    answer += alpha[Int(word.asciiValue!) - 65] * p
}

var dict: [Character: Int] = [:]
var value = 1
for i in 0...14 {
    value += i % 3 == 0 ? 1 : 0
    dict[Character(UnicodeScalar(UInt8(i + 65)))] = value
}
value += 1

for i in 15...18 {
    dict[Character(UnicodeScalar(UInt8(i + 65)))] = value
}
value += 1

for i in 19...21 {
    dict[Character(UnicodeScalar(UInt8(i + 65)))] = value
}

value += 1

for i in 22...25 {
    dict[Character(UnicodeScalar(UInt8(i + 65)))] = value
}
dict[" "] = 1
for i in 1..<words.count {
    if words[i] == " " {
        continue
    }
    if dict[words[i]]! == dict[words[i - 1]]! {
        answer += w
    }
}
print(answer)
