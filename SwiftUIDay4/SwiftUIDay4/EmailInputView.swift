//
//  EmailInputView.swift
//  SwiftUIDay4
//
//  Created by DY S on 6/22/24.
//

import SwiftUI

struct EmailInputView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showForgotPasswordAlert = false
    
    var body: some View {
        HStack {
            Spacer().frame(width: 60)
            VStack {
                TextField("Email Address", text: $email)
                    .padding()
                    .background(.white)
                    .padding(.bottom, -7)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(.white)
                    .padding(.bottom, -20)
                
                // 비밀번호 잊음 문구 버튼
                Button(action: {
                    self.showForgotPasswordAlert = true
                }, label: {
                    HStack {
                        Spacer()
                        Text("Forgot your password?")
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.trailing)
                            .font(.system(size: 14))
                            .padding(.init(top: 20, leading: 0, bottom: 20, trailing: 0))
                    }
                })
                .alert(isPresented: $showForgotPasswordAlert, content: {
                    Alert(title: Text("이런!"), message: Text("비밀번호를 잊으셨군요!"))
                })
            }
            Spacer().frame(width: 60)
        }
    }
}
