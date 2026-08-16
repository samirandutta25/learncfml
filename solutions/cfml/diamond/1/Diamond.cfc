/**
* Your implementation of the Diamond exercise
*/
component {
	
	/**
	* @returns 
	*/
	array function rows( letter ) {
		// Implement me here
        diff = asc(letter) - asc('A');
        totalLength = 2*diff + 1;
        offset = diff;
        var baseArray = [];
        var resultArr = [];
        for ( var j = 1; j<=totalLength; j++ ){
            baseArray.append(" ");
        }
        for (var i = 0; i <= diff; i++ ){
            rowArray = duplicate(baseArray);
            charEntry = chr(asc('A') + i);
            rowArray[offset + 1] = charEntry;
            rowArray[totalLength - offset] = charEntry;
            resultArr.append(rowArray.toList(""));
            offset -= 1;
        }
        k = resultArr.len() - 1;
        while( k > 0 ){
            resultArr.append(resultArr[k]);
            k--;
        }
        return resultArr;
	}
	
}