//
//  MyAccount.swift
//  IOS-Project
//
//  Created by Robbe on 19/12/2022.
//

import SwiftUI
import UIKit
import Firebase



struct MyAccount: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    
    @EnvironmentObject var dataManager: DataManager
        
    @State private var showPopup = false
    
    var body: some View {
        let user = Auth.auth().currentUser
        if let user = user {
          let email = user.email
        }

            
        VStack{
            
            Text("Welcome")
                .font(.custom("MYing", size: 46))
                .bold(true)
                .foregroundColor(Color(hex: 003985))
            
            Text("\(user?.email ?? "Company Inc")")
                .font(.custom("MYing", size: 25))
                .bold(true)
                .foregroundColor(Color(hex: 003985))
            
                .frame(alignment: .leadingLastTextBaseline)
            
            
            
            
            
            
            
            NavigationView{
                
                List(dataManager.reviews, id: \.id) { review in
                    Text(review.reviewerName)
                        .font(.custom("MYing", size: 22))
                        .foregroundColor(Color(hex: 003985))
                    
                    
                    Text(review.text)
                        .frame(width: 200, alignment: .center)
                        .offset(x:50)
                        .font(.custom("MYing", size: 18))
                        .foregroundColor(Color(hex: 003985))
                        .padding(.bottom, 20)
                    
                }
                .navigationBarItems(trailing: Button(action: {showPopup.toggle()}, label: {
                    Image(systemName: "plus")
                    
                }))
                .sheet(isPresented: $showPopup){
                    NewReview()
                }
                
                /*
                 Button{
                 //maps()
                 } label: {
                 Text("Write a review")
                 .bold(true)
                 .frame(width: 200, height: 50)
                 .background(
                 RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 003686)))
                 .foregroundColor(.white)
                 
                 }
                 }
                 
                 
                 
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
                 
                 }
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
    @EnvironmentObject var dataManager: DataManager
    static var previews: some View {
        MyAccount()
            .environmentObject(DataManager())
    }
}
