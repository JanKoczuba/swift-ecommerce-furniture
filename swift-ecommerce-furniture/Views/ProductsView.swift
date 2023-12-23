//
//  ProductsView.swift
//  swift-ecommerce-furniture
//
//  Created by Jan Koczuba on 23/12/2023.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager

    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCardView(product: product)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ProductsView()
        .environmentObject(CartManager())
}
