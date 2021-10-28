//
//  ContentView.swift
//  ColoursAndTextFolding
//
//  Created by Russell Gordon on 2021-10-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            Color.yellow
            
            VStack {
                
                Spacer()
                
                // Semi-transparent purple
                Text("Hello")
                    .padding()
                    .background(Color("Transparent Purple"))
                
                Spacer()
                
                // When a Text view is given a simple string, it cannot be code-folded.
                Text("The quick brown fox jumped over the lazy dog.")
                
                Spacer()
                
                // Opaque green
                Text("Hello")
                    .padding()
                    .background(Color(hue: 120.0/360.0, saturation: 0.80, brightness: 0.70, opacity: 1.0))
                
                Spacer()
                
                // When a Text view is given a multi-line string, delimited by """ at the start and end, it can be code-folded.
                Text("""
                The quick brown
                fox jumped over
                the lazy dog.
                """)
                
                Spacer()

                // Semi-transparent green
                Text("Hello")
                    .padding()
                    .background(Color(hue: 120.0/360.0, saturation: 0.80, brightness: 0.70, opacity: 0.50))
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
