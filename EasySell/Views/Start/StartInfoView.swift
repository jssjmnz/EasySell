//
//  StartInfoView.swift
//  EasySell
//
//  Created by Jesus Jimenez on 11/20/21.
//

import SwiftUI

struct StartInfoView: View {
    
    @Binding var startState : String
    
    var body: some View {
        VStack {
            Image("LogoWink1")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
            
            Spacer()
            
            Text("Get Started")
                .fontWeight(.bold)
                .font(.system(size: 15))
                .foregroundColor(.white)
                .frame(height: 45)
                .frame(maxWidth: .infinity)
                .background(Color("HappyBlue").cornerRadius(10))
                .onTapGesture {
                startState = "login"
            }
        }
        .padding()
    }
}

struct StartInfoView_Previews: PreviewProvider {
    static var previews: some View {
        StartInfoView(startState: .constant("start"))
            .previewDevice("iPod touch (7th generation)")
        
        StartInfoView(startState: .constant("start"))
            .previewDevice("iPhone 13 Pro Max")
    }
}
