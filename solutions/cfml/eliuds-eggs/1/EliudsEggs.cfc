/**
* Your implementation of the EliudsEggs exercise
*/
component {

	/**
	* @returns 
	*/
	function eggCount( number ) {
		// Implement me here
        var count = 0;
        while( number > 0){
            number = bitAnd(number, (number - 1));
            count++;
        }
        return count;
	}

}