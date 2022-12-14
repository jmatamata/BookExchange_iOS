//
//  CategoryRow.swift
//  CS4540_Project
//
//  Created by Jorge Mata Jr on 8/3/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [BookExchangeListItem]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
             HStack(alignment: .top, spacing: 0) {
                ForEach(items) { b in
                    NavigationLink {
                        BookExchangeDetail(bookExchangeItem: b)
                    } label: {
                        CategoryItem(bookExchangeItem: b)
                    }
                }
             }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var books = ModelData().books
    static var previews: some View {
        CategoryRow(
            categoryName: books[2].category.rawValue,
            items: Array(books.prefix(3))
        )
    }
}
