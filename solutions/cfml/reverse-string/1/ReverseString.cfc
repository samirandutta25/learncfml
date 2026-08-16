/**
* Your implementation of the ReverseString exercise
*/
component {
	
	/**
	* @returns 
	*/
	function reverse( value ) {
		// Implement me heret
        listOfValue = listToArray(value, "");
        lenOfValue = value.len();
        for ( var i = 1; i <= (lenOfValue\2); i++ ){
            t = listOfValue[i];
            listOfValue[i] = listOfValue[lenOfValue - i + 1];
            listOfValue[lenOfValue - i + 1] = t;
        }
        return listOfValue.toList("");
	}
	
}