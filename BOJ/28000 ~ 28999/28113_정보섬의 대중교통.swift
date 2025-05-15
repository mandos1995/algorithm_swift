let input = readLine()!.split { $0 == " " }.map { Int($0)! }
let n = input[0], a = input[1], b = input[2]
print(a == b ? "Anything" : a > b ? "Subway" : "Bus")
