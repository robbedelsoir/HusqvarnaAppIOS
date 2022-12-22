//
//  MotorRow.swift
//  IOS-Project
//
//  Created by Guest User on 25/11/2022.
//

import SwiftUI

struct MotorRow: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var landmark: Motoroverzicht
    
    var body: some View {
        ZStack{
            
            landmark.image2
                .renderingMode(.original)
                .resizable()
                .frame(width:200, height: 155)
                .aspectRatio(contentMode: .fill)
                .offset(x: -80)
            
            
            
            Text(landmark.name)
                .font(.custom("MYing", size: 40))
                .bold(true)
                .foregroundColor(Color(hex: 003985))
                .offset(x: 92, y: 40)
            
            Spacer()
            
            
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

