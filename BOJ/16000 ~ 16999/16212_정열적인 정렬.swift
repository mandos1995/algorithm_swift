let t = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

for num in nums.sorted() {
    print(num, terminator: " ")
}
