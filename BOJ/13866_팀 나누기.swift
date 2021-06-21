let input = readLine()!.split(separator: " ").map{ Int($0)! }
print(abs((input[0] + input[3]) - (input[1] + input[2])))
