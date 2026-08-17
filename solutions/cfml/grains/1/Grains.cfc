/**
* Your implementation of the Grains exercise
*/
component {
	
	function square( input ) {
		// Implement me here
        if ( input <= 0 || input > 64 )
            return -1;
        return 2 ^ (input - 1);
	}
	
	function total( input ) {
		// Implement me here
        var totalGrains = 0
        for (var i = 1; i <= 64; i++){
            totalGrains += square(i);
        }
        return totalGrains;
	}
	
}