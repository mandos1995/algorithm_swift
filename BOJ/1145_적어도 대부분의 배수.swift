let nums = readLine()!.split(separator: " ").map { Int($0)! }

for i in 1...1000000 {
    var count = 0
    for num in nums {
        if i.isMultiple(of: num) {
            count += 1
        }
    }
    if count > 2 {
        print(i)
        break
    }
}
