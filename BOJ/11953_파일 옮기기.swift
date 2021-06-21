var basket_a = readLine()!.split(separator: " ").map { Int($0)! }
var basket_b = readLine()!.split(separator: " ").map { Int($0)! }
var case1 = basket_a[0] + basket_b[1]
var case2 = basket_a[1] + basket_b[0]
print(min(case1, case2))
