/**
* Your implementation of the All Your Base exercise
*/
component {
	
	function rebase(inputBase, digits, outputBase) {
		// implement me here
        if ( inputBase < 2 || outputBase < 2 ){
            return -1;
        }
        arrLen = arrayLen(digits);
        base10Number = 0;
        multiplier = 1;
        for (i=arrLen; i>=1; i--){
            if(digits[i] >= inputBase || digits[i] < 0 ){
                return -1;
            }
            base10Number += digits[i] * multiplier;
            multiplier = multiplier * inputBase;
        }
        if (base10Number == 0){
            return [0];
        }
        resultDigits = []
        while ( base10Number > 0 ){
            rem = base10Number % outputBase;
            arrayAppend(resultDigits, rem);
            base10Number = base10Number \ outputBase;
        }
        return arrayReverse(resultDigits);
	}
	
}