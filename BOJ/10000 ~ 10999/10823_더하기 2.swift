var str = ""
while let string = readLine() {
    str += string
}
print(str.split(separator: ",").compactMap { Int($0)! }.reduce(0, +))
