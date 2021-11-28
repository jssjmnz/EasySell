//
//  LoginView.swift
//  EasySell
//
//  Created by Jesus Jimenez on 11/20/21.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var startState : String
    
    @State var email : String = ""
    @State var password : String = ""
    
    var body: some View {
        VStack {
            Image("LogoWink1")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3)
            
            Text("Log In")
                .fontWeight(.bold)
                .font(.system(size: 25))
            
            VStack {
                HappyTextField(placeHolder: "Email", text: $email, icon: "envelope.fill")
                
                HappySecureField(placeHolder: "Password", text: $password, icon: "staroflife.fill")
                
                Text("Let's Go!")
                    .fontWeight(.bold)
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .frame(height: 45)
                    .frame(maxWidth: .infinity)
                    .background(Color("HappyBlue").cornerRadius(10))
                
                
                HStack {
                    Text("Don't have an account?")
                    Text("Sign Up")
                        .foregroundColor(Color("HappyBlue"))
                        .onTapGesture {
                            startState = "signup"
                        }
                }
                .padding()
                .font(.system(size: 12))
                
                Spacer()
                    Text("Happy Code 2021")
                    .font(.system(size: 8))
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(startState: .constant(""))
    }
}

extension View {
    func HappyTextField(placeHolder: String, text: Binding<String>, icon: String) -> some View {
        var tf : some View {
            TextField(text: text) {
                HStack(spacing: 0) {
                    Image(systemName: icon)
                    Text("Email")
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("HappyBlue"), lineWidth: 1)
            )
            
        }
        return tf
    }
    func HappySecureField(placeHolder: String,text: Binding<String>, icon: String) -> some View {
        var tf : some View {
            TextField(text: text) {
                HStack(spacing: 0) {
                    Image(systemName: icon)
                    Text("Password")
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("HappyBlue"), lineWidth: 1)
            )
        }
        return tf
    }
}
