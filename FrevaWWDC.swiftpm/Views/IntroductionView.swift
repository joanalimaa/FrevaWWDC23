//
//  IntroductionView.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 17/04/23.
//

import SwiftUI

struct IntroductionView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                

                    ZStack{
                        Image("speechBubbleB")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 0.6)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        
                        Text("Hi! Im Joana and today Im going to teach you a little bit about Frevo, which is part of the Representative List of the Intangible Cultural Heritage of Humanity from UNESCO!!")
                            .font(.system(size: 26, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.4)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        Image("handUpEO")
                            .resizable()
                            .scaledToFit()
                            .padding(25)
                            .frame(width: geometry.size.width * 1.4, height: geometry.size.width * 1.4)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 + 480)
                        
                        HStack(spacing:400){
                            
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
                            
                            NavigationLink(destination: MapView().navigationBarBackButtonHidden(true)) {
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
        .onAppear{
            playAudio(audio: "Page1")}
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
