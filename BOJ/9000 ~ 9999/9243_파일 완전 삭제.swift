let isEven = Int(readLine()!)! % 2 == 0
let before = String(readLine()!.map { isEven ? $0 : $0 == "0" ? "1" : "0" })
let after = readLine()!
before == after ? print("Deletion succeeded") : print("Deletion failed")
