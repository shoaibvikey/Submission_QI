//
//  ExpiringSoonSection.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct ExpiringSoonSection: View {
    let products: [Product]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Expiring Soon")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Text("Total Products")
                        .fontWeight(.semibold)
                    
                    Text("\(products.count)")
                        .font(.caption.bold())
                        .padding(.horizontal, 8)
                        .padding(.vertical, 3)
                        .overlay(Capsule().stroke(Color.white, lineWidth: 1))
                    
                    Spacer()
                    
                    NavigationLink("View all") {
                        ProductListView()
                    }
                    .font(.subheadline)
                    .bold()
                }
                .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    ForEach(products) { product in
                        HStack(spacing: 12) {
                            Image(product.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .cornerRadius(12)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text(product.name)
                                    .foregroundStyle(Color.white)
                                    .font(.headline)
                                
                                if let expiryDate = product.expiryDate {
                                    Text("Expiry date : \(expiryDate)")
                                        .font(.caption)
                                        .foregroundStyle(Color.white)
                                        .opacity(0.8)
                                }
                                
                                Button("View details") {}
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 6)
                                    .padding(.horizontal, 10)
                                    .overlay(
                                        Capsule().stroke(Color.white, lineWidth: 1)
                                    )
                            }
                        }
                        .frame(height: 100)
                    }
                }
            }
            .padding()
            .background(Color.green)
            .cornerRadius(20)
        }
        .padding(.horizontal)
    }
}
