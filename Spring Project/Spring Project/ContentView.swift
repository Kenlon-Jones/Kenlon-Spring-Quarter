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
                .foregroundStyle(.black)
            
            Text("Kenlon Jones")
                .font(Font.largeTitle.bold())
            
            Image("Kenlon")
                .resizable()
                .frame(width: 200, height:350)
                .clipShape(RoundedRectangle(cornerRadius: 30.0))
            
            Text("I am a 9th student attending Summit Tamalpias, I am in the Rich9 cohort at the Hidden Genius Project, and I am in the Boost@BerkeleyHaas program. I was born on November 16th, 2010 in Berkeley, CA, and I live in Richmond, CA. My dream is to become a Maxillofacial Surgeon as my career and I plan to acheive that by attending UC Berkeley for Undergrad and UCSF for Med School.")
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    session1()
}
