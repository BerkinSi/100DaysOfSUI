//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Berkin Sili on 30.03.2022.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
            GridStack(rows: 4, columns: 4) { row, col in
                HStack {
                        Image(systemName: "\(row * 4 + col).circle")
                        Text("R\(row) C\(col)")
                    }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
