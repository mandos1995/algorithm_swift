let n = readLine()!
let intN = Int(n)!
if !n.contains("7")  {
    print(intN % 7 != 0 ? 0 : 1)
} else {
    print(intN % 7 != 0 ? 2 : 3)
}
