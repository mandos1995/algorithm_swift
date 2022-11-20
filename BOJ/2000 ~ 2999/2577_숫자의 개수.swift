let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
var sum = a * b * c
var result = [Int](repeating: 0, count: 10)
for i in String(sum){
    switch i {
    case "0":
        result[0] += 1
    case "1":
        result[1] += 1
    case "2":
        result[2] += 1
    case "3":
        result[3] += 1
    case "4":
        result[4] += 1
    case "5":
        result[5] += 1
    case "6":
        result[6] += 1
    case "7":
        result[7] += 1
    case "8":
        result[8] += 1
    case "9":
        result[9] += 1
    default:
        print("잘못됨")
    }
}
for i in 0..<10{
    print(result[i])
}
