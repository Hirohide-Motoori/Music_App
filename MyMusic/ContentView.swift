//
//  ContentView.swift
//  MyMusic
//
//  Created by MOTOORI HIROHIDE on 2021/02/22.
//

import SwiftUI

struct ContentView: View {
    //音を鳴らすためのインスタンスを生成
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack {
            //背景画像を指定
            Image("background")
                //リサイズする
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            HStack{
                //シンバルボタン
                Button(action: {
                    //ボタンをタップした時のアクション
                    soundPlayer.cymbalPlay()
                }){
                    //画像を表示する
                    ButtonImageView(imaageName: "cymbal")
                } //シンバルここまで
                Button(action: {
                    //ボタンをタップした時のアクション
                    soundPlayer.guitarPlay()
                }){
                    //ギターの画像表示
                    ButtonImageView(imaageName: "guitar")
                } //ギターここまで
            }
        } //Zstackここまで
    }//body
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
