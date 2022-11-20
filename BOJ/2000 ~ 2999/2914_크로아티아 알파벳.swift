let word = readLine()!.map { String($0) }
var index = 0
var count = 0
while index < word.count {
    switch word[index] {
    case "c":
        if index + 1 < word.count && (word[index + 1] == "=" || word[index + 1] == "-") {
            count += 1
            index += 2
        } else {
            count += 1
            index += 1
        }
    case "d":
        if index + 2 < word.count && word[index + 1] == "z" && word[index + 2] == "=" {
            count += 1
            index += 3
        } else if index + 1 < word.count && word[index + 1] == "-" {
            count += 1
            index += 2
        } else {
            count += 1
            index += 1
        }
    case "l":
        if index + 1 < word.count && word[index + 1] == "j" {
            count += 1
            index += 2
        } else {
            count += 1
            index += 1
        }
    case "n":
        if index + 1 < word.count && word[index + 1] == "j" {
            count += 1
            index += 2
        } else {
            count += 1
            index += 1
        }
    case "s", "z":
        if index + 1 < word.count && word[index + 1] == "=" {
            count += 1
            index += 2
        } else {
            count += 1
            index += 1
        }
    default:
        count += 1
        index += 1
    }
}
print(count)
