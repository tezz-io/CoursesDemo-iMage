//
//  ContentView.swift
//  CoursesDemo
//
//  Created by tezz on 21/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var width = UIScreen.main.bounds.width
    @State var height = UIScreen.main.bounds.height - 50
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                Text("Basics of Image Processing")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                DefinitionCardView()
                QuizCardView()
                DiagramCardView()
            }
            .padding(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPad (8th generation)")
    }
}
