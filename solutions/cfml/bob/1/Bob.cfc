/**
* Your implementation of the Bob exercise
*/
component {
	
	/**
	* @returns 
	*/
	function response( heyBob ) {
		// Implement me here
        heyBob = heyBob.trim();
        lenHeyBob = heyBob.len();
        lenRemovingSpace = reReplace(heyBob, "\s", "", "all").len();
        lenAlphaChars = reReplace(heyBob, "[^A-Za-z]", "", "all").len();
        if ( lenRemovingSpace == 0 ){
            return "Fine. Be that way!";
        }
        if ( lenAlphaChars > 0 && compare(heyBob, ucase(heyBob)) == 0 && heyBob[lenHeyBob] == "?" ){
            return "Calm down, I know what I'm doing!";
        }
        if ( lenAlphaChars > 0 && compare(heyBob, ucase(heyBob)) == 0 ){
            return "Whoa, chill out!";
        }
        if ( heyBob[lenHeyBob] == "?" ){
            return "Sure.";
        }

        return "Whatever.";
	}
	
}