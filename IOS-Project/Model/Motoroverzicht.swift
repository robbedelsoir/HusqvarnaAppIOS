//
//  Motoroverzicht.swift
//  IOS-Project
//
//  Created by Guest User on 25/11/2022.
//

import SwiftUI



struct Motoroverzicht: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var image1: String
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
}

