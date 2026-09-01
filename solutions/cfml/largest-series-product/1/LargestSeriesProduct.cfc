/**
* Your implementation of the LargestSeriesProduct exercise
*/
component {
	
	/**
	* @returns 
	*/
	function largestProduct( digits, span ) {
		// Implement me here
        if( span <= 0 )
            return -1;

        var maxArrayProduct = 0;
        var currProduct = 1;
        var digitsArray = listToArray(digits, "");
        var startSeries = 1;
        var endSeries = 1;

        if ( digitsArray.len() < span ) 
            return -1;
        
        while( endSeries <= digitsArray.len() ){
            
            if (!isNumeric(digitsArray[endSeries])){
                // Invalid char
                return -1;
            }
            
            if (digitsArray[endSeries] == "0"){
                //Restart Window
                endSeries++;
                startSeries = endSeries;
                currProduct = 1;
            }else if ( endSeries - startSeries + 1 == span ) {
                //Move Window Right
                currProduct *= digitsArray[endSeries];
                maxArrayProduct = max(maxArrayProduct, currProduct);
                currProduct /= digitsArray[startSeries];
                startSeries++;
                endSeries++;
            }else{
                //Expand Window
                currProduct *= digitsArray[endSeries];
                endSeries++;
            }
        }
        return maxArrayProduct;
	}
	
}