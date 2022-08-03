//
//  CategoryItem.swift
//  CS4540_Project
//
//  Created by Jorge Mata Jr on 8/3/22.
//

import SwiftUI

struct CategoryItem: View {
    var bookExchangeItem: BookExchangeListItem
    
    var body: some View {
        VStack(alignment: .leading) {
            bookExchangeItem.image.cornerRadius(10)
            Text(bookExchangeItem.name).foregroundColor(.primary).font(.caption)
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(bookExchangeItem: ModelData().books[2])
    }
}
