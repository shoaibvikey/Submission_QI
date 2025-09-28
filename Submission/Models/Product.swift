//
//  Product.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let expiryDate: String?
}
