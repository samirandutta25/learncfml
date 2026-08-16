/**
* Your implementation of the Acronym exercise
*/
component {
	
	/**
	* @returns 
	*/
	 function abbreviate( phrase ) {
		// Implement me here
        sanitizedText = reReplace(phrase, "[^A-Za-z0-9 ]", " ", "all");
        splittedWords = listToArray(sanitizedText, " ");
        acronym = "";
        for (word in splittedWords){
            acronym = acronym & ucase(word[1]);
        }
        return acronym;
	}
	
}