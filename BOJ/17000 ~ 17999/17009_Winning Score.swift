let scoreA3 = Int(readLine()!)!
let scoreA2 = Int(readLine()!)!
let scoreA1 = Int(readLine()!)!
let scoreB3 = Int(readLine()!)!
let scoreB2 = Int(readLine()!)!
let scoreB1 = Int(readLine()!)!

if scoreA3 * 3 + scoreA2 * 2 + scoreA1 > scoreB3 * 3 + scoreB2 * 2 + scoreB1{
    print("A")
} else if scoreA3 * 3 + scoreA2 * 2 + scoreA1 < scoreB3 * 3 + scoreB2 * 2 + scoreB1{
    print("B")
} else {
    print("T")
}
