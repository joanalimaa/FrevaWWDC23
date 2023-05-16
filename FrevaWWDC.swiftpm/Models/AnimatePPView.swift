//
//  AnimateView.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 19/04/23.
//

import SwiftUI

struct AnimatePPView: View {
    
    @State var Point = "PP_"
    @State var index = 0
    
    let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        Image(Point + "\(index)")
            .resizable()
            .scaledToFit()
            .onReceive(timer) { _ in
                if (index < 3){
                    index += 1
                }else{
                    index = 0
                }
            }
        
    }
}

struct AnimatePPView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatePPView()
    }
}
