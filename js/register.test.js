const phonenumber = require('./register');

// 21 test to check valid phone number US and UK
test('Test phone number', () => {
    expect(phonenumber("123 456 7890")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("1234567890")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("(123) 456-7890")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("(123)456-7890")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("(123456-7890")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("(123456 7890")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("123 4567890")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("abcdefghijk")).toBe(false);
});
test('Test phone number', () => {
    expect(phonenumber("abcdef ghijk")).toBe(false);
});
test('Test phone number', () => {
    expect(phonenumber("abc defghijk")).toBe(false);
});
test('Test phone number', () => {
    expect(phonenumber("")).toBe(false);
});
test('Test phone number', () => {
    expect(phonenumber("(abc) defghijk")).toBe(false);
});
test('Test phone number', () => {
    expect(phonenumber("abcdef-ghijk")).toBe(false);
});
test('Test phone number', () => {
    expect(phonenumber('(abc) 456-7890)')).toBe(false);
});
test('Test phone number', () => {
    expect(phonenumber("1235")).toBe(false);
});
test('Test phone number', () => {
    expect(phonenumber("1234567890")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("222-055-9034")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("321.789.4512")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("24.4550.9034")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("24-0455-9034")).toBe(true);
});
test('Test phone number', () => {
    expect(phonenumber("+23 1256 4587")).toBe(true);
});