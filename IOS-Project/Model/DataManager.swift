//
//  FirebaseManager.swift
//  IOS-Project
//
//  Created by Robbe on 23/12/2022.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject {
    @Published var reviews: [Review] = []
    
    init(){
        fetchReview()
    }
    
    func fetchReview(){
        reviews.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Reviews")
        ref.getDocuments{ snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let reviewerName = data["reviewerName"] as? String ?? ""
                    let text = data["text"] as? String ?? ""
                    
                    let review = Review(id: id, reviewerName: reviewerName, text: text)
                    self.reviews.append(review)
                }
            }
        }
    }
    
    func addReview(text: String, reviewerName: String){
        let db = Firestore.firestore()
        let ref = db.collection("Reviews").document(text)
        ref.setData(["review": text, "reviewerName": reviewerName, "id" : NSUUID().uuidString]) { error in
            if let error = error {
                print (error.localizedDescription)
            }
            
        }
    }
}
