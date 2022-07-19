//
//  LoginView.swift
//  ios-gimnasio
//
//  Created by Ronaldo Andre Vargas Huaman on 8/07/22.
//

import SwiftUI

struct BienvenidaPantallaView: View {
    var body: some View {
        ZStack{
            Image(uiImage: Assets.Bienvenida.imageBienvenidaGym.image)
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
                
                VStack(alignment: .center){
                    
                    Spacer()
                    
                    Text(L10n.Bienvenida.title)
                        .foregroundColor(Color.white)
                        .font(.custom("Poppins-ExtraLight", size: 24))
                    
                    Text(L10n.Bienvenida.description)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .font(.custom("Poppins-SemiBoldItalic", size: 32))
                    
                    Text(L10n.Bienvenida.registrer)
                        .foregroundColor(Color("ColorPlomoEncendido"))
                    
                    ZStack{
                        
                        Button {
                            
                        } label: {
                            Text(L10n.Bienvenida.singIn)
                                .padding()
                                .frame(width: 244, height: 55)
                                .font(.custom("Poppins-Bold", size: 22))
                                .foregroundColor(Color.black)
                                .background(Color(Assets.Colours.colorAmarillo.name))
                                .cornerRadius(15)
                        }
                    }
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 50, trailing: 0))
                }
            }
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        // 1
        BienvenidaPantallaView()
            .environment(\.locale, .init(identifier: "en"))
        
    }
}
