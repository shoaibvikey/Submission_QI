//
//  FamilyMembersCard.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct FamilyMembersCard: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "person.3.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.green)
                    .clipShape(Circle())

                Text("Total Family Members")
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text("4")
                    .font(.caption.bold())
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(Color.white.opacity(0.15))
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.gray.opacity(0.4), lineWidth: 1)
                    )
                
                Spacer()
                
                
            }
            
            HStack {
                VStack(spacing: 8) {
                    Text("Adults")
                        .font(.subheadline)
                        .foregroundColor(.green)
                    Text("2")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                }
                .frame(maxWidth: .infinity)
                
                Divider().frame(height: 40)
                
                VStack(spacing: 8) {
                    Text("Children's")
                        .font(.subheadline)
                        .foregroundColor(.green)
                    Text("1")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(15)

            Button("View") {}
                .fontWeight(.bold)
                .foregroundColor(.green)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Capsule()
                        .stroke(Color.gray.opacity(0.4), lineWidth: 2)
                )
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.08), radius: 10, y: 4)
        .padding(.horizontal)
    }
}
