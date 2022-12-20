//
//  MyAccount.swift
//  IOS-Project
//
//  Created by Robbe on 19/12/2022.
//

import SwiftUI
import UIKit
import SceneKit
import Model3DView



struct MyAccount: View {
    
    @State var camera = PerspectiveCamera()
    
    var body: some View {
        
        VStack{
            
            Text("Welcome")
                .font(.custom("MYing", size: 46))
                .bold(true)
                .foregroundColor(Color(hex: 003985))
                .offset(x: 40,y: 200)
            Text("Robbe")
                .font(.custom("MYing", size: 35))
                .bold(true)
                .foregroundColor(Color(hex: 003985))
                .offset(x: 40,y: 200)
                .frame(alignment: .leadingLastTextBaseline)
            
            Model3DView(named: "model.dae")
                
                .transform(
                    rotate: Euler(y: .degrees(90)),
                    scale: 0.5
                    
                )
                .cameraControls(OrbitControls(
                        camera: $camera,
                        sensitivity: 0.5,
                        friction: 0.2
                    ))
                .frame(width: UIScreen.main.bounds.width, height:800, alignment: .center)
                .offset(y:-20)
            VStack(spacing: 10){
                
                
                
                Text("Your next maintenance is at:")
                    .font(.custom("MYing", size: 25))
                    .bold(true)
                    .foregroundColor(Color(hex: 003985))
                Text("5000 total kilometers")
                    .font(.custom("MYing", size: 25))
                    .bold(true)
                    .foregroundColor(Color(hex: 003985))
               
                Text("Chain")
                    .font(.custom("MYing", size: 18))
                    .bold(true)
                    .foregroundColor(Color(hex: 003985))
                Text("Airfilter")
                    .font(.custom("MYing", size: 18))
                    .bold(true)
                    .foregroundColor(Color(hex: 003985))
                Text("oil")
                    .font(.custom("MYing", size: 18))
                    .bold(true)
                    .foregroundColor(Color(hex: 003985))
                Text("oil")
                    .font(.custom("MYing", size: 18))
                    .bold(true)
                    .foregroundColor(Color(hex: 003985))
                
            }.offset(y:-250)
            
            HStack{
                Button{
                    //maps()
                } label: {
                    Text("Next maintenance")
                        .bold(true)
                        .frame(width: 200, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 003686)))
                        .foregroundColor(.white)
                    
                } /*
                Button{
                    //maps()
                } label: {
                    Text("Previous")
                        .bold(true)
                        .frame(width: 200, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 003686)))
                        .foregroundColor(.white)
                    
                }
                   */
                         }
            }
        
        
}
}




    


struct MyAccount_Previews: PreviewProvider {
    static var previews: some View {
        MyAccount()
    }
}
