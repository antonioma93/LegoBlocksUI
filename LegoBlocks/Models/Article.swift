//
//  Article.swift
//  LegoBlocks
//
//  Created by Massa Antonio on 01/07/21.
//

import Foundation

struct Article: Identifiable {
    var id: Int
    let title: String
    let date: Date
    let detail: String
    let smallImageName: String
    let largeImageName: String
    
}
