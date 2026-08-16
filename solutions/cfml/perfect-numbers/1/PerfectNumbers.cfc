/**
* Your implementation of the PerfectNumbers exercise
*/
component {
	
	/**
	* @returns 
	*/
    function aliquotSum( number ){
        var aliqSum = 1;
        for (var i = 2; i * i <= number; i++){
            if (number % i == 0){
                first = i;
                aliqSum += first;
                second = number \ i;
                if (second != first)
                    aliqSum += second;
            }
            
        }
        return aliqSum;
    }
    
	function classify( number ) {
		// Implement me here
        if(number <= 0)
            throw(message="Classification is only possible for positive integers.");
        if(number == 1)
            return "deficient";
        var aSum = aliquotSum(number);
        if( aSum == number ) return "perfect";
        if( aSum > number ) return "abundant";
        return "deficient";
	}
	
}