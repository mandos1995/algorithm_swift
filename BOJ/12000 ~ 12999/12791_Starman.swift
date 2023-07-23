let dict = [1967: ["DavidBowie"],
1969: ["SpaceOddity"],
1970: ["TheManWhoSoldTheWorld"],
1971: ["HunkyDory"],
1972: ["TheRiseAndFallOfZiggyStardustAndTheSpidersFromMars"],
1973: ["AladdinSane", "PinUps"],
1974: ["DiamondDogs"],
1975: ["YoungAmericans"],
1976: ["StationToStation"],
1977: ["Low", "Heroes"],
1979: ["Lodger"],
1980: ["ScaryMonstersAndSuperCreeps"],
1983: ["LetsDance"],
1984: ["Tonight"],
1987: ["NeverLetMeDown"],
1993: ["BlackTieWhiteNoise"],
1995: ["1.Outside"],
1997: ["Earthling"],
1999: ["Hours"],
2002: ["Heathen"],
2003: ["Reality"],
2013: ["TheNextDay"],
2016: ["BlackStar"]]

let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let s = input[0], e = input[1]
    var count = 0
    for i in s...e {
        count += dict[i, default: []].count
    }
    print(count)
    if count == 0 {
        continue
    }
    for i in s...e {
        if let name = dict[i] {
            name.forEach {
                print(i, $0)
            }
        }
    }
}
