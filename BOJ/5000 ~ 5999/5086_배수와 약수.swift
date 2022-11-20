while let input = readLine()?.split(separator: " ").map({ Int($0)! }) {
    if input == [0, 0] {
        break
    }
    let n1 = input[0], n2 = input[1]
    
    if n2 % n1 == 0 {
        print("factor")
        continue
    }
    
    if n1 % n2 == 0 {
        print("multiple")
        continue
    }
    
    print("neither")
}
