//
//  ProductCell.swift
//  LegoBlocks
//
//  Created by Massa Antonio on 01/07/21.
//

import SwiftUI

struct ProductCell: View {
    let image: Image
    let text: Text
    let detailText: Text
    let tertiaryText: Text

    var body: some View {
        HStack {
            image
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
            VStack(alignment: .leading) {
                text
                    .font(.title2)
                .bold()
                text
                    .foregroundColor(Color.gray)
                HStack {
                    tertiaryText
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Buy")
                    }
                }
            }
        }
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(image: Image(systemName: "photo"),
                    text: Text("Text"),
                    detailText: Text("Detail Text"),
                    tertiaryText: Text("Tertiary Text"))
            .previewLayout(.sizeThatFits)
    }
}
