readLine()!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var set_type = Array(Set(input))
set_type.sort()

for i in 0..<set_type.count {
    print(set_type[i], terminator: " ")
}
