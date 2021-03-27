//
//  DiagramCardView.swift
//  CoursesDemo
//
//  Created by tezz on 21/03/21.
//

import SwiftUI

struct DiagramCardView: View {
    
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            type
            
            content
        }
        .frame(width: width, height: height, alignment: .center)
        .background(Color("Color5").opacity(0.65))
        .cornerRadius(20.0)
        .padding(.bottom, 5)
    }
    
    var type: some View {
        HStack {
            Text(diagram.type)
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.red)
                .padding(.horizontal, 20)
                .padding(.top, 10)
        }
    }
    
    var content: some View {
        ScrollView {
            VStack(alignment: .center) {
                HStack {
                    Text(diagram.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                
                Image(diagram.diagram)
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                
                Text(diagram.description)
                    .font(.headline)
            }
            .padding(10)
            .background(Color("Color5"))
            .cornerRadius(20)
            .padding(5)
        }
    }
}

struct DiagramCardView_Previews: PreviewProvider {
    static var previews: some View {
        DiagramCardView()
            .previewDevice("iPad (8th generation)")
    }
}

class DiagramModel {
    var type = "DIAGRAM"
    var title = "Components of an Image Processing System"
    var diagram = "ComponentsOfAnImageProcessingSystem"
    var description = "These are the basic components comprising a typical general-purpose system used for digital image processing.\n\nThe function of each component is discussed in the following paragraphs, starting with image sensing.\n\nWith reference to sensing, two elements are required to acquire digital images.\n\nThe first is a physical device that is sensitive to the energy radiated by the object we wish to image.\n\nThe second, called a digitizer, is a device for converting the output of the physical sensing device into digital form.\n\nFor instance, in a digital video camera, the sensors produce an electrical output proportional to light intensity.\n\nSpecialized image processing hardware usually consists of the digitizer just mentioned, plus hardware that performs other primitive operations, such as an arithmetic logic unit (ALU), that performs arithmetic and logical operations in parallel on entire images.\n\nOne example of how an ALU is used is in averaging images as quickly as they are digitized, for the purpose of noise reduction.\n\nThis type of hardware sometimes is called a front-end subsystem, and its most distinguishing characteristic is speed.\n\nIn other words, this unit performs functions that require fast data throughputs (e.g., digitizing and averaging video images at 30 frames/s) that the typical main computer cannot handle.\n\nThe computer in an image processing system is a general-purpose computer and can range from a PC to a supercomputer.\n\nIn dedicated applications, sometimes custom computers are used to achieve a required level of performance, but our interest here is on general-purpose image processing systems.\n\nIn these systems, almost any well-equipped PC-type machine is suitable for off-line image processing tasks."
}

var diagram = DiagramModel()
