var idx = 1
while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let o = input[0]
    var w = input[1]
    var isDie = false
    if o == 0 && w == 0 {
        break
    }
    
    while true {
        let input = readLine()!.split(separator: " ").map { String($0) }
        if input[0] == "#" && input[1] == "0" {
            break
        }
        
        let step = input[0]
        let n = Int(input[1]) ?? 0
        w = step == "E" ? w - n : w + n
        if !isDie {
            isDie = w <= 0
        }
    }
    if isDie {
        print("\(idx) RIP")
    } else if w > (o / 2) && w < (o * 2) {
        print("\(idx) :-)")
    } else {
        print("\(idx) :-(")
    }
    idx += 1
}
