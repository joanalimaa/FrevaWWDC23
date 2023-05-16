//
//  PPView.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 19/04/23.
//

import SwiftUI

struct PPView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        @State var Point = "PP_0"
        
        GeometryReader{ geometry in
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                HStack{
                    ZStack{
                        Image("speechBubbleB")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 0.6)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        
                        Text("'Ponta de pé'")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.4)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 500)
                        Text("Translates roughly to 'tip of foot' and consists of touching the tip of your foot on the ground, alternating between both legs.")
                            .font(.system(size: 30, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.4)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 420)
                        
                        
                        AnimatePPView()
                            .frame(width: geometry.size.width * 0.7, height: geometry.size.width * 0.6)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 + 65)
                        
                        
                        HStack(spacing: 400){
                            
                            Button(action: {
                                presentation.wrappedValue.dismiss()
                                
                            }) {Image("backButton")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(25)
                                    .frame(width: geometry.size.width * 0.15, height: geometry.size.width * 0.1)
                                    .background(Color("myBeige"))
                                    .cornerRadius(40)
                                    
                            }
                            
                            NavigationLink(destination: FerView().navigationBarBackButtonHidden(true)) {
                                Image("nextButton")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(25)
                                    .frame(width: geometry.size.width * 0.15, height: geometry.size.width * 0.1)
                                    .background(Color("myBeige"))
                                    .cornerRadius(40)
                                    
                            }
                        }
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 + 450)
                        
                    }
                    
                    
                }
            }
        }
        .onAppear{
            playAudio(audio: "Page5")}
    }
}

struct PPView_Previews: PreviewProvider {
    static var previews: some View {
        PPView()
    }
}
