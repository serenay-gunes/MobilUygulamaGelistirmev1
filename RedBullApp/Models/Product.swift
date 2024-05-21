//
//  Product.swift
//  RedBullApp
//
//  Created by Serenay Güneş on 27.04.2024.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Mor Redbull", image: "urun2", price: 35),
                   Product(name: "Sarı Redbull", image: "urun1", price: 35),
                   Product(name: "Sarı Redbull", image: "urun1", price: 35),
                   Product(name: "Sarı Redbull", image: "urun1", price: 35),]

