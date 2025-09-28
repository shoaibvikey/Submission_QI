//
//  HomeView.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct HomeView: View {

    let expiredProducts: [Product] = [
        Product(name: "Onion bag", imageName: "onion", expiryDate: nil),
        Product(name: "Tomato", imageName: "tomato", expiryDate: nil),
        Product(name: "Carrot", imageName: "carrot", expiryDate: nil),
        Product(name: "Onion bag", imageName: "onion", expiryDate: nil)
    ]
    
    let expiringSoonProducts: [Product] = [
        Product(name: "Onion bag", imageName: "onion", expiryDate: "07/05/2024"),
        Product(name: "Onion bag", imageName: "onion", expiryDate: "02/05/2024"),
        Product(name: "Onion bag", imageName: "onion", expiryDate: "02/05/2024")
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    headerView
                    justForYouCard
                    groceryBudgetCard
                    expiredProductsSection
                    expiringSoonSection
                    familyMembersCard
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
    
    var headerView: some View {
        HStack {
            Image(systemName: "barcode.viewfinder")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(8)
                    .background(Color.green)
                    .clipShape(Circle())
            Text("Grocery tracker")
                .font(.headline)
                .bold()
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
                    .padding(.vertical, 6)
                    .background(Color.green.opacity(0.8))
                    .cornerRadius(12)
            }
        }
    }
    
    var justForYouCard: some View {
        HStack {
            Image("garlic")
                .resizable()
                .frame(width: 60, height: 60)
            Text("Just for you!")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .background(Color.green)
        .cornerRadius(20)
    }
    
    var groceryBudgetCard: some View {
        VStack(alignment: .leading, spacing: 10) { // Added a VStack for the title and the card
            Text("Grocery budget") // The title you requested
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.horizontal, 5) // Added horizontal padding to align with the card

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
    }
    
    var expiredProductsSection: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Expired products")
                    .font(.title2)
                    .bold()
                Spacer()
                NavigationLink(destination: ProductListView()) {
                    Text("View all")
                        .foregroundColor(.green)
                }
            }
            Text("Total Products: \(expiredProducts.count)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(expiredProducts) { product in
                        VStack {
                            Image(product.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            Text(product.name)
                                .font(.caption)
                        }
                    }
                }
            }
        }
    }
    
    var expiringSoonSection: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Expiring Soon")
                    .font(.title2)
                    .bold()
                Spacer()
                NavigationLink(destination: ProductListView()) {
                    Text("View all")
                        .foregroundColor(.green)
                }
            }
            Text("Total Products: \(expiringSoonProducts.count)")
                .font(.subheadline)
                .foregroundColor(.gray)

            VStack(spacing: 10) {
                ForEach(expiringSoonProducts) { product in
                    HStack {
                        Image(product.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text(product.name)
                                .font(.headline)
                            if let expiryDate = product.expiryDate {
                                Text("Expiry: \(expiryDate)")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        Spacer()
                        
                        Button("View details") {}
                        .font(.caption)
                        .foregroundColor(.green)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                }
            }
        }
    }
    
    var familyMembersCard: some View {
        VStack {
             HStack {
                Text("Total Family Members")
                    .font(.headline)
                Spacer()
                Image(systemName: "person.2.fill")
                    .foregroundColor(.green)
            }
            .padding([.horizontal, .top])

            HStack {
                VStack {
                    Text("Adults")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("2")
                        .font(.title)
                        .bold()
                }
                .frame(maxWidth: .infinity)
                
                Divider().frame(height: 40)
                
                VStack {
                    Text("Children's")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("1")
                        .font(.title)
                        .bold()
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.vertical)
            
            Button("View") { }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.green)
            .cornerRadius(12)
            .padding()
        }
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}
