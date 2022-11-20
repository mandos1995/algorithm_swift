let string = readLine()!

for i in string {
    if String(i) >= "a" && String(i) <= "z" {
        print(String(i).uppercased(),terminator: "")
    } else {
        print(String(i).lowercased(),terminator: "")
    }
}
