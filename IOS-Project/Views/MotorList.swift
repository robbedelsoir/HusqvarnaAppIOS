//
//  MotorList.swift
//  IOS-Project
//
//  Created by Guest User on 25/11/2022.
//

import SwiftUI

struct MotorList: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            
            List(landmarks) { landmark in
                NavigationLink {
                    MotorDetail(landmark: landmark)
                    
                } label: {
                    MotorRow(landmark: landmark)
                }
                
               
            }
        }
    }
    
    struct MotorList_Previews: PreviewProvider {
        static var previews: some View {
            MotorList()
        }
    }
}

