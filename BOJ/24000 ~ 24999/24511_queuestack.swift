let n = Int(readLine()!)!
let dataStructs = readLine()!.split(separator: " ").map { Int($0)! }
var array = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!
let c = readLine()!.split(separator: " ").map { Int($0)! }

var queue = zip(dataStructs, array).filter { $0.0 == 0 }.reversed().map { $0.1 }
var index = 0
var answer: [Int] = []
for c in c {
    queue.append(c)
    answer.append(queue[index])
    index += 1
}
print(answer.map { String($0) }.joined(separator: " "))
