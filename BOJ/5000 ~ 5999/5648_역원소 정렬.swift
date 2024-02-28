var nums = readLine()!.split(separator: " ").map { Int($0)! }
let n = nums.removeFirst()

while nums.count < n {
    nums.append(contentsOf: readLine()!.split(separator: " ").map { Int($0)! })
}
nums = nums.compactMap { Int(String(String($0).reversed())) }
nums.sorted().forEach { print($0) }
