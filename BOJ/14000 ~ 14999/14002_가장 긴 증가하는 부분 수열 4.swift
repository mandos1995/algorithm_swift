let n = Int(readLine()!)!
var cache = [Int](repeating: 1, count: n)
let array = readLine()!.split(separator: " ").map { Int($0)! }
var order = [Int](repeating: -1, count: n)
for i in 0..<n {
    for j in 0..<i {
        if array[i] > array[j] {
            if cache[i] < cache[j] + 1 {
                cache[i] = cache[j] + 1
                order[i] = j
            }
        }
    }
}
var count = cache.max()!
var answer: [Int] = []
var idx = cache.firstIndex(of: cache.max()!)!

while idx != -1 {
    answer.append(array[idx])
    idx = order[idx]
}
print(cache.max()!)
answer.reversed().forEach {
    print($0, terminator: " ")
}
