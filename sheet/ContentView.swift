//
//  ContentView.swift
//  sheet
//
//  Created by JFJ on 26/01/2020.
//  Copyright © 2020 JFJ. All rights reserved.
//



import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var name: String
    
    var body: some View {
        Button ("Dismiss") {
                   //show the sheet
            self.presentationMode.wrappedValue.dismiss()
               }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    
    var body: some View {
        Button ("Show Sheet") {
            //show the sheet
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Waga Odongo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
