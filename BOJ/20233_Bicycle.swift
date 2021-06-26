let a = Int(readLine()!)!
let x = Int(readLine()!)!
let b = Int(readLine()!)!
let y = Int(readLine()!)!
let time = Int(readLine()!)!
var a_pay = 0
var b_pay = 0

if time <= 30{
    a_pay = a
} else {
    a_pay = a + ((time - 30) * x) * 21
}

if time <= 45 {
    b_pay = b
} else {
    b_pay = b + ((time - 45) * y) * 21
}
print(a_pay, b_pay)
