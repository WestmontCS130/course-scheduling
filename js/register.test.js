const phonenumber = require('./register');

// Test 1 
test('Test phone number', () => {
    expect(phonenumber("123 456 7890")).toBe(true);
});
// Test 2 
test('Test phone number', () => {
    expect(phonenumber("1234567890")).toBe(true);
});
// Test 3 
test('Test phone number', () => {
    expect(phonenumber("(123) 456-7890")).toBe(true);
});
// Test 4 
test('Test phone number', () => {
    expect(phonenumber("(123)456-7890")).toBe(true);
});
// Test 5 
test('Test phone number', () => {
    expect(phonenumber("(123456-7890")).toBe(true);
});
// Test 6 
test('Test phone number', () => {
    expect(phonenumber("(123456 7890")).toBe(true);
});
// Test 7 
test('Test phone number', () => {
    expect(phonenumber("123 4567890")).toBe(true);
});
// Test 8 
test('Test phone number', () => {
    expect(phonenumber("abcdefghijk")).toBe(false);
});
// Test 9 
test('Test phone number', () => {
    expect(phonenumber("abcdef ghijk")).toBe(false);
});
// Test 10 
test('Test phone number', () => {
    expect(phonenumber("abc defghijk")).toBe(false);
});
// Test 11
test('Test phone number', () => {
    expect(phonenumber("")).toBe(false);
});
// Test 12 
test('Test phone number', () => {
    expect(phonenumber("(abc) defghijk")).toBe(false);
});
// Test 13 
test('Test phone number', () => {
    expect(phonenumber("abcdef-ghijk")).toBe(false);
});
// Test 14 
test('Test phone number', () => {
    expect(phonenumber('(abc) 456-7890)')).toBe(false);
});

// Test 15 
test('Test phone number', () => {
    expect(phonenumber("1235")).toBe(false);
});