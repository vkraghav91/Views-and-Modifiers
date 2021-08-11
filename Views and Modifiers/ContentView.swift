//
//  ContentView.swift
//  Views and Modifiers
//
//  Created by Varun Kumar Raghav on 05/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Text("hello")
        .largeTitle()
        }
      }

struct Titles: ViewModifier{
    func body(content: Content) -> some View {
        VStack{
            content.font(.largeTitle)
                .foregroundColor(.blue)
        }
    }
    
}
extension View{
    func largeTitle() -> some View {
        modifier(Titles())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
