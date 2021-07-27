print(readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +))
