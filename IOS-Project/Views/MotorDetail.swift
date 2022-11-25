//
//  MotorDetail.swift
//  IOS-Project
//
//  Created by Guest User on 25/11/2022.
//

import SwiftUI

struct MotorDetail: View {
    var body: some View {
        VStack {
                    MapView()
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)


                    VStack(alignment: .leading) {
                        Text("Turtle Rock")
                            .font(.title)

                        HStack {
                            Text("Joshua Tree National Park")
                            Spacer()
                            Text("California")
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                        Divider()

                        Text("About Turtle Rock")
                            .font(.title2)
                        Text("Descriptive text goes here.")
                    }
                    .padding()

                    Spacer()
                }
    }
}

struct MotorDetail_Previews: PreviewProvider {
    static var previews: some View {
        MotorDetail()
    }
}
