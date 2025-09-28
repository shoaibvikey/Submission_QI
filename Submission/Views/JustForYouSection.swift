//
//  JustForYouSection.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct JustForYouSection: View {
    private let offers = [1, 2, 3]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(offers, id: \.self) { _ in
                    justForYouCard
                }
            }
            .padding(.horizontal)
        }
    }
    
    var justForYouCard: some View {
        ZStack {
            HStack(spacing: 0) {
                Color.green
            }

            HStack(spacing: 15) {
                Image("flame")
                    .resizable()
                    .foregroundStyle(Color.yellow)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                
                VStack(alignment: .leading) {
                    Text("Just for you !")
                        .font(.title3)
                        .fontWeight(.bold)
                    Text("Claim your exclusive offer today!")
                        .font(.caption)
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            .padding(.horizontal, 5)
        }
        .frame(width: 340, height: 130)
        .cornerRadius(20)
    }
}
