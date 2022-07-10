/* Simple visitor counter implementation which uses closures. */
const visitorCounterFunction = function() {
    let count = 0;

    return function() {
        count += 1;
        return count;
    };
};

module.exports = {
    visitorCounterFunction: visitorCounterFunction
}
