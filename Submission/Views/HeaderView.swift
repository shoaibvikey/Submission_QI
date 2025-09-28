//
//  HeaderView.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "barcode.viewfinder")
                .font(.title3)
                .foregroundColor(.white)
                .padding(8)
                .background(Color.green)
                .clipShape(Circle())
            Text("Grocery tracker")
                .font(.headline)
                .fontWeight(.bold)
            
            Spacer()
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "crown.fill")
                    Text("Subscribe")
                }
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color.green)
                .cornerRadius(12)
            }
        }
        .padding(.horizontal)
    }
}
