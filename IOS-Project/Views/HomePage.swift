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
   var body: some View {
      VStack {
          Image("Husqvarna_Motorcycles")
              .resizable()
              .frame(width: 210, height: 66, alignment: .center)
              
          HomePageVideo().offset(y: -30)
          
          Button {
              print("Edit button was tapped")
          } label: {
              Image("Modellen")
                  .resizable()
                  .frame(width: 380, height: 190)
                  .offset(x: -30, y: -50)
          }
          
          Button {
              print("Edit button was tapped")
          } label: {
              Image("FindAShop")
                  .resizable()
                  .frame(width: 360, height: 190)
                  .offset(x: 35, y: -50)
          }
          
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
        let fileUrl = Bundle.main.url(forResource: "video2", withExtension: "mp4")!
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
    
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
}
