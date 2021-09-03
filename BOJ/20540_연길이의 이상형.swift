let mbti = readLine()!
var result = ""
for chr in mbti {
    switch String(chr) {
    case "E":
        result += "I"
    case "I":
        result += "E"
    case "S":
        result += "N"
    case "N":
        result += "S"
    case "T":
        result += "F"
    case "F":
        result += "T"
    case "J":
        result += "P"
    case "P":
        result += "J"
    default:
        result += ""
    }
}
print(result)
