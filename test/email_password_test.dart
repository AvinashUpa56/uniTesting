import 'package:flutter_test/flutter_test.dart';
//import 'package:test/scaffolding.dart';
import 'package:unitesting/email_password_validator.dart';

void main() {
  test('Empty Email Test', () {
    var result = FieldValidator.validateEmail('');
    expect(result, 'Enter Email');
  });

  test('Invalid Email Test', () {
    var result = FieldValidator.validateEmail(' ');
    expect(result, 'Enter Valid Email');
  });

  test('Valid Email Test', () {
    var result = FieldValidator.validateEmail('test12@gmail.com');
    expect(result, null);
  });

  test('Empty Password Test', () {
    var result = FieldValidator.validatePassword('');
    expect(result, 'Enter Password');
  });

  test('Invalid Password Test', () {
    var result = FieldValidator.validatePassword('123');
    expect(result, 'Password must be more than 6 charater');
  });

  test('Valid Password Test', () {
    var result = FieldValidator.validatePassword('12345678');
    expect(result, null);
  });

  group('Email Test', (){
    test('Empty Email Test', () {
      var result = FieldValidator.validateEmail('');
      expect(result, 'Enter Email');
    });

    test('Invalid Email Test', () {
      var result = FieldValidator.validateEmail(' ');
      expect(result, 'Enter Valid Email');
    });

    test('Valid Email Test', () {
      var result = FieldValidator.validateEmail('test12@gmail.com');
      expect(result, null);
    });
  });

  group('Password Test', (){
    test('Empty Password Test', () {
      var result = FieldValidator.validatePassword('');
      expect(result, 'Enter Password');
    });

    test('Invalid Password Test', () {
      var result = FieldValidator.validatePassword('123');
      expect(result, 'Password must be more than 6 charater');
    });

    test('Valid Password Test', () {
      var result = FieldValidator.validatePassword('12345678');
      expect(result, null);
    });
  });

}
