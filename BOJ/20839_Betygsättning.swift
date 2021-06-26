let input = readLine()!.split(separator: " ").map { Double($0)! }
let input2 = readLine()!.split(separator: " ").map { Double($0)! }
let a = input[0]
let c = input[1]
let e = input[2]
let a_score = input2[0]
let c_score = input2[1]
let e_score = input2[2]

if a <= a_score && c <= c_score && e <= e_score{
    print("A")
} else if c <= c_score && e <= e_score && a / 2.0 <= a_score {
    print("B")
} else if c <= c_score && e <= e_score{
    print("C")
} else if c / 2.0 <= c_score && e / 2.0 <= e_score{
    print("D")
} else {
    print("E")
}
