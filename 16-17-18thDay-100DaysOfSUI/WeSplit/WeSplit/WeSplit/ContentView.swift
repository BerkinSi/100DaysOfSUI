//
//  ContentView.swift
//  WeSplit
//
//  Created by Berkin Sili on 3.02.2022.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Herimone","Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        NavigationView{
            Form{
                Picker("Selected student is", selection: $selectedStudent) {
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
