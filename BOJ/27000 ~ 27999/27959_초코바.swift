let price = readLine()!.split(separator: " ").map { Int($0)! }
print(price[0] * 100 >= price[1] ? "Yes" : "No")
