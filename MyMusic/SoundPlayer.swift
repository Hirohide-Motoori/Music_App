//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by MOTOORI HIROHIDE on 2021/02/22.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    //シンバルの音源再生
    var cymbalPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do{
            //シンバル用プレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            
            //シンバルの音源再生
            cymbalPlayer.play()
            
        } catch {
            print("シンバルで、エラーが発生しました")
        }
        
        //cmbalplayはここまで
        
            
        }
    
    //ギターの音源再生
    var guitarPlayer: AVAudioPlayer!
    
    func guitarPlay() {
        do{
            //ギター用プレイヤーに、音源データを指定
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            
            //ギターの音源再生
            guitarPlayer.play()
            
        } catch {
            print("ギターで、エラーが発生しました")
        }
        
        //cmbalplayはここまで

    }
}
