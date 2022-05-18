//
//  HomeScreen.swift
//  MusicPlayerSwiftUI
//
//  Created by Macservis on 13/05/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var likes: [Bool] = [false,false,false,false,false,false]

   
    
    
    //Musics
    
    var  musics: [Music] = [
    
        Music(name: "я люблю тебя", artistName: "Rauf Faik", imageName: "я люблю тебя"),
        
        Music(name: "rusalka", artistName: "Admin", imageName: "rusalka"),
        
        Music(name: "eslama_meni", artistName: "eslama_meni", imageName: "eslama_meni"),
        
        Music(name: "siyay", artistName: "siyay", imageName: "siyay"),
        
        Music(name: "majnun", artistName: "majnun", imageName: "majnun"),
    
        
        Music(name: "kendina_iye_bak", artistName: "kendina_iye_bak", imageName: "kendina_iye_bak")
    
    ]
    
    
    
    
    
    
    var body: some View {
        ZStack {
          //Background
            
            Color.white.edgesIgnoringSafeArea(.all)
            
            //NavigationView
            
            contentSomeView
            
         
        }
    }
    
    
    
    var  contentSomeView: some View {
        
        VStack(spacing: 0) {
           
            Text("Musics")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 10)
                .background(Color.gray)
                .shadow(color: Color.black, radius: 10)
            
           // Spacer()
            
            ScrollView {
            
            ForEach(0..<musics.count) { i in
                
                
                
                MusicCellView(name: musics[i].name!, image: musics[i].imageName!, artistName:  musics[i].artistName!, likee: $likes[i])
                    .cornerRadius(20)
                    .shadow(color: Color.black, radius: 20, x: 20, y: 20)
                    .padding()
                    .frame(height: 150)
                    
                
                
               
            }
                
                
                
                
            }
            
            
            
        }
        
        
        
    }
    
    
}


struct MusicCellView: View {
    
    
    
    @State var name: String
    
    @State var image: String
    
    @State var artistName: String
    
    @State var imageHeart: Image = Image(systemName: "heart")
    
    @Binding var likee: Bool
    
    
    
    
    
    
    
    
    var body: some View {
       
        ZStack(alignment: .center) {
            
            Color.purple
            
            
            HStack(alignment: .center) {
                
               
             Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 10, x: 10, y: 10)
                    .padding(.vertical,5)
                    .padding()
                
               Spacer()
                    .frame(width: 20)
                
                
                VStack {
                 
                    
                Text(name)
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .shadow(color: .black, radius: 10, x: 10, y: 10)
                    
                
                 Text(artistName)
                        .font(.title)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 10, x: 10, y: 10)
                    
     
                }
                
                Spacer()
                
                Button {
                    
                    if likee {
                        
                      likee = false
                        
                        imageHeart = Image(systemName:"heart")
                        
                    }else {
                        
                        likee = true
                        
                        imageHeart = Image(systemName: "heart.fill")
                        
                        
                    }
                    
              
                    
                    
                    
                } label: {
                
                imageHeart
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                    .shadow(color: Color.black, radius: 10, x: 10, y: 10)
                    .padding(.trailing, 10)
                
                }
                
            }
            
            
            
            
            
            
            
        }
        
        
        
        
    }
    
    
    
}











struct HomeScreen_Previews: PreviewProvider {
    

    static var previews: some View {
         
       HomeScreen()
    }
}
