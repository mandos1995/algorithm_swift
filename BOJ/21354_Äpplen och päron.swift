let input = readLine()!.split(separator: " ").map { Int($0)! }
let axel = input[0] * 7
let petra = input[1] * 13

if axel > petra{
    print("Axel")
} else if axel < petra {
    print("Petra")
} else {
    print("lika")
}
