//
//  HomePantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct HomePantallaView: View {
    var body: some View {
        VStack {
            MiComponentPrivado()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
    
    private func MiComponentPrivado() -> some View {
        return Text("Este es mi popio componente")
    }
}

struct HomePantallaView_Previews: PreviewProvider {
    static var previews: some View {
        HomePantallaView()
    }
}
