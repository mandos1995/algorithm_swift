_ = readLine()!
print(readLine()!.map { $0 }.filter { ["a", "e", "i", "o", "u"].contains($0)}.count)
