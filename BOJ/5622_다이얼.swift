let dialsNum = [3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,8,9,9,9,10,10,10,10]
var dials = readLine()!
dials = dials.uppercased()
var dialsSum = 0
for dial in dials {
    dialsSum += dialsNum[Int(dial.asciiValue!) - 65]
}
print(dialsSum)
