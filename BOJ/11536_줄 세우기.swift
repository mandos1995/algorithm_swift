let t = Int(readLine()!)!
var names = [String]()
for _ in 0..<t {
    names.append(readLine()!)
}
if names == names.sorted() {
    print("INCREASING")
} else if names == names.sorted(by: >) {
    print("DECREASING")
} else {
    print("NEITHER")
}
