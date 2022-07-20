//
//  LoginPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import SwiftUI

struct MiCuentaPantallaView: View {
    var body: some View {
        
        ZStack{
            VStack{
                Image("ImageSingUp")
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            ZStack{
                Image("")
                
            }
            
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        MiCuentaPantallaView()
    }
}
