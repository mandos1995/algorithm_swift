import Foundation
while let line = readLine(), line != "EOI" {
    print(line.lowercased().contains("nemo") ? "Found" : "Missing")
}
