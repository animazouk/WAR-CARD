//
//  ContentView.swift
//  WAR CARD
//
//  Created by Adarsh Vishwakarma on 01/03/24.
//background-cloth , logo , card2 , card3 , button ,
//
import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .aspectRatio(contentMode: .fit)
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                        
                    }
                    Spacer()
                    
                    VStack{
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                        
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
                
                
                
            }
            
        }
         Spacer()
    }
    
    func deal() {
        // randomize the player card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // randomize the cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // update the score
        if playerCardValue > cpuCardValue
        {
           playerScore += 1
        }
        else if cpuCardValue > playerCardValue
        {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
