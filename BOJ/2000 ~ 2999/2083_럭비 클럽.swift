while true {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let name = input[0], age = Int(input[1])!, weight = Int(input[2])!
    
    if name == "#" && age == 0 && weight == 0 {
        break
    }
    if age > 17 || weight >= 80 {
        print("\(name) Senior")
    } else {
        print("\(name) Junior")
    }
    
}
