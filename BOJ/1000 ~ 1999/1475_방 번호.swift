let roomNum = readLine()!
var setNum = [Int](repeating: 0, count: 9)

for i in roomNum {
    switch i {
    case "0":
        setNum[0] += 1
    case "1":
        setNum[1] += 1
    case "2":
        setNum[2] += 1
    case "3":
        setNum[3] += 1
    case "4":
        setNum[4] += 1
    case "5":
        setNum[5] += 1
    case "6", "9":
        setNum[6] += 1
    case "7":
        setNum[7] += 1
    case "8":
        setNum[8] += 1
    default:
        print("없음")
    }
}
if setNum[6] % 2 == 0 {
    setNum[6] /= 2
} else {
    setNum[6] = setNum[6] / 2 + 1
}
print(setNum.max()!)

