//
//  HomeView.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    HeaderView()
                    
                    JustForYouSection()
                    
                    GroceryBudgetCard()
                    
                    ExpiredProductsSection(products: viewModel.expiredProducts)
                    
                    ExpiringSoonSection(products: viewModel.expiringSoonProducts)
                    
                    FamilyMembersCard()
                }
                .padding(.vertical)
            }
            .background(Color(.systemGray6).edgesIgnoringSafeArea(.all))
            .navigationBarHidden(true)
        }
    }
}
