import Foundation
let n = Int(readLine()!)!
var students: [Double] = []
var seven: [Double] = []
for _ in 0..<n {
    students.append(Double(readLine()!)!)
}
for _ in 0..<7 {
    seven.append(students.remove(at: students.firstIndex(of: students.min()!)!))
}
for i in 0..<7 {
    print(String(format: "%.3f", seven[i]))
}
