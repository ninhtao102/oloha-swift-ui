//
//  OnboardingView.swift
//  Oloha
//
//  Created by Ninhtao on 28/4/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("background-onboarding")
                    .scaleEffect(CGSize(width: 1.05, height: 1.05))
                    .position(x: 196, y: 100)
                Image("use-map")
                    .scaleEffect(CGSize(width: 1.1, height: 1.1))
            }

            VStack {
                Text("Discover Amazing Place")
                    .padding([.top, .horizontal], 18)
                    .padding([.bottom], 8)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.medium)
                Text("Plan Your Trip, choose your desination. Pick the best localguide for your holiday")
                    .padding([.horizontal], 54)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                HStack {
                    Button {
                        
                    } label: {
                        Label("Toggle Favorite", systemImage: "circle.fill")
                            .scaleEffect(CGSize(width: 0.6, height: 0.6))
                            .labelStyle(.iconOnly)
        //                    .foregroundStyle(isSet ? .yellow : .gray)
                            .foregroundStyle(.gray)
                    }
                }
                .padding(4)
                
                Button("Get Started") {}
                    .frame(width: 248, height: 52)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(16)
                Button("Skip for now") {}
                    .frame(width: 248, height: 52)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color(red: 241/255, green: 241/255, blue: 245/255))
            .cornerRadius(16)
        }
    }
}

#Preview {
    OnboardingView()
}
