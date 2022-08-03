//
//  ContentView.swift
//  CS4540_Project
//
//  Created by Jorge Mata Jr on 7/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
        
        
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            BookExchangeList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
