//
//  ContentView.swift
//  HowLayout
//
//  Created by Hankyu Lee on 2022/05/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Hello, world!")
                .padding()
                .background(.red)
            
            Text("Hello, world!")
                .background(.red)
                .padding()
            Text("hi swift")
                .offset(x: 50, y: 50)
                .frame(width:100,height:100,alignment: .topLeading)
                .background(.gray)
                
            HStack(alignment:.lastTextBaseline){//bottom이상_g,q등이 내려가 있는 글자므로.
                Text("hif")
                    .font(.caption)
                Text("avgbw")
                    .font(.body)
                Text("web")
                    .font(.title2)
                Text("egvrqb")
                    .font(.largeTitle)
            }
            VStack(alignment:.trailing){
                Text("dffddfddff")
                    .alignmentGuide(.trailing) { d in
                        d[.leading]
                    }
                Text("effe")
                
            }
            .background(.red)
            .frame(width:200,height:150)
            .background(.blue)
            
            ForEach(0..<10) { position in
                Text("text \(position)")
                    .alignmentGuide(.leading) { _ in
                        return Double(position) * -10
                    }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
