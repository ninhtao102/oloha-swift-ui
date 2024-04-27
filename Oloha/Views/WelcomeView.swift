//
//  WelcomeView.swift
//  Oloha
//
//  Created by Ninhtao on 28/4/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color(red: 254 / 255, green: 189 / 255, blue: 47 / 255)
                .ignoresSafeArea()
            
            VStack (alignment: .center, spacing: 48, content: {
                HStack (alignment: .center, content: {
                    Image("oloha-logo")
                        .scaleEffect(CGSize(width: 0.8, height: 0.8))
                    Text("Oloha")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                })
                .frame(width: 320, height: 320)

                VStack (alignment: .center, content: {
                    VStack (alignment: .leading, content: {
                        Text("Welcome to Oloha")
                            .font(.title)
                            .fontWeight(.medium)
                        Text("Live life with no excuses, travel with no regret")
                            .padding([.bottom], 8)
                            .font(.subheadline)
                            .foregroundStyle(Color.gray)
                    })
                    
                    Button(action: {}, label: {
                        Image("apple")
                            .padding([.horizontal], 8)
                        Text("Sign in with Apple")
                    })
                    .frame(width: 305, height: 52)
                    .foregroundColor(.white)
                    .background(Color(red: 23 / 255, green: 23 / 255, blue: 37 / 255))
                    .cornerRadius(16)

                    Button(action: {}, label: {
                        Image("google")
                            .padding([.horizontal], 8)
                        Text("Sign in with Google")
                    })
                    .frame(width: 305, height: 52)
                    .foregroundColor(.white)
                    .background(Color(red: 207 / 255, green: 66 / 255, blue: 50 / 255))
                    .cornerRadius(16)

                    Button(action: {}, label: {
                        Image("facebook")
                            .padding([.horizontal], 8)
                        Text("Sign in with Facebook")
                    })
                    .frame(width: 305, height: 52)
                    .foregroundColor(.white)
                    .background(Color(red: 60 / 255, green: 102 / 255, blue: 195 / 255))
                    .cornerRadius(16)
                    
                    Button(action: {}, label: {
                        Text("Continue as guest")
                            .font(.caption)
                            .underline()
                    })
                    .padding(.vertical, 2)
                    .foregroundColor(.black)
                    
                    HStack {
                        VStack {
                            Divider().background(Color.gray)
                        }
                        .frame(width: 60)
                        Text(" Or ").font(.caption).foregroundColor(.gray)
                        VStack {
                            Divider().background(Color.gray)
                        }
                        .frame(width: 60)
                    }
                    .padding(.horizontal, 16)
                    
                    HStack(spacing: 12, content: {
                        Button {
                            
                        } label: {
                            Text("Sign In")
                        }
                        .frame(width: 145, height: 52)
                        .foregroundColor(.black)
                        .background(Color(red: 254 / 255, green: 189 / 255, blue: 47 / 255))
                        .cornerRadius(16)

                        Button {
                            
                        } label: {
                            Text("Sign Up")
                        }
                        .frame(width: 145, height: 52)
                        .foregroundColor(.white)
                        .background(Color(red: 23 / 255, green: 23 / 255, blue: 37 / 255))
                        .cornerRadius(16)
                    })
                    .padding(.bottom, 4)
                })
                .padding(24)
                .background(.white)
                .cornerRadius(24)
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    WelcomeView()
}
