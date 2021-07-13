while let input = readLine()?.split(separator: " ").map({ Int($0)! }){
    var animal = input.sorted()
    if animal[2] - animal[1] > animal[1] - animal[0] {
        print(animal[2] - animal[1] - 1)
    } else {
        print(animal[1] - animal[0] - 1)
    }
    animal.removeAll()
}
