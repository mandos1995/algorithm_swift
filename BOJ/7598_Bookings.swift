while true {
    let input = readLine()!.split(separator: " ")
    if input == ["#", "0"] {
        break
    }
    var name = input[0], base = Int(input[1])!
    while true {
        let input = readLine()!.split(separator: " ")
        
        if input == ["X", "0"] {
            break
        }
        let option = input[0], cnt = Int(input[1])!
        if option == "B" {
            if base + cnt > 68 {
                continue
            } else {
                base += cnt
            }
        } else {
            if base - cnt < 0 {
                continue
            } else {
                base -= cnt
            }
        }
        
    }
    print(name, base)
}
