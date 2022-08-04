//
//  CircleImage.swift
//  CS4540_Project
//
//  Created by Jorge Mata Jr on 7/27/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
        
        var body: some View {
            image.resizable()
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth:4
                    )}
                .shadow(radius: 7).scaledToFit()
                .scaledToFit()
                .frame(width: 300, height: 500)
        }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("hamlet"))
    }
}
