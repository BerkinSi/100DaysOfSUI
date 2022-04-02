//
//  ViewModifier.swift
//  GuessTheFlag
//
//  Created by Berkin Sili on 2.04.2022.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}
extension View {
    
}
