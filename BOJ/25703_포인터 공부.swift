let n = Int(readLine()!)!
print("int a;")
print("int *ptr = &a;")
if n > 1 {
    print("int **ptr2 = &ptr;")
}
if n > 2 {
    for i in 3...n {
        print("int \(String(repeating: "*", count: i))ptr\(i) = &ptr\(i - 1);")
    }
}
