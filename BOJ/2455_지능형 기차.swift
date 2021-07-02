var people = 0
var peopleSave = [0]
for i in 0..<4{
    people = peopleSave[i]
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let trainOff = input[0]
    let trainOn = input[1]
    people = people - trainOff
    people = people + trainOn
    peopleSave.append(people)
}
print(peopleSave.max()!)
