let n = Int(readLine()!)!
let nums = readLine()!.map { Int(String($0))! }
var odd = 0, even = 0
nums.forEach {
    odd += $0 % 2 == 0 ? 1 : 0
    even += $0 % 2 == 0 ? 0 : 1
}
print(odd > even ? 0 : odd < even ? 1 : -1)
