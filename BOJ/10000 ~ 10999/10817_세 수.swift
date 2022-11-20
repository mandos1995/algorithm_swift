let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
print(input[1])
