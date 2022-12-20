//
//  MotorDetail.swift
//  IOS-Project
//
//  Created by Guest User on 25/11/2022.
//

import SwiftUI

struct MotorDetail: View {
    var landmark: Motoroverzicht
    
    @State var currentIndex: Int = 0
    
    @State var posts: [Post] = []
    
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
       
        
        ScrollView {
            
            
            
            VStack(spacing: 20){
               
                
                
               
                Image(landmark.banner1)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                    .offset(y:-97)
                    .overlay(
                        Image("HusqvarnaWhite")
                            .resizable()
                            .frame(width: 112, height: 82, alignment: .center)
                            .offset(y:-425)
                            .navigationBarBackButtonHidden(true)
                            .navigationBarItems(leading: Button(action : {
                                            self.mode.wrappedValue.dismiss()
                                        }){
                                            Image(systemName: "arrow.left")
                                        .offset(y: -20)
                                        })
                    )

                HStack(){
                    Button{
                        //maps()
                    } label: {
                        Text("FIND A DEALER")
                            .font(.custom("MYing", size: 16))
                            .bold(true)
                            .frame(width: 200, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 003686)))
                            .foregroundColor(.white)
                        
                        
                        
                             }
                    
                }
                .offset(y:-210)
                
                
                Text(landmark.name)
                    .font(.custom("MYing", size: 46))
                    .bold(true)
                    .foregroundColor(Color(hex: 003985))
                    .padding(.top, -120)
              
                VStack(spacing: 15)
                {
                    
                    VStack (alignment: .leading, spacing: 12) {} .frame(maxWidth: .infinity,alignment: .leading) .padding()
                    // Snap Carousel....
                    SnapCarousel (trailingSpace: 27,index: $currentIndex, items: posts)
                    {post in
                        GeometryReader{proxy in
                            let size = proxy.size
                            
                            Image(post.postImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: size.width)
                                .cornerRadius(12)
                                .padding(.top, -200)
                        }
                    }
                    .padding(.vertical,80)
                }
                    .frame(maxHeight: .infinity, alignment: .top)
                    .onAppear{ for index in 1...5{
                        posts.append(Post(postImage:  "\(String(landmark.name))" + "_overview\(index)"))}
                }
            
                
                Text(landmark.description)
                    .font(.custom("MYing", size: 18))
                    .foregroundColor(Color(hex: 003985))
                    .padding(20)
                    .padding(.top, -10)
                    
                
                Image(landmark.banner2)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height:250, alignment: .center)
                
               
                
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

