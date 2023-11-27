import Foundation
var i = 1
while let input = readLine(), input != "0" {
    var nums = input.split(separator: " ").map { Double($0)! }
    let n = Int(nums.removeFirst())
    print("Case \(i): ", terminator: "")
    if n % 2 == 1 {
        print(String(format: "%.1f", nums[(n + 1) / 2 - 1]))
    } else {
        let avg = (nums[n / 2 - 1] + nums[n / 2]) / 2
        print(String(format: "%.1f", avg))
    }
    i += 1
}
