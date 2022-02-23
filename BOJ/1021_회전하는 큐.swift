let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var array = [Int](repeating: 0, count: n)
for i in 0..<array.count {
    array[i] = i + 1
}
let targetIndex = readLine()!.split(separator: " ").map { Int($0)! - 1 }
var target: [Int] = []
for t in targetIndex {
    target.append(array[t])
}
var count = 0
while array.count != n - m {
    if array[0] == target[0] {
        array.removeFirst()
        target.removeFirst()
        continue
    }
    if array.firstIndex(of: target[0])! <= array.count - array.firstIndex(of: target[0])! { // 2번 연산 수행
        array.append(array.removeFirst())
        count += 1
    } else { // 3번 연산 수행
        array.insert(array.removeLast(), at: 0)
        count += 1
    }
}
print(count)
