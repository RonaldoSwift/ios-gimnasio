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
        internal static let description = L10n.tr("Localizable", "Bienvenida.Description")
        internal static let registrer = L10n.tr("Localizable", "Bienvenida.Register")
        internal static let singIn = L10n.tr("Localizable", "Bienvenida.SignIn")
        
    }
    
    internal enum Login {
        internal static let title = L10n.tr("Localizable", "Login.Title")
        internal static let userName = L10n.tr("Localizable", "Login.UserName")
        internal static let userPasword = L10n.tr("Localizable", "Login.UserPasword")
        internal static let forgot = L10n.tr("Localizable", "Login.Forgot")
        internal static let sign = L10n.tr("Localizable", "Login.Sign")
        internal static let didnt = L10n.tr("Localizable", "Login.Didnt")
        internal static let signHup = L10n.tr("Localizable", "Login.SignHup")
    }
    
    internal enum Registro {
        internal static let title = L10n.tr("Localizable", "Registro.Title")
        internal static let email = L10n.tr("Localizable", "Registro.Email")
        internal static let pasword = L10n.tr("Localizable", "Registro.Pasword")
        internal static let confirmationPasword = L10n.tr("Localizable", "Registro.ConfirmationPasword")
        internal static let signUp = L10n.tr("Localizable", "Registro.SignUp")
        internal static let or = L10n.tr("Localizable", "Registro.Or")
        internal static let ifYou = L10n.tr("Localizable", "Registro.IfYou")
        internal static let signIn = L10n.tr("Localizable", "Registro.SignIn")
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
