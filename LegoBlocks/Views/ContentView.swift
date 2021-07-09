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
                List(Article.mocks) { article in
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        NewsCell(article: article)
                    }
                }
                .navigationTitle("News")
            }
            .tabItem { Label("News", systemImage: "newspaper") }
            .tag(1)
            
            NavigationView {
                List(Product.mocks) { product in
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/)  {
                        ProductCell(product: product)
                    }
                }
                .navigationTitle("Products")
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
