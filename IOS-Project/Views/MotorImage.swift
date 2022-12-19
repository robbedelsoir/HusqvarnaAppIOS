//
//  MotorImage.swift
//  IOS-Project
//
//  Created by Guest User on 25/11/2022.
//

import SwiftUI

struct MotorImage: View {
    @State var currentIndex: Int = 0
    
    @State var posts: [Post] = []
    var body: some View {
        VStack(spacing: 15)
        {
            VStack (alignment: .leading, spacing: 12) {} .frame(maxWidth: .infinity,alignment: .leading) .padding()
            // Snap Carousel....
            SnapCarousel (index: $currentIndex, items: posts)
            {post in
                GeometryReader{proxy in
                    let size = proxy.size
                    
                    Image(post.postImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width)
                        .cornerRadius(12)
                }
            }
            .padding(.vertical,80)
        }
            .frame(maxHeight: .infinity, alignment: .top)
            .onAppear{ for index in 1...3{
                posts.append(Post(postImage: "post\(index)"))}
      
        }
    }
    
}


struct MotorImage_Previews: PreviewProvider {
    static var previews: some View {
        MotorImage()
    }
}
