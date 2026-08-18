/**
* Your implementation of the CircularBuffer exercise
*/
component {

	/**
	* @returns
	*/
	function init( capacity ) {
		// Implement me here
        variables.buffer = ArrayNew(1);
        variables.buffer.resize(capacity);
        variables.capacity = capacity;
        variables.start = 0;
        variables.end = 0;
        variables.count = 0;
	}

	/**
	* @returns
	*/
	function read() {
		// Implement me here
        if (variables.count == 0)
            throw(message="Empty buffer");
        
        var val = variables.buffer[start+1];
        variables.start = (variables.start + 1) % variables.capacity;
        variables.count--;
        return val;
	}

	/**
	* @returns
	*/
	function write( value ) {
		// Implement me here
        if (variables.count == variables.capacity)
            throw(message="Full buffer");
        
        variables.buffer[end + 1] = value;
        variables.end = (variables.end + 1) % variables.capacity;
        variables.count++;
	}

	/**
	* @returns
	*/
	function overwrite( value ) {
		// Implement me here
        if (variables.count == variables.capacity)
            read();
        
        write(value);
	}

	/**
	* @returns
	*/
	function clear() {
		// Implement me here
        variables.start = 0;
        variables.end = 0;
        variables.count = 0;
	}
}