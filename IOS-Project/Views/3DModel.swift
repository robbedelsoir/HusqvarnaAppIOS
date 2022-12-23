//
//  3DModel.swift
//  IOS-Project
//
//  Created by Robbe on 23/12/2022.
//

import SwiftUI
import SceneKit
import Model3DView


struct _DModel: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var camera = PerspectiveCamera()
    var body: some View {
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
    }
}

struct _DModel_Previews: PreviewProvider {
    static var previews: some View {
        _DModel()
    }
}
