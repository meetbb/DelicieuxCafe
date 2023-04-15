//
//  ContentView.swift
//  DélicieuxCafé
//
//  Created by Meet Brahmbhatt on 14/04/23.
//

import SwiftUI

struct ContentView: View {

    @State var color: Color = Color.black.opacity(0.5)
    @State var email = ""
    @State var passwd = ""
    @State var isPasswordVisible = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            GeometryReader {_ in
                VStack {
            Image(K.IMAGES.LOGO_NAME)
                .resizable()
                .padding()
                .frame(width: 200, height: 200, alignment: .top)
                .aspectRatio(contentMode: .fit)
            Text(K.LABELS.LOGIN_LABEL)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(K.COLORS.primaryColor))
                .padding(.vertical, 35)
            LocalTextField(label: K.LABELS.emailLabel, inputText: self.$email, color: self.color).padding(.bottom, 10)
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
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Text("Forget password")
                        .fontWeight(.bold)
                        .foregroundColor(Color(K.COLORS.primaryColor))
                })
            }.padding(.top, 20)
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
        }
                .padding(.horizontal, 20)
                .ignoresSafeArea(.keyboard, edges: .bottom)
                .ignoresSafeArea(.container, edges: [.top, .horizontal])
            }
            Button(action: {}, label: {
                Text("Register")
                    .fontWeight(.bold)
                    .foregroundColor(Color(K.COLORS.primaryColor))
            }).padding()
        }
    }
}

struct LocalTextField: View {
    var label: String
    @Binding var inputText: String
    var color: Color
    
    var body: some View {
        TextField(label, text: $inputText)
            .padding()
            .frame(height: 40)
            .background(RoundedRectangle(cornerRadius: 20).stroke(self.inputText != "" ? Color(K.COLORS.primaryColor) : self.color, lineWidth: 1.0))
    }
}

extension Optional where Wrapped == String {
    var isBlank: Bool {
        return self == ""
    }
}
