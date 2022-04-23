//
//  SwiftUIView.swift
//  playingwithmatter
//
//  Created by Jay Buddhdev on 21/04/22.
//

import SwiftUI

struct SwiftUIView: View {
    @Binding var Counter: Int
    var body: some View {
        Text("\(Int(Counter))")
        
        Image("bottle")
            .scaledToFit()
    }
}

