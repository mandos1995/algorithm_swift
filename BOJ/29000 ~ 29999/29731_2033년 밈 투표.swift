let set = Set(["Never gonna give you up",
"Never gonna let you down",
"Never gonna run around and desert you",
"Never gonna make you cry",
"Never gonna say goodbye",
"Never gonna tell a lie and hurt you",
"Never gonna stop"])

let n = Int(readLine()!)!
var answer = "No"
for _ in 0..<n {
    if !set.contains(readLine()!) {
        answer = "Yes"
    }
}
print(answer)
