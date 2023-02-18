# Form implementation in flutter

## Widget Tree

1. Form -> formKey
2. ListView -> children
3. TextFormField 
  - validator: (value){
  
  - }
  - controller: ,
  - inputDecoration: ,


## Sample Code

```
Form(
  key: formKey,
  child: Column(
    children: [
      TextFormField(
        validator: (value){
          return value!.isEmpty ? "Input fiend cannot be blank" : null;
        },
        controller: email,
        decoration: inputDecor("E-mail")
      ),
      TextFormField(
        obscureText: encrypted,
        validator: (value){
          return value!.isEmpty ? "Password field cannot be blank" : value.length < 6 ? "Password should contain at least 6 characters." : null;
        },
        controller: password,
        decoration: inputDecor("Password").copyWith(
          suffixIcon: GestureDetector(
            onTap: (){
              toggle();
            },
            child: const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.grey,
            ),
          ),
        ),
      ),
```

## Output Sample

![Registration Screen](try.png?raw=true)
![Registration Screen](image_two.png)
