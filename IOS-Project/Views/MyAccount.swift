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
        
        HStack{
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
                
        }
        
}
}




    


struct MyAccount_Previews: PreviewProvider {
    static var previews: some View {
        MyAccount()
    }
}
