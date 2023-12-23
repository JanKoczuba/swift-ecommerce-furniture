//
//  CartManager.swift
//  swift-ecommerce-furniture
//
//  Created by Jan Koczuba on 23/12/2023.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
