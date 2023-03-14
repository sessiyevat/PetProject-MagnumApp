//
//  ProductList.swift
//  Magnum
//
//  Created by Tommy on 3/11/23.
//

import Foundation

class ProductList {
    
    private(set) var products: [Product] = [
        Product(name: "СМЕТАНА «ПРОСТОКВАШИНО» 20% 300 Г", price: "839 тг", image: "dairy1", category: "Dairy Products"),
        Product(name: "ТВОРОГ «FOODMASTER» ДОМАШНИЙ 9% 200 Г", price: "477 тг", image: "dairy2", category: "Dairy Products"),
        Product(name: "МОЛОКО «ПЕТРОПАВЛОВСКОЕ» 2,5% 900 МЛ", price: "433 тг", image: "dairy3", category: "Dairy Products"),
        Product(name: "МОЛОКО «ADAL» ПРОДУКТЫ НАШИХ ФЕРМ 3,2% 925 МЛ", price: "509 тг", image: "dairy4", category: "Dairy Products"),
        
        Product(name: "ПЕЧЕНЬЕ «MILKA» В АССОРТИМЕНТЕ", price: "759 тг", image: "sweets1", category: "Sweets"),
        Product(name: "ШОКОЛАД «ALPEN GOLD» В АССОРТИМЕНТЕ", price: "339 тг", image: "sweets2", category: "Sweets"),
        Product(name: "ПЕЧЕНЬЕ «LOTTE» CHOCOLATE PIE", price: "899 тг", image: "sweets3", category: "Sweets"),
        Product(name: "БАТОНЧИК «ULKER» LAVIVA С МОЛОЧНЫМ ШОКОЛАДОМ", price: "159 тг", image: "sweets4", category: "Sweets"),
        
        Product(name: "ПЕЧЕНЬЕ «KONTI»", price: "2499 тг", image: "cookie1", category: "Cookies"),
        Product(name: "КОНФЕТЫ «РОТ ФРОНТ» ПТИЧЬЕ МОЛОКО", price: "3499 тг", image: "cookie2", category: "Cookies"),
        Product(name: "МАРМЕЛАД «БОНПАРИ»", price: "199 тг", image: "cookie3", category: "Cookies"),
        
        Product(name: "НАПИТОК «PEPSI» 2 Л", price: "539 тг", image: "drink1", category: "Soft Drinks"),
        Product(name: "ВОДА «БОРЖОМИ» МИНЕРАЛЬНАЯ ГАЗ 500 МЛ", price: "489 тг", image: "drink2", category: "Soft Drinks"),
        
        Product(name: "ГРУДИНКА ГОВЯДИНА РАЗРУБ ОХЛАЖДЕННАЯ КГ", price: "2400 тг", image: "meat1", category: "Meat"),
        Product(name: "ОКОРОЧКА ЦЫПЛЕНКА БРОЙЛЕРА «АЛЕЛЬ»", price: "1075 тг", image: "meat2", category: "Meat"),
        
        Product(name: "ФАСОЛЬ «HORTEX» СТРУЧКОВАЯ", price: "759 тг", image: "vegetables1", category: "Fruits and Vegetables"),
    ]
}
