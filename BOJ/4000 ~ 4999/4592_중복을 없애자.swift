while true {
    var array = readLine()!.split(separator: " ").map { String($0) }
    if array == ["0"] {
        break
    }
    array.removeFirst()
    var answer: [String] = []
    for arr in array {
        if answer.isEmpty {
            answer.append(arr)
            continue
        }
        if answer.last! != arr {
            answer.append(arr)
        }
    }
    answer.append("$")
    
    print(answer.joined(separator: " "))
}
