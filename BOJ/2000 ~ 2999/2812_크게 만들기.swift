let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var k = input[1]
var numbers = readLine()!.map { Int(String($0))! }
var stack: [Int] = []
for number in numbers {
    while k != 0 && !stack.isEmpty && stack[stack.count - 1] < number {
        stack.removeLast()
        k -= 1
    }
    stack.append(number)
}

for _ in 0..<k {
    stack.removeLast()
}
print(stack.map { String($0)}.joined())
