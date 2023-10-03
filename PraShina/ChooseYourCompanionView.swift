//
//  ChooseYourCompanionView.swift
//  Companion
//
//  Created by Anne Elvira on 4/10/2023.
//

import SwiftUI

struct ChooseYourCompanionView: View {
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "arrowshape.turn.up.backward")
                        .dynamicTypeSize(.xxxLarge)
                        .foregroundColor(.white)
                        .offset(x:-10, y:20)
                    Text("Choose Your Companion!")
                        .font(.system(size:24, weight: .bold))
                        .foregroundColor(.white)
                        .offset(y:20)
                }
                
                ScrollView(.vertical){
                    Button{
                        
                    }
                    label: {
                        Image("dinoCYC")
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.tint)
                            .offset(y:40)
                    }
                    
                    Button{
                        
                    }
                    label: {
                        Image("dogCYC")
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.tint)
                            .offset(y:40)
                    }
                    
                    Button{
                        
                    }
                    label: {
                        Image("uniCYC")
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.tint)
                            .offset(y:-20)
                    }
                    
                    
                }
                
                
            }
        }
    }
}

#Preview {
    ChooseYourCompanionView()
}
