//
//  LoginPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import SwiftUI

struct RegistroPantallaView: View {
    
    @State private var eMail: String = ""
    @State private var pasword: String = ""
    @State private var confirmationPasword: String = ""
    
    var body: some View {
        
        ZStack{
            VStack{
                Image(uiImage: Assets.Registro.imageSingUp.image)
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
            }
            VStack(alignment: .center, spacing: 12){
                
                Spacer()
                
                Text(L10n.Registro.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .font(.custom("Poppins-Bold", size: 32))
                
                HStack{
                    Image(uiImage: Assets.Registro.mail.image)
                        .resizable()
                        .frame(width: 20, height: 20)
                    TextField(L10n.Registro.email, text: $eMail)
                }
                .frame(height: 50)
                .font(.custom("Poppins-Light", size: 17))
                .foregroundColor(Color.black)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                .background(Color.white)
                .cornerRadius(10)
                
                HStack{
                    Image(uiImage: Assets.Registro.lock.image)
                        .resizable()
                        .frame(width: 20, height: 20)
                    TextField(L10n.Registro.pasword, text: $pasword)
                }
                .frame(height: 50)
                .font(.custom("Poppins-Light", size: 17))
                .foregroundColor(Color.black)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                .background(Color.white)
                .cornerRadius(10)
                
                HStack{
                    Image(uiImage: Assets.Registro.lock.image)
                        .resizable()
                        .frame(width: 20, height: 20)
                    TextField(L10n.Registro.confirmationPasword, text: $confirmationPasword)
                }
                .frame(height: 50)
                .font(.custom("Poppins-Light", size: 17))
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                .background(Color.white)
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text(L10n.Registro.signUp)
                        .padding()
                        .frame(width: 326, height: 50)
                        .font(.custom("Poppins-Bold", size: 17))
                        .foregroundColor(Color.black)
                        .background(Color("ColorAmarillo"))
                        .cornerRadius(10)
                }
                
                HStack{
                    Rectangle()
                        .fill(.white)
                        .frame(width: .infinity, height: 3)
                    
                    Text(L10n.Registro.or)
                        .foregroundColor(Color.white)
                    
                    Rectangle()
                        .fill(.white)
                        .frame(width: .infinity, height: 3)
                }
                
                HStack(alignment: .center, spacing: 25){
                    Button {
                        
                    } label: {
                        Image(uiImage: Assets.Registro.aplee.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(uiImage: Assets.Registro.facebookIcono.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(uiImage: Assets.Registro.googleIcono.image)
                            .resizable()
                            .frame(width: 25, height: 27)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(13)
                    }
                    
                }
                HStack{
                    Text(L10n.Registro.ifYou)
                        .foregroundColor(Color.white)
                    Text(L10n.Registro.signIn)
                        .font(.custom("Poppins-Bold", size: 15))
                        .foregroundColor(Color("ColorAmarillo"))
                        .onTapGesture {
                            print("Hola")
                        }
                }
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 0))
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .padding(30)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroPantallaView()
    }
}
