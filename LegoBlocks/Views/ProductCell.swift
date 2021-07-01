//
//  ProductCell.swift
//  LegoBlocks
//
//  Created by Massa Antonio on 01/07/21.
//

import SwiftUI

struct ProductCell: View {
    var body: some View {
        HStack {
            Image(systemName: "photo")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
            VStack(alignment: .leading) {
                Text(/*@START_MENU_TOKEN@*/"Text"/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                .bold()
                Text(/*@START_MENU_TOKEN@*/"Detail Text"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.gray)
                HStack {
                    Text("Tertiary Text")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Buy©")
                    }
                }
            }
        }
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell()
            .previewLayout(.sizeThatFits)
    }
}
