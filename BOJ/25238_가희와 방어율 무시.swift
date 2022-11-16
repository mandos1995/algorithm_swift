let input = readLine()!.split(separator: " ").map { Double($0)! }
input[0] - (input[0] * (input[1] / 100)) >= 100 ? print(0) : print(1)
