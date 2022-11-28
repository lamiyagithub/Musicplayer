//
//  Song.swift
//  Musicplayer
//
//  Created by ddukk17 on 02.11.22.
//

import Foundation

class Song{
    
    var list = [SongCollection]()
    init(){
        
        list.append(SongCollection(simg: "song1", s_title: "BAd blood", s_song:"Bad Blood" ))
        list.append(SongCollection(simg: "song2", s_title: "kunfayakun", s_song: "Rockstar Kun Faya Ku"))
        list.append(SongCollection(simg: "song3", s_title:"Muskurana" , s_song:"Muskurana" ))
        
        
        
    }
    
    
}
