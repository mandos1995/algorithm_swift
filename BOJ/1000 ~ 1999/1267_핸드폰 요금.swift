let n = readLine()!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var m_pay = 0
var y_pay = 0
for i in 0..<input.count{
    y_pay += ((input[i] / 30) + 1) * 10
    m_pay += ((input[i] / 60) + 1) * 15
}
if m_pay < y_pay {
    print("M",m_pay)
} else if y_pay < m_pay {
    print("Y", y_pay)
} else {
    print("Y M",y_pay)
}
