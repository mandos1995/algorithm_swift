while true {
    let input = readLine()!
    var count = 0
    if input == "#" {
        break
    }
    for chr in input {
        if chr == "a" || chr == "e" || chr == "i" || chr == "o" || chr == "u" || chr == "A" || chr == "E" || chr == "I" || chr == "O" || chr == "U"{
            count += 1
        }
    }
    print(count)
}
