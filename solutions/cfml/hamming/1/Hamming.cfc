/**
* Your implementation of the Hamming exercise
*/
component {
	
	/**
	* @returns 
	*/
	 function distance( strand1, strand2 ) {
		// Implement me here
        lenS1 = strand1.len();
        lenS2 = strand2.len();
        if ( lenS1 != lenS2 ){
            throw(
                message="left and right strands must be of equal length",
            )
        }
        var hammingDistance = 0;
        for (var i = 1; i <= lenS1; i++){
            if( strand1[i] != strand2[i] )
                hammingDistance++;
        }
        return hammingDistance;
	}
	
}