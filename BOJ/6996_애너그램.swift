let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let new = input[0].sorted()
    let new2 = input[1].sorted()
    
    if new == new2 {
        print("\(input[0]) & \(input[1]) are anagrams.")
    } else {
        print("\(input[0]) & \(input[1]) are NOT anagrams.")
    }
}
