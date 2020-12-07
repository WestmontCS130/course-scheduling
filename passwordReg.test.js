const password = require('./register');

// Test 1 with spaces and no symbols
test('Test password', () => {
    expect("psw2").toMatch(/psw2/);
});

test('Test password', () => {
    expect("psw1").toMatch(/psw1/);
});
// Test 2 with no spaces and no symbols
test('Test password', () => {
    expect("psw1").toMatch(/psw2/);
});
// Test 3 with spaces and symbols
test('Test password', () => {
    expect(password("abcdabcd")).toBe(false);
});
// Test 4 with spaces and symbols and letters
test('Test password', () => {
    expect(password("12345678")).toBe(false);
});

test('Test password', () => {
    expect(password("ChickenNuggets21")).toBe(true);
});
