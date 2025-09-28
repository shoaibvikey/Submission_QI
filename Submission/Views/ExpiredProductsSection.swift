//
//  ExpiredProductsSection.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct ExpiredProductsSection: View {
    let products: [Product]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Expired products")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.horizontal)

            VStack(spacing: 15) {
                HStack {
                    Text("Total Products")
                        .bold()
                    Text("\(products.count)")
                        .font(.caption.bold())
                        .padding(.horizontal, 8)
                        .padding(.vertical, 3)
                        .overlay(Capsule().stroke(Color.gray.opacity(0.5), lineWidth: 1))
                    
                    Spacer()
                    
                    NavigationLink("View all") {
                        ProductListView()
                    }
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(products) { product in
                            VStack(spacing: 8) {
                                Image(product.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                
                                Text(product.name)
                                    .font(.caption)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .padding(.vertical)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.08), radius: 10, y: 4)
        }
        .padding(.horizontal)
    }
}
