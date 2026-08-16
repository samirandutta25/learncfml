/**
* Your implementation of the Isogram exercise
*/
component {
	
	/**
	* @returns 
	*/
	function isIsogram( input ) {
		// Implement me here
        input = lcase(input);
        isogramVisited = [];
        for (var i=1; i<=26; i++){
            isogramVisited.append(0);
        }
        for( character in input.listToArray("") ){
            if(character >= 'a' && character <= 'z'){
                var idx = asc(character) - asc('a') + 1;
                if (isogramVisited[idx] == 1){
                    return false;
                }
                isogramVisited[idx] = 1;
            }
        }
        return true;
	}
	
}