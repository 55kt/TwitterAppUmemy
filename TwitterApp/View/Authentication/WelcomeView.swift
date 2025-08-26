//
//  WelcomeView.swift
//  TwitterApp
//
//  Created by Vlad on 25/8/25.
//

import SwiftUI

struct WelcomeView: View {
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    //MARK: - Header Logo Image
                    Image("Twitter")
                        .resizable()
                        .scaledToFill()
                        .padding(.trailing)
                        .frame(width: 20, height: 20)
                    
                    Spacer(minLength: 0)
                }
                Spacer(minLength: 0)
                //MARK: - Header Text
                Text("See whats happening in the world right now.")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .frame(width: (getRect().width * 0.9), alignment: .center)
                
                Spacer(minLength: 0)
                
                //MARK: - Sign In With Google Button
                VStack(alignment: .center, spacing: 10) {
                    Button {
                        print("Sign in with Google")
                    } label: {
                        HStack(spacing: -4) {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Continue with Google")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundStyle(.black)
                                .padding()
                        }
                        .overlay {
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        }
                    }
                    
                    //MARK: - Sign In With Apple Button
                    Button {
                        print("Sign in with Apple")
                    } label: {
                        HStack(spacing: -4) {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Continue with Apple")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundStyle(.black)
                                .padding()
                        }
                        .overlay {
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        }
                    }
                    //MARK: - Custom Divider
                    HStack {
                        Rectangle()
                            .foregroundStyle(.gray)
                            .opacity(0.3)
                            .frame(width: (getRect().width * 0.35),height: 1)
                        
                        Text("Or")
                            .foregroundStyle(.gray)
                        
                        Rectangle()
                            .foregroundStyle(.gray)
                            .opacity(0.3)
                            .frame(width: (getRect().width * 0.35),height: 1)
                    }
                    
                    //MARK: - Create Account Button
                    NavigationLink(destination: RegisterView().navigationBarHidden(true)) {
                        RoundedRectangle(cornerRadius: 36)
                            .foregroundStyle(.twitter)
                            .frame(width: 320, height: 60, alignment: .center)
                            .overlay {
                                Text("Create account")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .foregroundStyle(.white)
                                    .padding()
                            }
                    }
                }
                .padding()
                
                //MARK: - Bottom Buttons & Log In
                VStack(alignment: .leading) {
                    VStack {
                        Text("Buy signing up, you agree to our ") + Text("Terms")
                            .foregroundStyle(.twitter) + Text(",") + Text(" Privacy Policy")
                            .foregroundStyle(.twitter) + Text(",") + Text(" Cookie use")
                            .foregroundStyle(.twitter)
                    }
                    .padding(.bottom)
                    
                    HStack(spacing: 2) {
                        Text("Have an account already? ")
                        NavigationLink(destination: LoginView().navigationBarHidden(true)) {
                            Text("Log in")
                                .foregroundStyle(.twitter)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .navigationTitle("")
        }
    }
}

//MARK: - Preview
#Preview {
    WelcomeView()
}
