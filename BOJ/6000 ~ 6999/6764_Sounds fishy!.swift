var fish = [Int]()
for _ in 0..<4{
    fish.append(Int(readLine()!)!)
}
if fish[0] < fish[1] && fish[1] < fish[2] && fish[2] < fish [3]{
    print("Fish Rising")
} else if fish[0] > fish[1] && fish[1] > fish[2] && fish[2] > fish [3]{
    print("Fish Diving")
} else if fish[0] == fish[1] && fish[1] == fish[2] && fish[2] == fish [3]{
    print("Fish At Constant Depth")
} else {
    print("No Fish")
}
