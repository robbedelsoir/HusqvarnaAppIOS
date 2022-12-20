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
    
    var banner1: String
        var image_banner1: Image {
            Image(banner1)
        }
    
    var banner2: String
        var image_banner2: Image {
            Image(banner2)
        }
    
    var banner3: String
        var image_banner3: Image {
            Image(banner3)
        }
    
    var banner4: String
        var image_banner4: Image {
            Image(banner4)
        }
    
    
    var imageName: String
        var image2: Image {
            Image(imageName)
        }
    
  
    //imageName
    
}

