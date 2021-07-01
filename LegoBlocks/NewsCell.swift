//
//  NewCell.swift
//  LegoBlocks
//
//  Created by Massa Antonio on 01/07/21.
//

import SwiftUI

struct NewsCell: View {
    let image: Image
    let text: Text
    let detailText: Text
    let tertiaryText: Text
    let largeImage: Image
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                image
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .frame(width: 44, height: 44)
                VStack(alignment: .leading) {
                    text
                        .font(.title2)
                    .bold()
                    tertiaryText
                        .foregroundColor(Color.gray)
                }
            }
            detailText
            largeImage
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight: 240)
                .clipped()
        }
    }
}

struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell(image: Image(systemName: "photo"),
                 text: Text("Text"),
                 detailText: Text("Detail Text"),
                 tertiaryText: Text("Tertiary Text"),
                 largeImage: Image(systemName: "photo"))
            .previewLayout(.sizeThatFits)
    }
}
