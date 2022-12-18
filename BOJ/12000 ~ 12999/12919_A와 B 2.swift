let s = readLine()!
let t = readLine()!
var isSuccess = false

func dfs(str: String) {
    if str.count == s.count {
        if str == s {
            isSuccess = true
            return
        }
        return
    }
    
    if str.last! == "A" {
        var newStr = str
        newStr.removeLast()
        dfs(str: newStr)
    }
    
    if str.first! == "B" {
        var newStr = str
        newStr.removeFirst()
        newStr = String(newStr.reversed())
        dfs(str: newStr)
    }
    
}

dfs(str: t)

isSuccess ? print(1) : print(0)
