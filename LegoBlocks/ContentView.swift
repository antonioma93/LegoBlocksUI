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
                        NewCell()
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
        NewCell()
            .previewLayout(.sizeThatFits)
        ContentView()
    }
}

struct NewCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "photo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .frame(width: 44, height: 44)
                VStack(alignment: .leading) {
                    Text("Text")
                        .font(.title2)
                    .bold()
                    Text("Placeholder")
                        .foregroundColor(Color.gray)
                }
            }
            Text("Detail Text")
            Image(systemName: "photo")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight: 240)
                .clipped()
        }
    }
}
