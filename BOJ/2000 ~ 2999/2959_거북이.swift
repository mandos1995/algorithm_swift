var input = readLine()!.split(separator: " ").map { Int($0)! }
input.sort()
input.remove(at: input.firstIndex(of: input.max()!)!)
print(input[0] * input[2])
