const { visitorCounterFunction } = require("../utils");

test('it counts visitors', () => {
    const visitorCounter = visitorCounterFunction();

    let visitorCount = visitorCounter();
    visitorCount = visitorCounter();
    visitorCount = visitorCounter();

    expect(visitorCount).toBe(3);
});
