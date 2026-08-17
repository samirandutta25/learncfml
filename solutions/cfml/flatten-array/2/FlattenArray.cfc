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
            if( isNull(elem) )
                continue;
            
            if(isArray(elem)){
                flattenedArray.addAll(flatten(elem));
            }else{
                flattenedArray.append(elem);
            }   
        }
        return flattenedArray;
	}
	
}