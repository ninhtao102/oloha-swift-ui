//
//  SignUpView.swift
//  Oloha
//
//  Created by Ninhtao on 28/4/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var fullname = ""
    @State private var password = ""
    @State private var passwordConfirm = ""
    @State private var email = ""
    @State private var accepted = true
    
    var body: some View {
        ZStack {
            Color(red: 254 / 255, green: 189 / 255, blue: 47 / 255)
                .ignoresSafeArea()
            
            VStack (alignment: .center, content: {
                HStack (alignment: .center, content: {
                    Image("oloha-logo")
                        .scaleEffect(CGSize(width: 0.8, height: 0.8))
                    Text("Oloha")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                })
                .frame(maxWidth: .infinity, maxHeight: 320)

                VStack {
                    Text("Register new account")
                        .font(.title)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Please fill your information")
                        .padding([.bottom], 8)
                        .font(.subheadline)
                        .foregroundStyle(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack (spacing: 16, content: {
                        TextField("Your name", text: $fullname)
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

                        TextField("Confirm password", text: $passwordConfirm)
                            .font(.system(size: 17, weight: .thin))
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity, minHeight: 52)
                            .padding(.horizontal, 12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray, lineWidth: 0.5)
                            )

                        TextField("Email", text: $passwordConfirm)
                            .font(.system(size: 17, weight: .thin))
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity, minHeight: 52)
                            .padding(.horizontal, 12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray, lineWidth: 0.5)
                            )
                    })
                    
                    HStack {
                        Button(action: {}, label: {
                            Image(systemName: accepted ? "checkmark.square.fill" : "square")
                                .foregroundColor(accepted ? .green : .gray)
                                .scaleEffect(CGSize(width: 1.4, height: 1.4))
                                .position(x: 1, y: 0)
                                .frame(width: 10, height: 10)
                        })

                        VStack (alignment: .leading, spacing: 0, content: {
                            Text("By creating an account, you agree to our")
                                .font(.subheadline)
                                .fontWeight(.thin)
                                .foregroundColor(.black)
                            Text("Term and Conditions")
                                .font(.subheadline)
                        })
                        .padding(.leading, 4)
                    }

                    Button(action: {}, label: {
                        Text("Sign Up")
                    })
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .foregroundColor(.black)
                    .background(Color(red: 254 / 255, green: 189 / 255, blue: 47 / 255))
                    .cornerRadius(16)
                    
                    HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 8, content: {
                        Text("Already have an account?")
                            .font(.subheadline)
                            .fontWeight(.thin)
                        Button(action: {}, label: {
                            Text("Sign In")
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
    SignUpView()
}
