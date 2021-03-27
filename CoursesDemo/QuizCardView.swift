//
//  QuizCardView.swift
//  CoursesDemo
//
//  Created by tezz on 21/03/21.
//

import SwiftUI

struct QuizCardView: View {
    @State var selected = ""
    @State var highlighted = -1
    @State var isCorrect = false
    @State var submitted = false
    
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            type
            VStack(alignment: .center) {
                question
                options
                submit
            }
            .padding(10)
            .background(Color("Color5"))
            .cornerRadius(20)
            .padding(5)
        }
        .frame(width: width, height: height, alignment: .center)
        .background(Color("Color5").opacity(0.65))
        .cornerRadius(20.0)
    }
    
    var type: some View {
        HStack {
            Text(quiz.type)
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.red)
                .padding(.horizontal, 20)
                .padding(.top, 10)
        }
    }
    
    var question: some View {
        HStack {
            Text(quiz.question)
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color("Color1"))
                .multilineTextAlignment(.leading)
        }.padding(10)
    }
    
    var options: some View {
        VStack(alignment: .center) {
            ForEach(quiz.options, id:\.self) { option in
                Button(action: {
                    self.selected = option
                }) {
                    HStack {
                        Spacer()
                        
                        Text(option)
                            .multilineTextAlignment(.leading)
                            .font(.headline)
                            .foregroundColor(Color("Color1"))
                        
                        Spacer()
                    }
                    .padding(8)
                    .background(
                        (self.selected != option) ?
                            Color.gray :
                            (isCorrect && (quiz.answer == self.selected)) ?
                            Color(.green) : (!isCorrect && submitted) ? Color.red :
                            Color("Color3"))
                    .cornerRadius(12.0)
                }.disabled(submitted)
            }
        }
        .padding(10)
    }
    
    var submit: some View {
        Button(action: {
            self.isCorrect = (quiz.answer == self.selected)
            self.submitted = true
        }) {
            Text("Submit")
                .font(.headline)
                .padding(7)
                .padding(.horizontal)
                .background(Color("Color3"))
                .cornerRadius(12.0)
        }
    }
}

struct QuizCardView_Previews: PreviewProvider {
    static var previews: some View {
        QuizCardView()
            .previewDevice("iPad (8th generation)")
    }
}

class QuizModel {
    var type = "QUIZ"
    var question = "What does the total number of pixels in the region defines?"
    var options = ["Perimeter", "Area", "Intensity", "Brightness"]
    var answer = "Area"
    var explanation = "The area of a region is defined by the total number of pixels in the region. The perimeter is given the number of pixels along the length of the boundary of the region."
}

var quiz = QuizModel()
