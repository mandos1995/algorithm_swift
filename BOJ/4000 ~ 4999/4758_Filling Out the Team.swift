while let input = readLine()?.split(separator: " ").map({ Double($0)! }), input != [0, 0, 0] {
    let s = input[0], w = input[1], t = input[2]
    var isNoposition = false
    if s <= 4.5 && w >= 150 && t >= 200 {
        print("Wide Receiver", terminator: " ")
        isNoposition = true
    }
    if s <= 6.0 && w >= 300 && t >= 500 {
        print("Lineman", terminator: " ")
        isNoposition = true
    }
    if s <= 5.0 && w >= 200 && t >= 300 {
        print("Quarterback", terminator: " ")
        isNoposition = true
    }
    if !isNoposition {
        print("No positions")
    } else {
        print()
    }   
}
