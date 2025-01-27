//
//  RegisterView.swift
//  Todo
//
//  Created by Helmi Yatim on 5/1/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Trojan Register",
                       subtitle: "Be an Organized Trojan",
                       angle: -15,
                       background: .blue)
        }
        
        Form{
            TextField("Full Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Create Account",
                     background: .blue) {
                viewModel.register()
                // Attempt Registration
            }
            
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
