let input = readLine()!.split(separator: " ").map{ Int($0)! }
var snakeBird = input[1]
var fruit = readLine()!.split(separator: " ").map { Int($0)! }
fruit.sort()
var i = 0
while true {
    if i == fruit.count{
        break
    }
    if snakeBird >= fruit[i] {
        snakeBird += 1
        i += 1
    } else {
        break
    }
    
}
print(snakeBird)
