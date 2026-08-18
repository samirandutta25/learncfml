/**
* Your implementation of the Etl exercise
*/
component {
	
	/**
	* @returns 
	*/
	function transform( legacy ) {
		// Implement me here
        var transformedPointSystem = {};
        for( pointValue in legacy ){
            for ( alphabet in legacy[pointValue] ){
                transformedPointSystem[lcase(alphabet)] = pointValue;
            }
        }
        return transformedPointSystem;
	}
	
}