var input = readLine()!.split(separator: " ").map {Int($0)!}
input.remove(at: input.firstIndex(of: input.min()!)!)
input.remove(at: input.firstIndex(of: input.max()!)!)
print(input[0])
