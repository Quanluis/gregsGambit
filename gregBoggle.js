function words(x){
    switch(x){
        case 1: 
            var word = new Array("balte", "table", "hat", "tab", 'belt', 'lab', 'eat', 'tea', 'ate',
            'tale', 'bale', 'let', 'bet', 'teal', 'late', 'beat' );
            break;
        case 2: 
            var word = new Array('urecas', 'saucer', 'causer', 'cause', 'scare', 'sauce', 'curse', 'cares', 'races', 'sea');
            break;
        case 3:
            var word = new Array('Waktle','kale', 'tweak', 'talk', 'tale', 'teal', 'weak', 'leak', 'walk', 'take', 'wake'); 
            break;
        case 4: 
            var word = new Array("redykboa", "keyboard", "key", 'board', 'bored', 'bore');
            break;
        case 5: 
            var word = new Array('terse', 'trees', 'reset', 'rest', 'set');
            break
        case 6: 
            var word = new Array('dclaen', 'clan', 'clean', 'lean');
            break
        case 7: 
            var word = new Array("aepinlar", "air", "airplane");
            break
        case 8:
            var word = new Array("atwre", "water", "wet", 'wear', 'tear', 'war', 'rat');
            break
    }   
    return word;
}


function boggle()
{

    var play = "";
    var score = 0; var flag = 0;

    var num = Math.floor(Math.random()*5 ) + 1; 

    compWords = new Array; notAWord = new Array;

    playWords = new Array();

    compWords = words(num);

    yourWord = compWords[0];

    document.getElementById("letters").innerHTML = yourWord;

      // Get player entries

    while(play != 'Q')
    {
        play = prompt('Enter a word or enter Q when done.');
        playWords.push(play);
        if(play != 'Q')
            document.getElementById('entries').innerHTML = playWords.toString(); 

    }
        //Check winning scores and list bad words

        var complgth = compWords.length;

        var playlgth = (playWords.length - 1);

        for(var i = 0; i < playlgth; i++)
        {
            flag = 0;
            for(var k = 0; k < complgth; k++)
            {
                if(playWords[i] == compWords[k])
                {
                    
                    score++;
                    flag = 1;

                }
            }
            if(flag == 0)
                notAWord.push(playWords[i]);         
        }
        document.getElementById('result').innerHTML = ("Your score is " + score + " . The following entries are not valid words: <br /> " + notAWord.toString());
}   

