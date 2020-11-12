const phonenumber = require('./register');

// Test 1 with spaces and no symbols
test('Test phone number', () => {
    expect(phonenumber("123 456 7890")).toBe(true);
});
// Test 2 with no spaces and no symbols
test('Test phone number', () => {
    expect(phonenumber("1234567890")).toBe(true);
});
// Test 3 with spaces and symbols
test('Test phone number', () => {
    expect(phonenumber("(123) 456-7890")).toBe(true);
});
// Test 4 with spaces and symbols and letters
test('Test phone number', () => {
    expect(phonenumber('(abc) 456-7890)')).toBe(false);
});