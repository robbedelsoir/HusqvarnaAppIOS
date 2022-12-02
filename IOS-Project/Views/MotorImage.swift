//
//  MotorImage.swift
//  IOS-Project
//
//  Created by Guest User on 25/11/2022.
//

import SwiftUI

struct MotorImage: View {
    var image: Image

        var body: some View {
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        }
}

struct MotorImage_Previews: PreviewProvider {
    static var previews: some View {
        MotorImage(image: Image("Husqvarna125"))
    }
}
