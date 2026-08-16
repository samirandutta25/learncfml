/**
* Your implementation of the RobotSimulator exercise
*/
component {

    variables.turnRight = {
        "north": "east",
        "east": "south",
        "south": "west",
        "west": "north",
    }
    variables.turnLeft = {
        "north": "west",
        "west": "south",
        "south": "east",
        "east": "north",
    }
    variables.turnStruct = {
        "R": variables.turnRight,
        "L": variables.turnLeft,
    }
    variables.advanceDict = {
        "north": [0, 1],
        "east": [1, 0],
        "south": [0, -1],
        "west": [0, -1],
    }
	/**
	* @returns 
	*/
    function getX(){
        return this.x;
    }

    function getY(){
        return this.y;
    }

    function getDirection(){
        return this.dir;
    }
    
	function init( required x, required y, required direction ){
		// Implement me here
        this.x = x;
        this.y = y;
        this.dir = direction;
	}

    function turn( turnSide ){
        this.dir = variables.turnStruct[turnSide][this.dir];
    }

    function advance(){
        var step = variables.advanceDict[this.dir];
        this.x = this.x + step[1];
        this.y = this.y + step[2];
    }
    
	/**
	* @returns 
	*/
	function move( commands ){
		// Implement me here
        for( var i = 1; i < commands.len(); i++ ){
            if( commands[i] == "R" || commands[i] == "L" )
                turn( commands[i] );
            else
                advance();
                
        }
	}

}