//
//  Appearance.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 02.06.23.
//

import SwiftUI

enum Appearance: Int, CaseIterable, Identifiable {
    case light, dark, automatic

    var id: Int { self.rawValue } // swiftlint:disable:this identifier_name

    var name: String {
        switch self {
        case .light: return "Light"
        case .dark: return "Dark"
        case .automatic: return "Automatic"
        }
    }

    func getColorScheme() -> ColorScheme? {
        switch self {
        case .automatic: return nil
        case .light: return .light
        case .dark: return .dark
        }
    }
}
