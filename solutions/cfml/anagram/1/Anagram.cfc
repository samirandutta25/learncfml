/**
* Your implementation of the Anagram exercise
*/
component {

    function createCounter(string str){
        charFrequency = {};
        for ( ch in lcase(str).listToArray("") ){
            if ( ch < 'a' && ch > 'z' ){
                continue;
            }
            if(charFrequency.keyExists(ch)){
                charFrequency[ch]++;
            }else{
                charFrequency[ch] = 1;
            }
        }
        return charFrequency;
    }

    function matchCounter(str1Counter, str2Counter){
        keys1Count = str1Counter.count();
        keys2Count = str2Counter.count();
        if ( keys1Count != keys2Count ){
            return false;
        }

        for (key in str1Counter){
            if( !str2Counter.keyExists(key) ){
                return false;
            }
            if( str1Counter[key] != str2Counter[key]){
                return false;
            }
        }

        return true;
    }
    
	/**
	* @returns 
	*/
	function anagrams( string subject, array candidates ) {
		// Implement me here
        lSubject = lcase(subject);
        subjectCounter = createCounter(lSubject);
        resultArr = [];
        for ( candidate in candidates ){
            lCandidate = lcase(candidate);
            if ( lCandidate == lSubject ){
                continue;
            }
            candCounter = createCounter(lCandidate);
            if( matchCounter(candCounter, subjectCounter) ){
                resultArr.append(candidate);
            }
        }
        return resultArr;
	}
	
}