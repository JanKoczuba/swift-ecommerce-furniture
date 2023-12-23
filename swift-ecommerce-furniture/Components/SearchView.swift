//
//  SearchView.swift
//  swift-ecommerce-furniture
//
//  Created by Jan Koczuba on 23/12/2023.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)

                TextField("Search For Furniture", text: $search)
                    .padding()
            }
            .background(Color("cSecondary"))
            .cornerRadius(12)

            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color("cPrimary"))
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
