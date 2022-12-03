func solution(_ s:String) -> String {
    var newString = ""
    var count = 0
    for i in s {
        if i == " " {
            count = 0
            newString += " "
            continue
        }
        newString = count % 2 == 0 ? newString + String(i).uppercased() : newString + String(i).lowercased()
        count += 1
    }
    return newString
}
