//
//  BookExchangeRow.swift
//  CS4540_TestProject
//
//  Created by Jorge Mata Jr on 6/17/22.
//

import SwiftUI

struct BookExchangeRow: View {
    var bookExchangeItem: BookExchangeListItem
    
    var body: some View {
        HStack {
            bookExchangeItem.image
            Text(bookExchangeItem.name)
            Spacer()
            Text(bookExchangeItem.price)
            if bookExchangeItem.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct BookExchangeRow_Previews: PreviewProvider {
    static var books = ModelData().books
    static var previews: some View {
        BookExchangeRow(bookExchangeItem: books[0])
    }
}
