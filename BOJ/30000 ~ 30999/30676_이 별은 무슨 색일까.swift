let n = Int(readLine()!)!
switch n {
case 620...780: print("Red")
case 590..<620: print("Orange")
case 570..<590: print("Yellow")
case 495..<570: print("Green")
case 450..<495: print("Blue")
case 425..<450: print("Indigo")
default: print("Violet")
}