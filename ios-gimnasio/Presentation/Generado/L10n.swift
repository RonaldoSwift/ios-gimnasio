//
//  L10n.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import Foundation

internal enum L10n {
    
    internal enum Bienvenida {
        
        internal static let title = L10n.tr("Localizable", "Bienvenido.Title")
        
    }
    
    internal enum Registro {
        
    }
    
    internal enum Login {
        
    }
    
    
    internal enum MiCuenta {
        
    }
    
}

extension L10n {
    private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
        let format = NSLocalizedString(key, comment: "asdf")
        return String(format: format, locale: Locale.current, arguments: args)
    }
}
