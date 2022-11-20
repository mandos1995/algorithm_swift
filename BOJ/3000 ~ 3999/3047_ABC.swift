var nums = readLine()!.split(separator: " ").map { Int($0)! }
var dict: [String: Int] = [:]
for str in "ABC" {
    dict[String(str)] = nums.remove(at: nums.firstIndex(of: nums.min()!)!)
}

let command = readLine()!.map { String($0) }
print(dict[command[0]]!, dict[command[1]]!, dict[command[2]]!)
