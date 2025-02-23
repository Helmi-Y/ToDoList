//
//  ProfileView.swift
//  Todo
//
//  Created by Helmi Yatim on 5/1/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user{
                    profile(user: user)
                } else{
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Trojan Profile")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user: User) -> some View{
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        //Info: Name, Email. Member Since
        VStack(alignment: .leading) {
            HStack{
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            HStack{
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            HStack{
                Text("Member Since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
            
        }
        .padding()
        
        //Signout
        Button("Log Out"){
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        
        Spacer()
    }
}



#Preview {
    ProfileView()
}
