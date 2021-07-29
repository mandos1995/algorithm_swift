let input = readLine()!.split(separator: " ").map { Double($0)! }
let input2 = readLine()!.split(separator: " ").map { Double($0)! }
let a = input[0]
let b = input[1]
let c = input2[0]
let d = input2[1]
var tableSum = [a / c + b / d]
tableSum.append(c / d + a / b)
tableSum.append(d / b + c / a)
tableSum.append(b / a + d / c)

print(tableSum.firstIndex(of: tableSum.max()!)!)
