var i = 1
while let input = readLine()?.split(separator: " ").map ({ Int($0)! }), input != [0, 0] {
    let p = input[0], s = input[1]
    let diff = p - s
    print("Hole #\(i)")
    if diff == 1{
        print("Birdie.")
    } else if diff == -1{
        print("Bogey.")
    } else if diff == 2 && s == 1{
        print("Hole-in-one.")
    } else if diff == 2{
        print("Eagle.")
    } else if diff == 3{
        print("Double eagle.")
    } else if diff == 0{
        print("Par.")
    } else {
        print("Double Bogey.")
    }
    print()
    i += 1
}
