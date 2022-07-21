//
//  LoginPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import SwiftUI

struct MiCuentaPantallaView: View {
    
    @State private var eMail: String = ""
    @State private var pasword: String = ""
    @State private var confirmationPasword: String = ""
    
    var body: some View {
        
        ZStack{
            VStack{
                Image(uiImage: Assets.MiCuenta.imageSingUp.image)
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
            VStack{
                Spacer()
                
                Text(L10n.MiCuenta.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .font(.custom("Poppins-Bold", size: 32))
                
                HStack{
                    Image(uiImage: Assets.MiCuenta.mail.image)
                        .resizable()
                        .frame(width: 20, height: 20)
                    TextField(L10n.MiCuenta.email, text: $eMail)
                }
                .frame(width: 326, height: 50)
                .font(.custom("Poppins-Light", size: 17))
                .foregroundColor(Color.black)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                .background(Color.white)
                .cornerRadius(15)
                
                HStack{
                    Image(uiImage: Assets.MiCuenta.lock.image)
                        .resizable()
                        .frame(width: 20, height: 20)
                    TextField(L10n.MiCuenta.pasword, text: $pasword)
                }
                .frame(width: 326, height: 50)
                .font(.custom("Poppins-Light", size: 17))
                .foregroundColor(Color.black)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                .background(Color.white)
                .cornerRadius(15)
                
                HStack{
                    Image(uiImage: Assets.MiCuenta.lock.image)
                        .resizable()
                        .frame(width: 20, height: 20)
                    TextField(L10n.MiCuenta.confirmationPasword, text: $confirmationPasword)
                }
                .frame(width: 326, height: 50)
                .font(.custom("Poppins-Light", size: 17))
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                .background(Color.white)
                .cornerRadius(15)
                
                ZStack{
                    Button {
                        
                    } label: {
                        Text(L10n.MiCuenta.signUp)
                            .padding()
                            .frame(width: 326, height: 50)
                            .font(.custom("Poppins-Bold", size: 17))
                            .foregroundColor(Color.black)
                            .background(Color("ColorAmarillo"))
                            .cornerRadius(15)
                    }
                    
                }
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                
                HStack{
                    Text("─────────")
                    Text(L10n.MiCuenta.or)
                    Text("─────────")
                }
                .foregroundColor(Color.white)
                
                HStack(alignment: .center, spacing: 25){
                    Button {
                        
                    } label: {
                        Image(uiImage: Assets.MiCuenta.aplee.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(uiImage: Assets.MiCuenta.facebookIcono.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(uiImage: Assets.MiCuenta.googleIcono.image)
                            .resizable()
                            .frame(width: 25, height: 27)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(13)
                    }
                    
                }
                HStack{
                    Text(L10n.MiCuenta.ifYou)
                        .foregroundColor(Color.white)
                    Text(L10n.MiCuenta.signIn)
                        .font(.custom("Poppins-Bold", size: 15))
                        .foregroundColor(Color("ColorAmarillo"))
                        .onTapGesture {
                            print("Hola")
                        }
                }
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 0))
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        MiCuentaPantallaView()
    }
}
