//
//  IronSetApp.swift
//  IronSet
//
//  Created by Stephen Dawes on 06/09/2024.
//

import SwiftUI

@main
struct IronSetApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
//
//  ContentView.swift
//  IronSet
//
//  Created by Stephen Dawes on 06/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
//
//  IntroScreen.swift
//  IronSet
//
//  Created by Stephen Dawes on 06/09/2024.
//

import SwiftUI

struct IntroScreen: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    IntroScreen()
}
