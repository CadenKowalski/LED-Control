//
//  ContentView.swift
//  LED Control
//
//  Created by Caden Kowalski on 8/21/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Toggle("On / Off", isOn: $viewModel.isOn)
                .foregroundColor(Color.white)
                .tint(Color("Accent"))
            
            Spacer()
        }
        
        .padding([.leading, .trailing], 32)
        .background(Color("Background"))
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        HomeScreen()
    }
}
