//
//  NewReview.swift
//  IOS-Project
//
//  Created by Robbe on 23/12/2022.
//

import SwiftUI


struct NewReview: View {
    
    @EnvironmentObject var dataManager: DataManager
    @State var newText = ""
    @State var newReviewer = ""
    var body: some View {
        VStack{
            TextField("Name", text: $newReviewer)
                .padding(20)
            
            TextField("Review", text: $newText)
                .padding(20)
                .padding(.bottom, 30)
            
            Button {
                dataManager.addReview(text: newText, reviewerName: newReviewer)
            }
        label:
            {
                Text("Save")
                    .font(.custom("MYing", size: 16))
                    .bold(true)
                    .frame(width: 200, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 003686)))
                    .foregroundColor(.white)
            }
            
        }
        .padding()
    }
}

struct NewReview_Previews: PreviewProvider {
    static var previews: some View {
        NewReview()
    }
}
