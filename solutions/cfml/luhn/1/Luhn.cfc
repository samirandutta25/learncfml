/**
* Your implementation of the Luhn exercise
*/
component {
	
	/**
	* @returns 
	*/
	function valid( value ) {
		// Implement me here
        var spaceReplaced = reReplace(value, "\s", "", "all");
        if(spaceReplaced.len() <= 1){
            return false;
        }
        var countInvalidChars = reReplace(spaceReplaced, "[0-9]", "", "all").len();
        if( countInvalidChars > 0 )
            return false;
        var arrayOfNumbers = listToArray(spaceReplaced, "");
        var startIdx = arrayOfNumbers.len() - 1;
        for( var i = startIdx; i >= 1; i-=2){
            arrayOfNumbers[i] = 2*arrayOfNumbers[i];
            if (arrayOfNumbers[i] > 9) arrayOfNumbers[i] -= 9;
        }
        return arrayOfNumbers.sum() % 10 == 0;
	}
	
}