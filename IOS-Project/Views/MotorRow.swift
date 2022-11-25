//
//  MotorRow.swift
//  IOS-Project
//
//  Created by Guest User on 25/11/2022.
//

import SwiftUI

struct MotorRow: View {
    var landmark: Motoroverzicht
    
    var body: some View {
        ZStack{
            landmark.image.renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 225)
                .background(Color.black)
                .cornerRadius(10)
                .opacity(0.9)
                .aspectRatio(contentMode: .fill)
            
            
            Spacer()
            
            Text(landmark.name)
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold, design: Font.Design.default))
        }
    }
    
    struct MotorRow_Previews: PreviewProvider {
        static var previews: some View {
               Group {
                   MotorRow(landmark: landmarks[0])
                       .previewLayout(.fixed(width: 300, height: 70))
                   MotorRow(landmark: landmarks[1])
                       .previewLayout(.fixed(width: 300, height: 70))
               }
               .previewLayout(.fixed(width: 300, height: 70))
           }
    }
}

