//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Berkin Sili on 2.04.2022.
//

import SwiftUI

struct FlagImage: View {
    let name: String
    
    var body: some View {
        Image(name)
                    .renderingMode(.original)
                    .clipShape(Capsule())
                    .shadow(radius: 5)
    }
}
