//
//  BookExchangeListItem.swift
//  CS4540_TestProject
//
//  Created by Jorge Mata Jr on 6/17/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct BookExchangeListItem: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var price: String
    var description: String
    var isFeatured: Bool
    var isFavorite: Bool
    private var imageName: String
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case Novel = "Novel"
        case Math = "Math"
        case Science = "Science"
    }
    
    var image: Image {
        Image(imageName)
    }
}
