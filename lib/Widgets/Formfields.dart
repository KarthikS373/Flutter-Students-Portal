import 'package:flutter/material.dart';

// Controllers and Visibility
bool _setVisibility = true;
TextEditingController _usernameController = TextEditingController();
TextEditingController _passwdController = TextEditingController();
TextEditingController _cpasswdController = TextEditingController();

// String and Error Handle
String _errorHandle = 'null';
bool _isLoading = false;

class BuildUsername extends StatefulWidget {
  const BuildUsername({Key? key}) : super(key: key);

  @override
  _BuildUsernameState createState() => _BuildUsernameState();
}

class _BuildUsernameState extends State<BuildUsername> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _usernameController,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.15),
        prefixIcon: Icon(
          Icons.person_outline,
          color: Colors.grey.withOpacity(0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Username",
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 17,
        ),
      ),
      onSaved: (value) {
        // Return code after saving
      },
    );
  }
}

class BuildEmail extends StatefulWidget {
  const BuildEmail({Key? key}) : super(key: key);

  @override
  _BuildEmailState createState() => _BuildEmailState();
}

class _BuildEmailState extends State<BuildEmail> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.15),
        prefixIcon: Icon(
          Icons.alternate_email_rounded,
          color: Colors.grey.withOpacity(0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Email",
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 17,
        ),
      ),
    );
  }
}

class BuildPassword extends StatefulWidget {
  const BuildPassword({Key? key}) : super(key: key);

  @override
  _BuildPasswordState createState() => _BuildPasswordState();
}

class _BuildPasswordState extends State<BuildPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _passwdController,
      validator: (value) {
        if (value != null) {
          if (value.length < 8) {
            return "Minimum 8 characters";
          } else {
            return null;
          }
        } else {
          return "Required";
        }
      },
      keyboardType: TextInputType.visiblePassword,
      obscureText: _setVisibility,
      obscuringCharacter: '●',
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.15),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.grey.withOpacity(0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Password",
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 17,
        ),
        suffixIcon: IconButton(
          iconSize: 20,
          focusColor: Colors.grey,
          icon: Icon(_setVisibility
              ? (Icons.remove_red_eye_outlined)
              : (Icons.security)),
          onPressed: () {
            setState(() {
              _setVisibility = !_setVisibility;
            }
          );
        },
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}

class BuildCpassword extends StatefulWidget {
  const BuildCpassword({Key? key}) : super(key: key);

  @override
  _BuildCpasswordState createState() => _BuildCpasswordState();
}

class _BuildCpasswordState extends State<BuildCpassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _cpasswdController,
      validator: (value) {
        if (value != _passwdController.text) {
          return "Password not matching";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.visiblePassword,
      obscureText: _setVisibility,
      obscuringCharacter: '●',
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.15),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.grey.withOpacity(0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.1,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Confirm Password",
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 17,
        ),
        suffixIcon: IconButton(
          iconSize: 20,
          focusColor: Colors.grey,
          icon: Icon(_setVisibility
              ? (Icons.remove_red_eye_outlined)
              : (Icons.security)),
          onPressed: () {
            setState(() {
              _setVisibility = !_setVisibility;
            });
          },
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}

class LoginBtn extends StatefulWidget {
  const LoginBtn({Key? key}) : super(key: key);

  @override
  _LoginBtnState createState() => _LoginBtnState();
}

class _LoginBtnState extends State<LoginBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.2,
      child: InkWell(
        highlightColor: Colors.blue.withOpacity(0.5),
        splashColor: Colors.grey,
        customBorder: StadiumBorder(),
        child: const Text(
          "Sign UP",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
