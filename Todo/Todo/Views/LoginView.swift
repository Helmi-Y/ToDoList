//
//  LoginView.swift
//  Todo
//
//  Created by Helmi Yatim on 5/1/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "Trojan Reminder",
                           subtitle: "Get things done!",
                           angle: 15,
                           background: .blue)
                
                //Login Form
                Form{
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Log In",
                             background: .blue) {
                        // Attempt log in
                        viewModel.login()
                    }
                             .padding()
                }
                
                .offset(y: -50)
                
                //Create Account
                VStack{
                    Text("New around here?")
                    
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
                
            }
        }

        }
    }

#Preview {
    LoginView()
}
