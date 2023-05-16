//
//  GoodbyeView.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 17/04/23.
//

import SwiftUI

struct GoodbyeView: View {
    
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
                            .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 0.6)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        
                        Text("I hope you enjoyed this little learning experience and keep researching about Brazilian culture, I'm sure you'll find many more interesting things. See you again someday, bye!")
                            .font(.system(size: 26, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.4)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 440)
                        Image("handUpEC")
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
                            
                            NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                                Image("homeButton")
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
            playAudio(audio: "Page8")}
    }
}

struct GoodbyeView_Previews: PreviewProvider {
    static var previews: some View {
        GoodbyeView()
    }
}
