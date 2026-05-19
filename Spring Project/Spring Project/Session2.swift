//
//  Session2.swift
//  Spring Project
//
//  Created by Kenlon Jamone Jones Jr. on 5/9/26.
//

import SwiftUI

struct Session2: View {
    var body: some View {
        VStack(){
            Text("Kenlon Jones")
                .padding()
                .border(Color.blue, width: 2)
                .cornerRadius(5)
                .shadow(color: .gray, radius: 3, x: 0, y: 5)
                
            Image("Kenlon")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    Session2()
}
