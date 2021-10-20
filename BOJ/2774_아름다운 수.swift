let n = Int(readLine()!)!

for _ in 0..<n {
    var array = [String]()
    let nums = readLine()!
    for num in nums {
        array.append(String(num))
    }
    let set = Set(array)
    print(set.count)
}
