let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }

var start = 0
var end = 0
var counter: [Int: Int] = [:]
var answer = 0

while end < n {
    let fruit = array[end]
    counter[fruit, default: 0] += 1
    end += 1

    while counter.keys.count > 2 {
        let startFruit = array[start]
        counter[startFruit]! -= 1
        if counter[startFruit]! == 0 {
            counter.removeValue(forKey: startFruit)
        }
        start += 1
    }

    answer = max(answer, end - start)
}

print(answer)
