while let input = readLine()?.split(separator: " ").map({ Double($0)! }) {
    if input.contains(0) {
        print("AXIS")
        if input == [0, 0] {
            break
        }
        continue
    }
    
    let x = input[0], y = input[1]
    
    if x < 0 && y < 0 {
        print("Q3")
    } else if x < 0 {
        print("Q2")
    } else if x > 0 && y > 0 {
        print("Q1")
    } else {
        print("Q4")
    }
}
