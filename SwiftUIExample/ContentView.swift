//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Konstantin Bolgar-Danchenko on 14.12.2022.
//

import SwiftUI

struct Universe: Identifiable {
    var id: String { name }
    let name: String
}

struct ContentView: View {
    
    @State private var notificationsOn = false
    @State private var darkThemeOn = false
    @State private var savePasswordOn = true
    
    @State private var speed = 50.0
    @State private var isEditing = false
    
    @State private var universe: Universe?
    
    var body: some View {
        
        VStack {
            
            // MARK: - Task 1
            
            Form {
                Section {
                    Toggle(isOn: $notificationsOn) {
                        Text("Push Notifications")
                    }
                    Toggle(isOn: $darkThemeOn) {
                        Text("Dark Theme")
                    }
                }
                Toggle(isOn: $savePasswordOn) {
                    Text("Save Password")
                }
            }
            VStack(alignment: .leading, spacing: 40) {
                Slider(value: $speed, in: 0 ... 100) { isEditing in
                    self.isEditing = isEditing
                    print(isEditing)
                }
                Text("\(speed)")
                    .foregroundColor(speed >= 80 ? .red : .green)
            }
            .padding()
            
            VStack(spacing: 16) {
                Text("Какая киновселенная вам нравится больше?")
                Button(action: {
                    universe = Universe(name: "Marvel")
                }, label: {
                    Text("Marvel")
                })
                Button(action: {
                    universe = Universe(name: "DC")
                }, label: {
                    Text("DC")
                })
            }
            .alert(item: $universe) { universe in
                Alert(title: Text("Вы выбрали \(universe.name)"), dismissButton: .default(Text("OK")))
            }
            .padding(.bottom, 100)
            
            // MARK: - Task 2
            
            VStack {
                Text("Title").background(Color(.green))
                    .font(.system(size: 34, weight: .bold))
                Text("Regular text")
                    .font(.system(size: 28, weight: .regular))
                    .padding(.bottom, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
