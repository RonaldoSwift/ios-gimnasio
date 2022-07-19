//
//  RegistroPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import SwiftUI

struct RegistroPantallaView: View {
    
    @State private var eMail: String = ""
    @State private var pasword: String = ""
    
    var body: some View {
        ZStack{
            Image(uiImage: Assets.Registro.signIn.image)
                .resizable()
            
            ZStack{
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(
                            colors: [
                                Color.black.opacity(0.0),
                                Color("ColorDegradente")
                            ]),
                                       startPoint: .top,
                                       endPoint: .bottom
                                      )
                    )
                
                VStack{
                    
                    Spacer()
                    
                    Text(L10n.Registro.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .font(.custom("Poppins-SemiBoldItalic", size: 32))
                    
                    HStack{
                        Image(uiImage: Assets.Registro.mail.image)
                            .resizable()
                            .frame(width: 20, height: 20)
                        TextField(L10n.Registro.userName, text: $eMail)
                    }
                    .frame(width: 326, height: 50)
                    .font(.custom("Poppins-Light", size: 17))
                    .foregroundColor(Color.black)
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                    
                    HStack{
                        Image(uiImage: Assets.Registro.lock.image)
                            .resizable()
                            .frame(width: 20, height: 20)
                        TextField(L10n.Registro.userPasword, text: $pasword)
                    }
                    .frame(width: 326, height: 50)
                    .font(.custom("Poppins-Light", size: 17))
                    .foregroundColor(Color.black)
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 4, trailing: 0))
                    
                    Text(L10n.Registro.forgot)
                    
                    ZStack{
                        
                        Button {
                            
                        } label: {
                            Text(L10n.Registro.sign)
                                .padding()
                                .frame(width: 326, height: 50)
                                .font(.custom("Poppins-Medium", size: 17))
                                .foregroundColor(Color.black)
                                .background(Color(Assets.Colours.colorAmarillo.name))
                                .cornerRadius(15)
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    
                    HStack{
                        Text(L10n.Registro.didnt)
                        
                        Button {
                            
                        } label: {
                            Text(L10n.Registro.signHup)
                                .foregroundColor(Color(Assets.Colours.colorAmarillo.name))
                        }
                    }
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 0))
                }
                .foregroundColor(Color.white)
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RegistroPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroPantallaView()
    }
}
