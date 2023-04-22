//
//  RegistrationView.swift
//  DélicieuxCafé
//
//  Created by Meet Brahmbhatt on 14/04/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @Binding var showRegistration: Bool
    @State var color: Color = Color.black.opacity(0.5)
    @State var email = ""
    @State var passwd = ""
    @State var repasswd = ""
    @State var isPasswordVisible = false
    @State var isRepeatPasswordVisible = false
    @State private var isActive = false
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            HStack(spacing: 25) {
                ActionButton(imageName: K.IMAGES.backButton, clickAction: {
                    showRegistration.toggle()
                })
                Spacer()
            }.padding()
            Image(K.IMAGES.LOGO_NAME)
                .resizable()
                .padding()
                .frame(width: 200, height: 200, alignment: .top)
                .aspectRatio(contentMode: .fit)
            LocalTextField(label: K.LABELS.emailLabel, inputText: self.$email, color: self.color)
            HStack(spacing: 15) {
                if isPasswordVisible {
                    TextField(K.LABELS.passwordLabel, text: self.$passwd)
                } else {
                    SecureField(K.LABELS.passwordLabel, text: self.$passwd)
                }
                Button(action: {
                    self.isPasswordVisible.toggle()
                }, label: {
                    Image(systemName: self.isPasswordVisible ? K.IMAGES.passwordVisible : K.IMAGES.passwordNotVisible).foregroundColor(self.color)
                })
            }
            .padding()
            .frame(height: 40)
            .background(RoundedRectangle(cornerRadius: 20).stroke(!(self.passwd.isEmpty) ? Color(K.COLORS.primaryColor) : self.color, lineWidth: 1.0))
            .padding(.top, 10)
            HStack(spacing: 15) {
                if isRepeatPasswordVisible {
                    TextField(K.LABELS.passwordLabel, text: self.$repasswd)
                } else {
                    SecureField(K.LABELS.passwordLabel, text: self.$repasswd)
                }
                Button(action: {
                    self.isRepeatPasswordVisible.toggle()
                }, label: {
                    Image(systemName: self.isRepeatPasswordVisible ? K.IMAGES.passwordVisible : K.IMAGES.passwordNotVisible).foregroundColor(self.color)
                })
            }
            .padding()
            .frame(height: 40)
            .background(RoundedRectangle(cornerRadius: 20).stroke(!(self.repasswd.isEmpty) ? Color(K.COLORS.primaryColor) : self.color, lineWidth: 1.0))
            .padding(.top, 10)
            Button(action: {}, label: {
                Text("Log in")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 40)
            }).background(Color(K.COLORS.primaryColor))
            .frame(height: 45)
            .cornerRadius(25)
            .padding(.vertical, 20)
            Spacer()
        }
        .padding(.horizontal, 20)
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .ignoresSafeArea(.container, edges: [.top, .horizontal])
    }
}
