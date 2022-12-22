//
//  SnapCarousel.swift
//  IOS-Project
//
//  Created by Robbe on 19/12/2022.
//

import SwiftUI

struct SnapCarousel<Content : View,T: Identifiable>: View{
    var content: (T) -> Content
    var list: [T]
    
    // Properties...
    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int
    
    init(spacing: CGFloat = 15,trailingSpace: CGFloat = 100,index: Binding<Int>,items: [T],@ViewBuilder content: @escaping (T)->Content)
    {
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
    }
    //offset
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    var body: some View {
        
        GeometryReader{ proxy in
            
            let width = proxy.size.width - (trailingSpace - spacing)
            let adjustMentWidth = (trailingSpace / 2) - spacing
            
            HStack(spacing: spacing){
            
            
            ForEach(list){item in
                content(item)
                    .frame(width: proxy.size.width - trailingSpace)
            }
            .padding(.horizontal,spacing)
            .offset(x: (CGFloat(currentIndex) * -width) + (currentIndex != 0 ? adjustMentWidth : 0) + offset)
            .gesture(
                DragGesture()
                    .updating($offset, body: { value, out, _ in
                        
                        out = value.translation.width
                    })
                    .onEnded({ value in
                        
                        //Update current index for scroll
                        let offsetX = value.translation.width
                        
                        //convert the translation into progress (0-1)
                        //round the value based on the currentIndex
                        
                        let progress = -offsetX / width
                        
                        let roundIndex = progress.rounded()
                        
                        //setting max and min
                        currentIndex = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                        
                        //updating index
                        currentIndex = index
                    })
                )
        }
            
        }
        //animation when offset = 0
        .animation(.easeInOut, value: offset == 0)
    }
    }

struct SnapCarousel_Previews: PreviewProvider {
    static var previews: some View {
        MotorDetail(landmark: landmarks[0])
    }
}
