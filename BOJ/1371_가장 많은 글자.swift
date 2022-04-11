var dict: [Character: Int] = [:]
while let input = readLine() {
    for i in input {
        if i == " " {
            continue
        }
        if dict[i] == nil {
            dict[i] = 1
        } else {
            dict[i]! += 1
        }
    }
}

let sorted = dict.sorted { $0.value > $1.value }
let maxCount = sorted[0].value
var answer = ""
sorted.filter { $0.value == maxCount }.sorted { $0.key < $1.key }.forEach {
    answer += String($0.key)
}
print(answer)
