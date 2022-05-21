var array: [Int] = []
for _ in 0..<Int(readLine()!)! {
    array.append(Int(readLine()!)!)
}
for arr in array.sorted(by: <) {
    print(arr)
}
