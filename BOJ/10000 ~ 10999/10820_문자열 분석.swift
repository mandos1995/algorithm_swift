while let string = readLine() {
    var empty = 0
    var down = 0
    var up = 0
    var num = 0
    
    for i in string {
        if String(i) == " " {
            empty += 1
        } else if String(i) >= "a" && String(i) <= "z"{
            down += 1
        } else if String(i) >= "A" && String(i) <= "Z"{
            up += 1
        } else {
            num += 1
        }
    }
    print(down, up, num, empty)
}
