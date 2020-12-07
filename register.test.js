const password = require('./register');

//Test case 1 with no lowercase
test('password without lowercase', () =>{
    expect(password("1234ABCD")).toBe(false);
});

//Test case 2 with no uppercase
test('password without uppercase characters', () =>{
    expect(password("1234abcd")).toBe(false);
});

//Test case 3 with no numbers
test('password without numbers', () =>{
    expect(password("ABCDabcd")).toBe(false);
});

//Test case 4 with only numbers
test('password with only numbers', () =>{
    expect(password("12345678")).toBe(false);
});

//Test case 5 with less than 8 characters
test('password without length requirement', () =>{
    expect(password("123AbC")).toBe(false);
});

//Test case 6 with correct critera
test('correct password', () =>{
    expect(password("123ABCabc")).toBe(true);
});
