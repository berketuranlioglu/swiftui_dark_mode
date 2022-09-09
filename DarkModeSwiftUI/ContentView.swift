//
//  ContentView.swift
//  DarkModeSwiftUI
//
//  Created by 109894 on 8/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var currentMode
    
    var body: some View {
        ZStack {
            // Background
            Color("Background").edgesIgnoringSafeArea(.all)
            
            // Text in the middle
            currentMode == .dark
            ? Text("Dark mode")
            : Text("Light mode")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            ContentView().preferredColorScheme($0)
        }
        
        /* OR
        ContentView()
        ContentView().environment(\.colorScheme, .dark)
        */
    }
}
