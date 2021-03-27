//
//  DefinitionCardView.swift
//  CoursesDemo
//
//  Created by tezz on 21/03/21.
//

import SwiftUI

struct DefinitionCardView: View {
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            type
            VStack(alignment: .leading) {
                title
                
                description
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
            Text(card.type)
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.red)
                .padding(.horizontal, 20)
                .padding(.top, 10)
        }
    }
    
    var title: some View {
        HStack {
            Text(card.title)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color("Color1"))
                .multilineTextAlignment(.leading)
            
            Spacer()
            
            HStack {
                Image(systemName: "quote.bubble.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color("Color1"))
            }
        }.padding(10)
    }
    
    var description: some View {
        VStack {
            Text(card.description)
                .multilineTextAlignment(.leading)
                .font(.headline)
                .foregroundColor(Color("Color1"))
        }
        .padding(10)
    }
}

struct DefinitionCardView_Previews: PreviewProvider {
    static var previews: some View {
        DefinitionCardView()
            .previewDevice("iPad (8th generation)")
    }
}

struct DefinitionModel {
    var type = "DEFINITION"
    var title = "Image Segmentation"
    var description = "An image may be defined as a two-dimensional function, f(x, y), where x and y are spatial coordinates, and the amplitude of f at any pair of coordinates (x, y) is called the intensity or gray level of the image at that point."
}

var card = DefinitionModel()
