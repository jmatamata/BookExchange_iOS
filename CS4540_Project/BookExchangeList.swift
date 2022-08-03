//
//  BookExchangeList.swift
//  CS4540_TestProject
//
//  Created by Jorge Mata Jr on 6/17/22.
//

import SwiftUI

struct BookExchangeList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filteredBookExchangeList: [BookExchangeListItem] {
        modelData.books.filter {b in
            (!showFavoriteOnly || b.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
                    List {
                        Toggle(isOn: $showFavoriteOnly) {
                            Text("Favorite Only")
                        }
                        
                        ForEach(filteredBookExchangeList) { b in
                       NavigationLink {
                           BookExchangeDetail(bookExchangeItem: b)
                       } label: {
                           BookExchangeRow(bookExchangeItem: b)
                       }
                    }
                   }
                   .navigationTitle("Book Exchange")
                }
    }
}

struct BookExchangeList_Previews: PreviewProvider {
    static var previews: some View {
        BookExchangeList().environmentObject(ModelData())
    }
}
