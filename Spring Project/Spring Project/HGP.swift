//
//  HGP.swift
//  Spring Project
//
//  Created by Kenlon Jamone Jones Jr. on 5/20/26.
//

import SwiftUI

struct HGP: View {
    var body: some View {
        
        VStack {
            
            Image("HGP")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
            
            ScrollView {
                Text("The Hidden Genius Project trains and mentors Black male youth in technology creation, entrepreneurship, and leadership skills to transform their lives and communities.")
                    .padding()
                    .italic()
                    .font(.headline)
            }
            
            Spacer()
            
        }
        
        
        
    }
}


#Preview {
    HGP()
}
