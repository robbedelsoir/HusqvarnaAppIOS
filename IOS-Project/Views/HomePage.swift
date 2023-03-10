//
//  HomePage.swift
//  IOS-Project
//
//  Created by Guest User on 09/12/2022.
//

import SwiftUI
import AVKit
import AVFoundation



struct HomePage: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    @State var isShowingMotorList = false
    @State var isShowingSwiftUIView = false
    @State var isShowingMyAccount = false
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
   var body: some View {

       NavigationView {
           
           
           VStack {
               
               HomePageVideo().offset(y:100)
                   .overlay(
                    Image("Husqvarna_Motorcycles")
                        .resizable()
                        .frame(width: 220, height: 66, alignment: .center)
                        .offset(y:-50)
                   )
               
               
               VStack {
                   NavigationLink(destination: MotorList(), isActive:$isShowingMotorList) { EmptyView()}
                   
                   Button {
                       self.isShowingMotorList = true
                   }
               label: {
                   Image("Modellen")
                       .resizable()
                       .frame(width: 340, height: 175)
                       .offset(x: -50, y: 100)
                   
               }
               }
               
               
               VStack {
                   NavigationLink(destination: SwiftUIMap().environmentObject(dataManager), isActive:$isShowingSwiftUIView) { EmptyView()}
                   
                   Button {
                       self.isShowingSwiftUIView = true
                   }
               label: {
                   Image("FindAShop")
                       .resizable()
                       .frame(width: 340, height: 175)
                       .offset(x: 45, y:40)
               }
               }
               
               VStack {
                   NavigationLink(destination: MyAccount(), isActive:$isShowingMyAccount) { EmptyView()}
                   
                   Button {
                       self.isShowingMyAccount = true
                   }
               label: {
                   Image("Reviews")
                       .resizable()
                       .frame(width: 340, height: 185)
                       .offset(x: -30, y: 5)
               }
               }
             
               
               .ignoresSafeArea()
               
               
              
      }
     
        
   }
}


/*
 guard let instagram = URL(string: "https://www.instagram.com/yourpagename") else { return }
   UIApplication.shared.open(instagram)
 */




struct HomePageVideo: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<HomePageVideo>) {
        
        }

        func makeUIView(context: Context) -> UIView {
            return LoopingPlayerUIView(frame: .zero)
        }
    }



class LoopingPlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Load the resource
    let fileUrl = Bundle.main.url(forResource: "VideoMain", withExtension: "mp4")!
        let asset = AVAsset(url: fileUrl)
        let item = AVPlayerItem(asset: asset)
        
        // Setup the player
        let player = AVQueuePlayer()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspect
        layer.addSublayer(playerLayer)
        
        // Create a new player looper with the queue player and template item
        playerLooper = AVPlayerLooper(player: player, templateItem: item)
        
        // Start the movie
        player.play()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
            
    }
}
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
                .environmentObject(DataManager())
        }
    }
}
