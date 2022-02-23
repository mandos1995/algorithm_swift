let n = Int(readLine()!)!
let balloons = readLine()!.split(separator: " ").map { Int($0)! }
var deque: [(Int, Int)] = []

for (index, balloon) in balloons.enumerated() {
    deque.append((index + 1, balloon))
}
var removeDeque = deque.removeFirst()
print(removeDeque.0, terminator: " ")
while !deque.isEmpty {
    if removeDeque.1 > 0 {
        for _ in 0..<removeDeque.1 - 1 {
            deque.append(deque.removeFirst())
        }
    } else {
        for _ in 0..<removeDeque.1 * -1 {
            deque.insert(deque.removeLast(), at: 0)
        }
    }
    removeDeque = deque.removeFirst()
    print(removeDeque.0, terminator: " ")
}
