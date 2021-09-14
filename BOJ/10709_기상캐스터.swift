let input = readLine()!.split(separator: " ").map { Int($0)! }
var cloud = ""
for _ in 0..<input[0] {
    let weather = readLine()!
    var count = 0
    for i in weather {
        if i == "c" {
            cloud = "c"
            count = 0
            print(0, terminator: " ")
        }
        
        if cloud == "c" && i == "." {
            count += 1
            print(count, terminator: " ")
        } else if i == "." {
            print(-1, terminator: " ")
        }
    }
    cloud = ""
    print()
}
