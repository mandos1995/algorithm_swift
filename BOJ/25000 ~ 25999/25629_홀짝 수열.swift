let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var even = input.filter { $0 % 2 == 0 }
var odd = input.filter { $0 % 2 == 1 }
var nums: [Int] = []
var answer = true
for i in 0..<n {
    if i % 2 == 0 {
        if odd.isEmpty {
            answer = false
            break
        }
        nums.append(odd.removeLast())
    } else {
        if even.isEmpty {
            answer = false
            break
        }
        nums.append(even.removeLast())
    }
}

if answer && nums.count == n {
    print(1)
} else {
    print(0)
}
