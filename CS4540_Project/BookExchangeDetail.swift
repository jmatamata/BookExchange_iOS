//
//  BookExchangeDetail.swift
//  CS4540_Project
//
//  Created by Jorge Mata Jr on 8/2/22.
//

import SwiftUI

struct BookExchangeDetail: View {
    @EnvironmentObject var modelData: ModelData
    var bookExchangeItem: BookExchangeListItem
    
    var bookExchangeItemIndex: Int {
        modelData.books.firstIndex(where: {$0.id == bookExchangeItem.id})!
    }
    
    var body: some View {
        ScrollView {
            CircleImage(image: bookExchangeItem.image).padding(.bottom, -80).padding(.top, -70)
            
            VStack(alignment: .leading) {
              
              HStack {
                Text(bookExchangeItem.name)
                   .font(.title)
                  FavoriteButton(isSet: $modelData.books[bookExchangeItemIndex].isFavorite)
              }
              
              HStack {
                  Text(bookExchangeItem.price)
              }
              .font(.subheadline)
              .foregroundColor(.secondary)
              
              Divider()
              
              Text("About \(bookExchangeItem.name)")
                  .font(.title2)
              Text(bookExchangeItem.description)
          }
          .padding()
         }
       .navigationTitle(bookExchangeItem.name)
       .navigationBarTitleDisplayMode(.inline)
    }
}

struct BookExchangeDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        BookExchangeDetail(bookExchangeItem: modelData.books[0]).environmentObject(modelData)
    }
}
