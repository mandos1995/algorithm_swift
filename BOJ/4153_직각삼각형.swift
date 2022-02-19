while true {
    let triangle = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
    if triangle == [0, 0, 0] {
        break
    }
    if triangle[0] * triangle[0] == triangle[1] * triangle[1] + triangle[2] * triangle[2] {
        print("right")
    } else {
        print("wrong")
    }
}
