let n = Int(readLine()!)!
var students: [Int] = []
let orders = readLine()!.split(separator: " ").map { Int($0)! }

for (index, order) in orders.enumerated() {
    students.append(index + 1)
    students.insert(index + 1, at: order)
    students.removeLast()
}
students.reversed().forEach { print($0, terminator: " ") }
