//
//  Session 4.swift
//  Spring Project
//
//  Created by Kenlon Jamone Jones Jr. on 5/20/26.
//

import SwiftUI

struct Session_4: View {
    var body: some View {
        VStack{
            Image("Kenlon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
            
            HStack {
                Image(systemName: "lightbulb")
                Text("Kenlon Jones")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "lightbulb.max")
                
            }
            Divider()
                .padding()
            
            ScrollView {
                Text("I am a 9th student attending Summit Tamalpias, I am in the Rich9 cohort at the Hidden Genius Project, and I am in the Boost@BerkeleyHaas program. I was born on November 16th, 2010 in Berkeley, CA, and I live in Richmond, CA. My dream is to become a Maxillofacial Surgeon as my career and I plan to acheive that by attending UC Berkeley for Undergrad and UCSF for Med School.")
                    .padding()
                    .italic()
                    .font(.headline)
            }
            
            Spacer()
        }
        
    }
}

#Preview {
    Session_4()
}
