while true{
    let input = readLine()!
    var empty = 0
    if input == "0"{
        break
    }
    for i in input {
        if i == "1"{
            empty += 2
        } else if i == "0"{
            empty += 4
        } else {
            empty += 3
        }
    }
    empty += input.count + 1
    print(empty)
}
