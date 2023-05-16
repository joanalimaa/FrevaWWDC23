//
//  AnimatePeCView.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 19/04/23.
//

import SwiftUI

struct AnimatePeCView: View {
    @State var PandH = "PeC_"
    @State var index = 0
    
    let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        Image(PandH + "\(index)")
            .resizable()
            .scaledToFit()
            .onReceive(timer) { _ in
                if (index < 15){
                    index += 1
                }else{
                    index = 0
                }
            }
    }
}

struct AnimatePeCView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatePeCView()
    }
}
