let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

if a == 60 && b == 60 && c == 60{
    print("Equilateral")
} else if a + b + c == 180 && ((a == b) || (a == c) || (b == c)){
    print("Isosceles")
} else if a + b + c == 180 {
    print("Scalene")
} else {
    print("Error")
}
