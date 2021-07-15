let input = readLine()!.split(separator: " ").map { Int($0)! }
let month = ["MON","TUE","WED","THU","FRI","SAT","SUN"]
let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var total = 0
if input[0] > 1 {
    for i in 1..<input[0] {
        total += days[i - 1]
    }
    total += input[1]
} else{
    total += input[1]
}
switch total % 7 {
case 0:
    print(month[6])
case 1:
    print(month[0])
case 2:
    print(month[1])
case 3:
    print(month[2])
case 4:
    print(month[3])
case 5:
    print(month[4])
case 6:
    print(month[5])
default:
    print("잘못된 입력")
}
