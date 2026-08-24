/**
* Your implementation of the NthPrime exercise
*/
component {
	
	/**
	* @returns 
	*/
    
    function isPrime( number, primeArray ){
        if( number == 2 ){
            primeArray.append(number);
            return true;
        }
        if( number % 2 == 0 ) return false;
        for ( var num in primeArray ){
            if( number % num == 0 ) return false;
            if( (num * num)  > number ) break;
        }
        primeArray.append(number);
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
        var primeArray = [];
        while( primeCounter < number ){
            if( isPrime(currNumber, primeArray) ){
                primeCounter++;
                currPrime = currNumber;
            }
            currNumber++;
        }
        return currPrime;
	}
	
}