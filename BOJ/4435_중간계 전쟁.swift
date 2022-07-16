let n = Int(readLine()!)!

for i in 1...n {
    let gandalf = readLine()!.split(separator: " ").map { Int($0)! }
    let sauron = readLine()!.split(separator: " ").map { Int($0)! }
    let gandalfScore = gandalf[0] + (gandalf[1] * 2) + (gandalf[2] * 3) + (gandalf[3] * 3) + (gandalf[4] * 4) + (gandalf[5] * 10)
    let sauronScore = sauron[0] + (sauron[1] * 2) + (sauron[2] * 2) + (sauron[3] * 2) + (sauron[4] * 3) + (sauron[5] * 5) + (sauron[6] * 10)
    print("Battle \(i): ", terminator: "")
    if gandalfScore > sauronScore {
        print("Good triumphs over Evil")
    } else if sauronScore > gandalfScore {
        print("Evil eradicates all trace of Good")
    } else {
        print("No victor on this battle field")
    }
}
