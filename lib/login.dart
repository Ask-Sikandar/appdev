import 'dart:convert';
import 'dart:math';


class MyFunctions {
// Function to perform RC4 encryption
  String doEncryptRC4(String src, String passwd) {
    src = src.trim();
    passwd = passwd.trim();
    int i,
        j = 0,
        a = 0,
        b = 0,
        c = 0;
    String temp;
    int plen = passwd.length;
    int size = src.length;

    List<int> key = List.generate(
        256, (index) => passwd.codeUnitAt(index % plen));
    List<int> sbox = List.generate(256, (index) => index);

    for (i = 0; i < 256; i++) {
      j = (j + sbox[i] + key[i]) % 256;
      temp = sbox[i].toString();
      sbox[i] = sbox[j];
      sbox[j] = int.parse(temp);
    }

    List<String> output = List.filled(size, '');
    for (i = 0; i < size; i++) {
      a = (a + 1) % 256;
      b = (b + sbox[a]) % 256;
      temp = sbox[a].toString();
      sbox[a] = sbox[b];
      sbox[b] = int.parse(temp);
      c = (sbox[a] + sbox[b]) % 256;
      temp = (src.codeUnitAt(i) ^ sbox[c]).toRadixString(16);
      temp = temp.padLeft(2, '0');
      output[i] = temp;
    }

    return output.join('');
  }

// Function to simulate the onPwdLogin functionality
  void onPwdLogin() {
    String passwordName = "24947"; // Replace with your password name
    String password = "Bluejerking69"; // Replace with your password

    if (!pwdValidator()) return;

    var rckey = DateTime
        .now()
        .millisecondsSinceEpoch
        .toString();

    var pwd = doEncryptRC4(password, rckey);

    var params = {
      'opr': 'pwdLogin',
      'userName': passwordName,
      'pwd': pwd,
      'auth_tag': rckey,
      'rememberPwd': '0'
    };

    // Make the login request using loginRequest function
    loginRequest(params, "mode_password", "password_submitBtn");
    return;
  }

// Dummy implementation of loginRequest function
  void loginRequest(Map<String, String> params, String mode, String submitBtn) {
    // Simulate login request
    print('Login request sent with parameters: $params');
  }

// Dummy implementation of password validator
  bool pwdValidator() {
    // Perform password validation
    return true;
  }

  void main() {
    // Call the onPwdLogin function to simulate login process
    onPwdLogin();
  }
}
