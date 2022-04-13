//
//  ContentView.swift
//  playingwithmatter
//
//  Created by Jay Buddhdev on 13/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var input = ""
    var body: some View {
        NavigationView{
            
            ZStack { // 1
                Color.white // 2
                VStack{
                    Spacer()
                    Text("Welcome To Truth and Dare Game ")
                        .font(.system(size: 25))
                        .bold()
                    Spacer().frame(minHeight: 10, maxHeight: 200)
                    Text("Enter Number of Players")
                        .font(.system(size: 20))
                        .bold()
                    Spacer().frame(minHeight: 10, maxHeight: 100)
                    TextField("Input", text: $input)
                        .padding()
                        .keyboardType(.decimalPad)
                    Spacer()
                    NavigationLink(destination: SwiftUIView()) {
                        Text("Start Game")
                            .frame(minWidth: 0, maxWidth: 300)
                            .padding()
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                            .font(.title)
                    }
                }
            }
            .accentColor(Color.black)
        }
       
       
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
