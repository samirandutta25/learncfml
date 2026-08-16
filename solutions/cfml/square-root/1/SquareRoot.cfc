/**
* Your implementation of the SquareRoot exercise
*/
component {
	
	/**
	* @returns 
	*/
	function squareRoot( radicand ) {
		// Implement me here
        var low = 1;
        var high = radicand;
        while ( low <= high){
            mid = (low + high) \ 2;
            if ( (mid * mid) == radicand)
                return mid;
            if ( (mid * mid) > radicand )
                high = mid - 1;
            else
                low = mid + 1;
        }
        return -1;
	}
	
}