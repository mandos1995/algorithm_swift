var sum = 0
while let input = Int(readLine()!) {
    if input == -1 {
        print(sum)
        break
    } else {
        sum += input
    }
}
