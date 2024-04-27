//
//  SignInView.swift
//  Oloha
//
//  Created by Ninhtao on 28/4/24.
//

import SwiftUI

struct SignInView: View {
    @State private var login: String = ""
    @State private var password: String = ""

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
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 320)

                VStack {
                    Text("Welcome Back")
                        .font(.title)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Please log in to your account")
                        .padding([.bottom], 8)
                        .font(.subheadline)
                        .foregroundStyle(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    VStack (spacing: 16, content: {
                        TextField("Email or phone number", text: $login)
                            .font(.system(size: 17, weight: .thin))
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity, minHeight: 52)
                            .padding(.horizontal, 12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray, lineWidth: 0.5)
                            )

                        TextField("Password", text: $password)
                            .font(.system(size: 17, weight: .thin))
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity, minHeight: 52)
                            .padding(.horizontal, 12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray, lineWidth: 0.5)
                            )
                    })

                    VStack (alignment: .trailing, content: {
                        Button(action: {}, label: {
                            Text("Forgot Password?")
                                .font(.subheadline)
                                .fontWeight(.thin)
                                .foregroundColor(.black)
                        })
                        .padding(.vertical, 2)
                        .bold()
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
                    Button(action: {}, label: {
                        Text("Sign In")
                    })
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .foregroundColor(.black)
                    .background(Color(red: 254 / 255, green: 189 / 255, blue: 47 / 255))
                    .cornerRadius(16)
                    
                    HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 8, content: {
                        Text("Don't have an account?")
                            .font(.subheadline)
                            .fontWeight(.thin)
                        Button(action: {}, label: {
                            Text("Sign Up")
                                .font(.subheadline)
                        })
                        .padding(.vertical, 2)
                        .bold()
                        .foregroundColor(Color(red: 254 / 255, green: 189 / 255, blue: 47 / 255))
                    })
                    .padding(.top, 6)
                    
                    HStack {
                        VStack {
                            Divider().background(Color.gray)
                        }
                        .frame(width: 60)
                        Text(" Or continue with ").font(.caption).foregroundColor(.gray)
                        VStack {
                            Divider().background(Color.gray)
                        }
                        .frame(width: 60)
                    }
                    .padding(.horizontal, 16)
                    
                    HStack(spacing: 12, content: {
                        Button {
                            
                        } label: {
                            Image("apple")
                        }
                        .frame(maxWidth: .infinity, minHeight: 52)
                        .foregroundColor(.white)
                        .background(Color(red: 23 / 255, green: 23 / 255, blue: 37 / 255))
                        .cornerRadius(16)

                        Button {
                            
                        } label: {
                            Image("google")
                        }
                        .frame(maxWidth: .infinity, minHeight: 52)
                        .foregroundColor(.black)
                        .background(Color(red: 207 / 255, green: 66 / 255, blue: 50 / 255))
                        .cornerRadius(16)

                        Button {
                            
                        } label: {
                            Image("facebook")
                        }
                        .frame(maxWidth: .infinity, minHeight: 52)
                        .foregroundColor(.black)
                        .background(Color(red: 60 / 255, green: 102 / 255, blue: 195 / 255))
                        .cornerRadius(16)
                    })
                    .padding(.bottom, 4)
                }
                .padding(24)
                .background(.white)
                .cornerRadius(24)
                .frame(maxWidth: .infinity)
            })
            .padding(.horizontal)
        }
    }
}

#Preview {
    SignInView()
}
