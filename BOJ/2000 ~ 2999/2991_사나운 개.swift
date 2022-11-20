let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2], d = input[3]
let peoples = readLine()!.split(separator: " ").map { Int($0)! }

for people in peoples {
    var attacked: Int = 0
    if 0 < people % (a + b) && people % (a + b) <= a {
        attacked += 1
    }
    if 0 < people % (c + d) && people % (c + d) <= c {
        attacked += 1
    }
    print(attacked)
}
