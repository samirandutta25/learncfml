/**
* Your implementation of the TwoFer exercise
*/
component {
	
	/**
	* @returns 
	*/
	function twoFer( name ) {
		// Implement me here
        if (!isDefined("name")){
            return "One for you, one for me.";
        }
        return "One for " & name & ", one for me.";
	}
	
}
