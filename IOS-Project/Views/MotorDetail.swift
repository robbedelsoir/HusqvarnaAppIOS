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
        
        ScrollView {
            
            
            
            VStack(spacing: 20){
                
                
                
                
                
                Image(landmark.image1)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                    .offset(y:-59)
                    .overlay(
                        Image("HusqvarnaWhite")
                            .resizable()
                            .frame(width: 112, height: 82, alignment: .center)
                            .offset(y:-375)
                        
                    )
                
            
                HStack(){
                    Button{
                        //maps()
                    } label: {
                        Text("FIND A DEALER")
                            .frame(width: 200, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 003686)))
                        //FFED00
                            .foregroundColor(.white)
                        
                        
                        
                             }
                    
                }
                .offset(y:-175)
                
                
                Text(landmark.name)
                .font(.title)
                     
                Text(landmark.description)
                     
                     
                     }
                     .ignoresSafeArea()
                     }
                     
                
        }
            
        
    }
    
    struct MotorDetail_Previews: PreviewProvider {
        static var previews: some View {
            MotorDetail(landmark: landmarks[0])
        }
    }

