const password = require('./register');
// Test 1 with spaces and no symbols

test('Test password', () => {
    expect(compare(psw1).toBe(true))
})