//
//  L10n.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import Foundation

internal enum L10n {
    
    internal enum Bienvenida {
        
        internal static let title = L10n.tr("Localizable", "Bienvenida.Title")
        internal static let continueWithFacebook = L10n.tr("Localizable", "Bienvenida.TextoDeFacebook")
        
    }
    
    internal enum Registro {
        
    }
    
    internal enum Login {
        
    }
    
    
    internal enum MiCuenta {
        
    }
    
}

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
