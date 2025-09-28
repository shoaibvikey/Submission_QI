//
//  ProductListView.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct ProductListView: View {
    let products: [Product] = [
        Product(name: "Onion bag", imageName: "onion", expiryDate: "07/05/2024"),
        Product(name: "Tomato", imageName: "tomato", expiryDate: "06/05/2024"),
        Product(name: "Carrot", imageName: "carrot", expiryDate: "09/05/2024"),
        Product(name: "Lettuce", imageName: "lettuce", expiryDate: "04/05/2024"),
        Product(name: "Bell Pepper", imageName: "pepper", expiryDate: "11/05/2024")
    ]
    
    var body: some View {
        List(products) { product in
            HStack(spacing: 15) {
                Image(product.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())

                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.headline)
                    if let expiryDate = product.expiryDate {
                        Text("Expiry: \(expiryDate)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(.vertical, 8)
        }
        .navigationTitle("All Products")
        .listStyle(PlainListStyle())
    }
}
