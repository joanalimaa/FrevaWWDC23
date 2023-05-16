//
//  MapView.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 17/04/23.
//

import SwiftUI

struct MapView: View {
    
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
                            .frame(width: geometry.size.width * 0.96, height: geometry.size.width * 0.4)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        
                        Text("Frevo is a folkloric dance from Brazil heavily associated with carnival. It was originated in Recife, a city in the state of Pernambuco, my hometown. The word derives from 'ferver' which means 'to boil' because the dance is very energetic, like bubbles boiling in a pan.")
                            .font(.system(size: 26, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 0.4)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        
                        Image("map")
                            .resizable()
                            .scaledToFit()
                            .padding(25)
                            .frame(width: geometry.size.width * 0.4, height: geometry.size.width * 1.4)
                            .position(x:(geometry.size.width) * 0.5 - 230, y: (geometry.size.height) * 0.5 - 40)
                        
                        Image("handShowing")
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
                            
                            NavigationLink(destination: PassoView().navigationBarBackButtonHidden(true)) {
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
            playAudio(audio: "Page2")}
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
