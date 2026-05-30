//
//  Tab View.swift
//  Spring Project
//
//  Created by Kenlon Jamone Jones Jr. on 5/20/26.
//

import SwiftUI

struct Tab_View: View {
    var body: some View {
        TabView {
            
            Session_4()
                .tabItem {
                    Label("Kenlon Jones", systemImage:"person")
                }
            
            HGP()
                .tabItem {
                    Label("HGP", systemImage:"lightbulb.fill")
                }
            }
        }
    }

#Preview {
    Tab_View()
}
