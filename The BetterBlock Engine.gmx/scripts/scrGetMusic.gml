///gets which song is supposed to be playing for the current room and plays it

var roomSong;

switch (room)                       //determines which song to play
{
    case rTitle:                    //add rooms here, if you have several rooms that play the same song they can be put together
    case rMenu:
    case rOptions:
    case rDifficultySelect:
    case rBetterBlockStage:
        roomSong = musBetterBlockStage;
        break;
    case rStage01:
    //case rStage02:                //this room has a play music object in it so it doesnt need to be included in this script
        roomSong = musGuyRock;
        break;
    case rCherryBoss:
        roomSong = musMegaman;
        break;
    case rMiku:
        roomSong = musMiku;
        break;
    case rBetterBlockMiku:
    case rEnd:
        roomSong = -1;              //play nothing
        break;
    default:                        //default option in case the room does not have a song set
        roomSong = -1;
        break;
}

if (roomSong != -2)
    scrPlayMusic(roomSong,true); //play the song for the current room
