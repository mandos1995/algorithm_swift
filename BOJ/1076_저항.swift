var sum = ""
for _ in 0..<2 {
    let input = readLine()!
    switch input {
    case "black":
        sum += "0"
    case "brown":
        sum += "1"
    case "red":
        sum += "2"
    case "orange":
        sum += "3"
    case "yellow":
        sum += "4"
    case "green":
        sum += "5"
    case "blue":
        sum += "6"
    case "violet":
        sum += "7"
    case "grey":
        sum += "8"
    case "white":
        sum += "9"
    default:
        sum += ""
    }
}
sum = String(Int(sum)!)
let input = readLine()!
if sum != "0" {
    switch input {
    case "black":
        sum += ""
    case "brown":
        sum += "0"
    case "red":
        sum += "00"
    case "orange":
        sum += "000"
    case "yellow":
        sum += "0000"
    case "green":
        sum += "00000"
    case "blue":
        sum += "000000"
    case "violet":
        sum += "0000000"
    case "grey":
        sum += "00000000"
    case "white":
        sum += "000000000"
    default:
        sum += ""
    }
}
print(sum)
