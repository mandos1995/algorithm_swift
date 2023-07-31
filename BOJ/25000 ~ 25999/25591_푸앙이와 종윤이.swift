let input = readLine()!.split(separator: " ").map { Int($0)! }
let num1 = input[0], num2 = input[1]
let a = 100 - num1, b = 100 - num2, c = 100 - (a + b)
let d = a * b, q = d / 100, r = d % 100
print(a, b, c, d, q, r)
print(c + q , r)
