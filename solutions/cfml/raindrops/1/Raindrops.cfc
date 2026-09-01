/**
* Your implementation of the Raindrops exercise
*/
component {
	
	/**
	* @returns 
	*/
	 function convert( number ) {
		// Implement me here
        var result = "";
        if( number % 3 == 0 )
            result &= "Pling";
        if( number % 5 == 0 )
            result &= "Plang";
        if( number % 7 == 0 )
            result &= "Plong";
        if ( result.len() == 0 )
            return toString(number);
        return result;
	}
	
}