let nums = readLine()!.map { Int(String($0))! }.sorted(by: >)
print(nums.map { String($0) }.reduce("", +))
