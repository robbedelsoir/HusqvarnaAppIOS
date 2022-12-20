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
    
    var overview1: String
        var image_overview1: Image {
            Image(overview1)
        }
    
    var overview2: String
        var image_overview2: Image {
            Image(overview2)
        }
    
    var overview3: String
        var image_overview3: Image {
            Image(overview3)
        }
    
    var overview4: String
        var image_overview4: Image {
            Image(overview4)
        }
    
    var overview5: String
        var image_overview5: Image {
            Image(overview5)
        }
    
    var overview6: String
        var image_overview6: Image {
            Image(overview6)
        }
    var overview: String
        var image_overview: Image {
            Image(overview2)
        }
    //imageName
    
}

