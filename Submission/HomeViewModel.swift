//
//  HomeViewModel.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var expiredProducts: [Product] = []
    @Published var expiringSoonProducts: [Product] = []
    
    init() {
        fetchProducts()
    }
    
    func fetchProducts() {
        
        self.expiredProducts = [
            Product(name: "Onion bag", imageName: "onion", expiryDate: nil),
            Product(name: "Tomato", imageName: "tomato", expiryDate: nil),
            Product(name: "Carrot", imageName: "carrot", expiryDate: nil),
            Product(name: "Onion bag", imageName: "onion", expiryDate: nil)
        ]
        
        self.expiringSoonProducts = [
            Product(name: "Onion bag", imageName: "onion", expiryDate: "07/05/2024"),
            Product(name: "Onion bag", imageName: "onion", expiryDate: "02/05/2024"),
            Product(name: "Onion bag", imageName: "onion", expiryDate: "02/05/2024")
        ]
    }
}

