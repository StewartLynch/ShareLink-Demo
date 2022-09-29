//
// Created for ShareLink Demo
// by Stewart Lynch on 2022-09-26
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct Wine {
    var label: String
    var name: String
    var winery: String
    var region: String
    var flag: String
    var variety: String
    var price: Double
    var rating: Int
    
    var labelImage: Image {
        if let image = UIImage(named: label) {
            return Image(uiImage: image)
        } else {
            return Image("Label")
        }
        
    }
    
    var localPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value:price)) ?? "n/a"
    }
    
    var description: String {
"""
Winery: \(winery)
Variety: \(variety)
Name: \(name)
\(flag) \(region)
\(localPrice)
⭐️ \(rating)
"""
    }
    
    static var sample: Wine {
        Wine(label: "QwamQwmt.jpg",
             name: "Qwam Qwnt",
             winery: "Nk'mip",
             region: "Okanagan Valley",
             flag: "🇨🇦",
             variety: "Chardonnay",
             price: 28.99,
             rating: 9)
    }
    
}
