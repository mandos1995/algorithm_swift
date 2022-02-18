for _ in 0..<Int(readLine()!)! {
    let floor = Int(readLine()!)!
    let room = Int(readLine()!)!
    var zeroFloor = [Int](repeating: 1, count: room)
    for i in 0..<room {
        zeroFloor[i] = i + 1
    }
    
    for _ in 1...floor {
        for j in 1..<room {
            zeroFloor[j] += zeroFloor[j - 1]
        }
    }
    print(zeroFloor[room - 1])
}
