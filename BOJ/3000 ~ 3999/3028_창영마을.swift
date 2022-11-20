let input = String(readLine()!)
var cup: [Int] = [1, 0, 0]
for i in input {
    switch i {
    case "A":
        if cup[0] == 1 {
            cup[0] = 0
            cup[1] = 1
        } else if cup[1] == 1 {
            cup[0] = 1
            cup[1] = 0
        } else {
            continue
        }
    case "B":
        if cup[1] == 1 {
            cup[2] = 1
            cup[1] = 0
        } else if cup[2] == 1 {
            cup[1] = 1
            cup[2] = 0
        } else {
            continue
        }
    case "C":
        if cup[0] == 1 {
            cup[2] = 1
            cup[0] = 0
        } else if cup[2] == 1 {
            cup[0] = 1
            cup[2] = 0
        } else {
            continue
        }
    default:
        print("잘못된 값")
    }
}

if cup[0] == 1 {
    print(1)
} else if cup[1] == 1 {
    print(2)
} else {
    print(3)
}
