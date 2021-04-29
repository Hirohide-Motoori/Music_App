//
//  ButtonImageView.swift
//  MyMusic
//
//  Created by MOTOORI HIROHIDE on 2021/02/22.
//

import SwiftUI

struct ButtonImageView: View {
    //画像ファイル名
    let imaageName: String
    
    var body: some View {
        //画像を表示する
        Image(imaageName)
        
        //ボタン内の画像をカラー画像となるように指定する
            .renderingMode(.original)
        
    }//bodyここまで
}

struct ButtonImageView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImageView(imaageName: "cymbal")
    }
}
