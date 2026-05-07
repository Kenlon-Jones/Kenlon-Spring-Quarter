//
//  ContentView.swift
//  Spring Project
//
//  Created by Kenlon Jamone Jones Jr. on 4/29/26.
//

import SwiftUI

struct session1: View {
    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Kenlon Jones")
            Text("I am a 9th student attending Summit Tamalpias and I am in the Rich9 cohort at the Hidden Genius Project")
            
            Image("Kenlon")
                .resizable()
                .frame(width: 200, height:350)
            
            Image(systemName: "folder.circle.fill")
        }
        .padding()
    }
}

#Preview {
    session1()
}
