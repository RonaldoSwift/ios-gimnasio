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
        
        //        ZStack{
        //            Image("FitnesLogo")
        //                .resizable()
        //            VStack{
        //                Text(L10n.Bienvenida.title)  <-
        //                    .font(.custom("Poppins-Bold", size: 36))
        //                    .frame(maxWidth: .infinity)
        //                    .border(Color.black, width: 3.0)
        //                    .cornerRadius(10)
        //                    .padding()
        //
        //                Spacer()
        //
        //                Text("TUS MEJORES OPCIONES DE ENTRENAMIENTO")
        //                    .font(.title3)
        //                    .frame(maxWidth: .infinity)
        //                    .background(Color(Assets.Colours.primary.name))
        //                    .border(Color.white, width: 3.0)
        //                    .cornerRadius(10)
        //                    .padding()
        //
        //                Spacer()
        //
        //                HStack{
        //                    Button {
        //
        //                    } label: {
        //                        Text("REGISTRARSE")
        //                    }
        //                    .padding()
        //                    .frame(maxWidth: .infinity)
        //                    .background(Color.white)
        //                    .border(Color.blue, width: 3.0)
        //                    .cornerRadius(10)
        //                    .padding()
        //
        //                    Spacer()
        //
        //                    Button {
        //
        //                    } label: {
        //                        VStack{
        //                            Image(systemName: "person")
        //                                .resizable()
        //                                    .aspectRatio(contentMode: .fill)
        //                                    .frame(width: 20.0, height: 25.0, alignment: .center)
        //                                    .clipShape(Circle())
        //
        //                            Text("INCICIAR SECION")
        //                        }
        //                    }
        //                    .frame(maxWidth: .infinity)
        //                    .background(Color.white)
        //                    .border(Color.blue, width: 3.0)
        //                    .cornerRadius(10)
        //                    .padding()
        //                }
        //
        //                Spacer()
        //
        //                Text("STRONG FITNES")
        //                    .font(.largeTitle)
        //                    .bold()
        //
        //                Button {
        //                    print("Hola mundo")
        //                } label: {
        //                    Image(uiImage: Assets.Bienvenida.facebookLog.image)
        //                        .resizable()
        //                        .aspectRatio(contentMode: .fill)
        //                        .frame(width: 80.0, height: 80.0, alignment: .center)
        //                        .clipShape(Circle())
        //                    Text(L10n.Bienvenida.continueWithFacebook)
        //
        //                }
        //                .foregroundColor(Color.white)
        //                .frame(maxWidth: .infinity)
        //                .background(Color.blue)
        //                .cornerRadius(10)
        //            }
        //            .padding()
        //        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        // 1
        BienvenidaPantallaView()
            .environment(\.locale, .init(identifier: "en"))
        
        // 1
        /* BienvenidaPantallaView()
         .environment(\.locale, .init(identifier: "es"))*/
    }
}
