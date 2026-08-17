/**
* Your implementation of the FlattenArray exercise
*/
component {
	
	/**
	* @returns 
	*/
	function flatten( array ) {
		// Implement me here
        var flattenedArray = [];
        for ( elem in array ){
            if( isNull(elem) ){
                continue;
            }
            if(isArray(elem)){
                var nestedFlattenedArray = flatten(elem);
                for( num in nestedFlattenedArray ){
                    flattenedArray.append(num);
                }
            }else{
                flattenedArray.append(elem);
            }   
        }
        return flattenedArray;
	}
	
}