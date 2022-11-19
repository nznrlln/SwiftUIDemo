//
//  ProfileView.swift
//  SwiftUIDemo
//
//  Created by Нияз Нуруллин on 13.11.2022.
//

import SwiftUI

struct ProfileView: View {

    @State private var username: String = ""
    @State private var password: String = ""

    private var logoWidth: CGFloat = UIScreen.main.bounds.width / 3
    private var logoHeight: CGFloat = UIScreen.main.bounds.width / 3

    private var buttonWidth: CGFloat = UIScreen.main.bounds.width - 32
    private var buttonHeight: CGFloat = 40

    var body: some View {
        VStack {
            Spacer()

            Image("vkLogo")
                .resizable()
                .frame(width: logoWidth, height: logoHeight)
                .aspectRatio(contentMode: .fit)

            Spacer()

            VStack {
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            .textFieldStyle(RoundedBorderTextFieldStyle())

            Spacer()
                .frame(height: 20)

            Button {
                debugPrint("Login press")
            } label: {
                Text("Log in")
                    .frame(width: buttonWidth, height: buttonHeight)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 2)
                    )
            }
            .background(Color.blue)
            .cornerRadius(10)

            Spacer()
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
