//: Playground - noun: a place where people can play

import UIKit

func createShoeLink(modelCode: String, size: Double) -> String {
    let baseSize: Double = 540
    let formattedSize = Int(baseSize + (20 * (size - 5.5)))
    let newModelCode = modelCode.uppercased()
    let createdLink = "http://www.adidas.com/us/\(newModelCode).html?forceSelSize=\(newModelCode)_\(formattedSize)"
    
    return createdLink
}

let dprShoeLink = createShoeLink(modelCode: "CG2993", size: 12)

var request = URLRequest(url: URL(string: dprShoeLink)!)
request.httpMethod = "GET"
let session = URLSession.shared

session.dataTask(with: request) { data, response, err in
    print("Entered the completionHandler")
}.resume()

print(dprShoeLink)

