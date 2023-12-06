//
//  LoginView.swift
//  4salesnbuyscreen
//
//  Created by Imtious Bari on 5/12/23.
//

import SwiftUI


struct LoginView: View {
    var body: some View {
        VStack{
            ZStack{
                TopCard()
                LogoCard()
                LoginCred()
            }
        }
        .background(Color.LoginBG)
    }
}

//LoginCred view => Need to convert as component
struct LoginCred: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            Text("Welcome to 4saleNbuy")
                .font(.title3)
                .fontWeight(.bold)
//                .padding(.top,-110)
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Log In") {
                // Handle login action
                print("Email: \(email), Password: \(password)")
            }
//            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
        }
    }
}

//LogoCard view => Need to convert as component
struct LogoCard: View {
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding(.leading,100)
                .padding(.trailing,100)
                .padding(.top,20)
                .padding(.bottom,20)
        }
        .background(Color.white)
        .cornerRadius(15)
        //        .shadow(radius: 5)
        .padding()
        .padding(.top,-340)
        
    }
}

//TopCard view => Need to convert as component
struct TopCard: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left")
                    .foregroundColor(.white)
                    .padding()
                Text("LOGIN")
                    .foregroundColor(.white)
                    .font(.headline)
                Spacer()
            }
            .padding(.bottom,100)
            .background(Color.Primary)
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
