/**
* Your implementation of the NthPrime exercise
*/
component {
	
	/**
	* @returns 
	*/
    variables.primeArray = [];
    
    function isPrime( number ){
        if( number == 2 ){
            variables.primeArray.append(number);
            return true;
        }
        if( number % 2 == 0 ) return false;
        for ( var i in variables.primeArray ){
            if( number % i == 0 ) return false;
            if( (i * i)  > number ) break;
        }
        variables.primeArray.append(number);
        return true;
    }
    
	function prime( number ) {
		// Implement me here
        if (number == 0 ){
            throw(
              message = 'there is no zeroth prime'
            );
        }
        var primeCounter = 0;
        var currPrime;
        var currNumber = 2;
        while( primeCounter < number ){
            if( isPrime(currNumber) ){
                primeCounter++;
                currPrime = currNumber;
            }
            currNumber++;
        }
        return currPrime;
	}
	
}