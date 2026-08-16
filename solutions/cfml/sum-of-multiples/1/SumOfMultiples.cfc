/**
* Your implementation of the SumOfMultiples exercise
*/
component {
	
	/**
	* @returns 
	*/
	function sum( array factors, limit ) {
		// Implement me here
        var multipleSet = createObject("java", "java.util.HashSet").init();
        for ( factor in factors ){
            for ( var i = factor; i < limit; i += factor ){
                multipleSet.add(i);
            }
        }
        var multipleSum = 0;
        for (num in multipleSet){
            multipleSum += num;
        }
        return multipleSum;
	}
	
}