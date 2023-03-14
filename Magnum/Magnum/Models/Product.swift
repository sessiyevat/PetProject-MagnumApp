//
//  Product.swift
//  Magnum
//
//  Created by Tommy on 3/11/23.
//

import Foundation

class Product {
    let name: String
    let price: String
    let image: String
    let category: String
    
    init(name: String, price: String, image: String, category: String) {
        self.name = name
        self.price = price
        self.image = image
        self.category = category
    }
}
