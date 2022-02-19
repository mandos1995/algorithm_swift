func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    
    func combi(_ index: Int, _ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        for i in index..<elements.count {
            combi(i + 1, now + [elements[i]])
        }
    }
    combi(0, [])
    return result
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], s = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
for i in 1...array.count {
    for num in combination(array, i) {
        if num.reduce(0, +) == s {
            count += 1
        }
    }
}
print(count)
