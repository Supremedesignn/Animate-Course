//
//  OnboardingView.swift
//  Animate Course
//
//  Created by Nkosi Yafeu on 5/30/22.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
    let button = RiveViewModel(fileName: "button", autoPlay: false)
    
    var body: some View {
        ZStack {
            background
   
            button.view()
                .frame(width: 236, height: 64)
                .overlay(
                    Label("Start the course", systemImage: "arrow.forward")
                        .offset(x: 4, y: 4)
                        .font(.headline)
                )
                .background(
                    Color.black
                        .cornerRadius(30)
                        .blur(radius: 10) 
                        .opacity(0.3)
                        .offset(y: 10)
                )
            
                .onTapGesture {
                     button.play(animationName: "active")
                }
        }
    }
    
    var background: some View {
        RiveViewModel(fileName: "shapes").view()
            .ignoresSafeArea()
            .blur(radius: 30)
            .background(
                 Image("")
                    .blur(radius: 50)
                    .offset(x: 200, y: 100)
        )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
