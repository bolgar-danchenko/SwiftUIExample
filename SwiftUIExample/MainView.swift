//
//  MainView.swift
//  SwiftUIExample
//
//  Created by Konstantin Bolgar-Danchenko on 14.12.2022.
//

import Foundation
import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            LessonCodeView()
                .tabItem {
                    Label("Lesson Code", systemImage: "swift")
                }
            LoginView()
                .tabItem {
                    Label("Login", systemImage: "person")
                }
            ListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()

    }
}
