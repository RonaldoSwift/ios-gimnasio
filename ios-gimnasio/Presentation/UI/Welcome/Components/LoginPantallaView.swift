//
//  RegistroPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import SwiftUI

struct LoginPantallaView: View {
    
    @State private var eMail: String = ""
    @State private var pasword: String = ""
    
    var body: some View {
        ZStack{
            
            VStack{
                Image(uiImage: Assets.Login.signIn.image)
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            
            ZStack{
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [
                                    Color.black.opacity(0.1),
                                    Color("ColorDegradente")
                                ]),
                            startPoint: .top,
                            endPoint: .center
                        )
                    )
                
                VStack{
                    Spacer()
                    
                    Text(L10n.Login.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .font(.custom("Poppins-Bold", size: 32))
                    
                    HStack{
                        Image(uiImage: Assets.Login.mail.image)
                            .resizable()
                            .frame(width: 20, height: 20)
                        TextField(L10n.Login.userName, text: $eMail)
                    }
                    .frame(height: 50)
                    .font(.custom("Poppins-Light", size: 17))
                    .foregroundColor(Color.black)
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    HStack{
                        Image(uiImage: Assets.Login.lock.image)
                            .resizable()
                            .frame(width: 20, height: 20)
                        TextField(L10n.Login.userPasword, text: $pasword)
                    }
                    .frame(height: 50)
                    .font(.custom("Poppins-Light", size: 17))
                    .foregroundColor(Color.black)
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    
                    Text(L10n.Login.forgot)
                        .foregroundColor(Color.white)
                    
                    ZStack{
                        
                        NavigationLink {
                            RegistroPantallaView()
                        } label: {
                            Text(L10n.Login.sign)
                                .padding()
                                .frame(width: 326, height: 50)
                                .font(.custom("Poppins-Bold", size: 17))
                                .foregroundColor(Color.black)
                                .background(Color(Assets.Colours.colorAmarillo.name))
                                .cornerRadius(15)
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    
                    HStack{
                        Text(L10n.Login.didnt)
                            .foregroundColor(Color.white)
                        
                        Text(L10n.Login.signHup)
                            .font(.custom("Poppins-Bold", size: 15))
                            .foregroundColor(Color(Assets.Colours.colorAmarillo.name))
                            .onTapGesture {
                                print("Hola")
                            }
                        
                    }
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 0))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .padding(30)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RegistroPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPantallaView()
    }
}
