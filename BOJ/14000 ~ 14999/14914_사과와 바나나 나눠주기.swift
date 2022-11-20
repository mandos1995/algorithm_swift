func gcd(_ n: Int, _ m: Int) -> Int {
    if m == 0 {
        return n
    } else {
        return gcd(m, n % m)
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let num = gcd(input[0], input[1])
var nums = [Int]()
for i in 1...num {
    if num % i == 0 {
        nums.append(i)
    }
}


for i in 0..<nums.count {
    print(nums[i], input[0] / nums[i], input[1] / nums[i])
}
