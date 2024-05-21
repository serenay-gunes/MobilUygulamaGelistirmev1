//
//  Product.swift
//  RedBullApp
//
//  Created by Serenay Güneş on 27.04.2024.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var branch: String
}

var personList = [Person(name: "Zehra Güneş", image: "atlet1", branch: "voleybol"),
                  Person(name: "Roger Federer", image: "atlet2", branch: "tenis"),
                  Person(name: "Rafael Nadal", image: "atlet3", branch: "tenis"),
                  Person(name: "Lionel Messi", image: "atlet4", branch: "futbol"),]


