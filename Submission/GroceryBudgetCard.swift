//
//  GroceryBudgetCard.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct GroceryBudgetCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Grocery budget")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.horizontal)

            HStack(spacing: 15) {
                Image(systemName: "wallet.pass")
                    .font(.title2)
                    .foregroundColor(.green)
                    .padding(12)
                    .background(Color.white)
                    .clipShape(Circle())

                VStack(alignment: .leading) {
                    Text("€39")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Your monthly budget")
                        .font(.caption)
                }
                .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.white.opacity(0.25))
                    .clipShape(Circle())
            }
            .padding(.horizontal)
            .frame(height: 80)
            .background(Color.green)
            .cornerRadius(25)
        }
        .padding(.horizontal)
    }
}
