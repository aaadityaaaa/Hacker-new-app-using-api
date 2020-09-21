//
//  ContentView.swift
//  Hacker News app
//
//  Created by Aaditya Singh on 02/09/20.
//  Copyright © 2020 Aaditya Singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var networkmanager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkmanager.posts) { Post in
                
                NavigationLink(destination: DetailView(url: Post.url)) {
                    
                    HStack{
                                       
                        Text(String(Post.points))
                        Text(Post.title)
                                }
                    
                }
               
                
                
                   }
        .navigationBarTitle("hackerNews")
        }
       
        .onAppear {
            self.networkmanager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*let posts = [
  
    post(id: "1", title: "hello"),
    post(id: "2", title: "konichiwa"),
    post(id: "3", title: "hola")

]
*/
