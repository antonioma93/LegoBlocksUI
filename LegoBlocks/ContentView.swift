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
                Text("Text")
                    .font(.title2)
                    .bold()
                    .navigationTitle("News")
            }
            .tabItem { Text("News") }.tag(1)
            
            NavigationView {
                Text("Tab Content 2")
                    .navigationTitle("Chat")
            }
            .tabItem { Text("Products") }.tag(2)
            
            NavigationView {
                Text("Tab Content 3")
                    .navigationTitle("Chat")
            }
            .tabItem { Text("Chat") }.tag(3)
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
