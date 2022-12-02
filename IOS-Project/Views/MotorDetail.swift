//
//  MotorDetail.swift
//  IOS-Project
//
//  Created by Guest User on 25/11/2022.
//

import SwiftUI

struct MotorDetail: View {
    var landmark: Motoroverzicht

    var body: some View {
        VStack {

                  
                           
                           
                    

                    VStack(alignment: .leading) {
                        Text(landmark.name)
                            .font(.title)

                        Divider()

                        Text(landmark.description)

                    }
                    .padding()

                    Spacer()
                }
    }
}

struct MotorDetail_Previews: PreviewProvider {
    static var previews: some View {
        MotorDetail(landmark: landmarks[0])
    }
}
