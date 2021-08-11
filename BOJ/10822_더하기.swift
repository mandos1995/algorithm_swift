let string = readLine()!.split(separator: ",").map { Int($0)! }
print(string.reduce(0, +))
