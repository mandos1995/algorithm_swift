while true{
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    let a = Int(input[0])
    let b = Int(input[1])
    if a == 0 && b == 0{
        break
    }
    else{
        print(a + b)
    }
}
