var input = readLine()!.split(separator: " ").map { Int($0)! }
input.sort()
var num1 = input[0]
var num2 = input[1]
var sum = 0
if num1 % 4 == 0 && num2 % 4 == 0{
    sum = (num2 - num1) / 4
} else if num2 % 4 == 0{
    sum = abs(num1 / 4 - (num2 / 4 - 1)) + abs(num1 % 4 - (num2 % 4 + 4))
} else if num1 % 4 == 0{
    sum = abs((num1 / 4 - 1) - num2 / 4) + abs((num1 % 4 + 4) - num2 % 4)
} else {
    sum = abs(num1 / 4 - num2 / 4) + abs(num1 % 4 - num2 % 4)
}
print(sum)
