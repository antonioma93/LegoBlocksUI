//
//  ContentView.swift
//  LegoBlocks
//
//  Created by Massa Antonio on 01/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            NavigationView {
                List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        NewsCell(image: Image(systemName: "photo"),
                                 text: Text("Text"),
                                 detailText: Text("Detail Text"),
                                 tertiaryText: Text("Tertiary Text"),
                                 largeImage: Image(systemName: "photo"))
                    }
                }
                .navigationTitle("News")
            }
            .tabItem { Label("News", systemImage: "newspaper") }
            .tag(1)
            
            NavigationView {
                Text("Tab Content 2")
                    .navigationTitle("Chat")
            }
            .tabItem { Label("Products", systemImage: "cart") }
            .tag(2)
            
            NavigationView {
                Text("Tab Content 3")
                    .navigationTitle("Chat")
            }
            .tabItem { Label("Chat", systemImage: "message.circle") }
            .tag(3)
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
