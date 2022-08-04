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
            bookExchangeItem.image.resizable()
                .cornerRadius(10)
                .scaledToFit()
                .frame(width: 100, height: 150)
                .clipped()
                .listRowInsets(EdgeInsets())
            Text(bookExchangeItem.name).foregroundColor(.primary).font(.caption)
        }.frame(width: 100)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(bookExchangeItem: ModelData().books[2])
    }
}
