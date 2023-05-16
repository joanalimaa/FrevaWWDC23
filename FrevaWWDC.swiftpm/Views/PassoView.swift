//
//  PassoView.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 17/04/23.
//

import SwiftUI

struct PassoView: View {
    
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
                        
                        Text("It was originated from ‘Capoeira’ (Brazilian martial arts) and includes a lot of acrobatic and fast movements. The sets of movements are known as 'passo' and the dancers are called 'Passistas'. The clothes are very colourful so they can be easily spotted in the crowds. Majorly, the colors used are red, blue, yellow and green, as you can see on my clothes.")
                            .font(.system(size: 22, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.4)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        
                        Image("bothHandsShowing")
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
                            
                            NavigationLink(destination: UmbrellaView().navigationBarBackButtonHidden(true)) {
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
            playAudio(audio: "Page3")}
    }
}

struct PassoView_Previews: PreviewProvider {
    static var previews: some View {
        PassoView()
    }
}
