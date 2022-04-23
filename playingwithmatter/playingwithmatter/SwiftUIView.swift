//
//  SwiftUIView.swift
//  playingwithmatter
//
//  Created by Jay Buddhdev on 21/04/22.
//

import SwiftUI

struct SwiftUIView: View {
    @Binding var Counter: Int
    @State private var isRotate = false;
    @State private var degreeToRotate = 0;
    @State private var isAnimating = false
    @State private var showProgress = false
    @State private var playerNumber = 1
    var foreverAnimation: Animation {
        Animation.linear(duration: 2.0)
    }
    var body: some View {
        VStack {
           // Text("\(Int(Counter))")
            //Text("\(playerNumber)   \((Counter + (playerNumber / 2) % Counter) == 0 ? Counter : (Counter + (playerNumber / 2) % Counter))")
            Button(action: { self.showProgress.toggle()
                playerNumber = Int.random(in: 1...Counter)
                degreeToRotate = playerNumber
                degreeToRotate *= (360 / Counter)
                debugPrint(degreeToRotate)
                degreeToRotate += 360
                
            }, label: {
                if showProgress {
                    Image("bottle")
                        .resizable()
                        .frame(maxWidth: 350,maxHeight: 350)
                        .rotationEffect(Angle(degrees: self.isAnimating ? Double(degreeToRotate) : 0.0))
                        .animation(self.isAnimating ? foreverAnimation : .default)
                        .onAppear { self.isAnimating = true }
                        .onDisappear { self.isAnimating = false }
                    
                } else {
                    Image("bottle")
                        .resizable()
                        .frame(maxWidth: 350,maxHeight: 350)
                }
                
                
                
            })
            .onAppear { self.showProgress = true }
        }
    }
    
}

