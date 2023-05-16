//
//  UmbrellaView.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 19/04/23.
//

import SwiftUI

struct UmbrellaView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
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
                            .frame(width: geometry.size.width * 0.95, height: geometry.size.width * 0.6)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        
                        Text("Passistas always use a small umbrella during the dance, they bring color and are part of a lot of passos. Initially, people used umbrellas like a disguised defense weapon during carnival, when frevo became popular it was incorporated in the dance and became smaller like the one I'm holding. They can be thrown from hand to hand and in the air to complement the movements. Now let's learn a few passos!!")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.4)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        
                        Image("holdingUmb")
                            .resizable()
                            .scaledToFit()
                            .padding(25)
                            .frame(width: geometry.size.width * 1.4, height: geometry.size.width * 1.4)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 + 480)
                        
                        
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
                            
                            NavigationLink(destination: PPView().navigationBarBackButtonHidden(true)) {
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
            playAudio(audio: "Page4")}
    }
}

struct UmbrellaView_Previews: PreviewProvider {
    static var previews: some View {
        UmbrellaView()
    }
}
