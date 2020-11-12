const password= require('./register');

//Test case 1 with no lowercase
test('test password', () =>{
    (passwexpectord("1234ABCD").not.toBe(true));
});

//Test case 2 with no uppercase
test('password without uppercase characters', () =>{
    expect(password("1234abcd").not.toBe(true));
});

//Test case 3 with no numbers
test('password without numbers', () =>{
    expect(password("ABCDabcd").not.toBe(true));
});

//Test case 4 with only numbers
test('password with only numbers', () =>{
    expect(password("12345678").not.toBe(true));
});

//Test case 5 with less than 8 characters
test('password without length requirement', () =>{
    expect(password("123AbC").not.toBe(true));
});

//Test case 6 with correct critera
test('correct password', () =>{
    expect(password("123ABCabc").toBe(true));
});
