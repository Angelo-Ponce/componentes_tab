import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs Form'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autofocus: true,
                  initialValue: 'nombre',
                  // Capitalizar
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value == null) return 'Campo requerido';
                    
                    return value.length < 0 ? 'Minimo 3 letras' : null;
                  },
                  decoration: InputDecoration(
                    hintText: 'User name',
                    labelText: 'Name',
                    helperText: 'Solo letras',
                    suffixIcon: Icon( Icons.group_add_outlined),
                    prefixIcon: Icon( Icons.verified_user_outlined),
                    icon: Icon( Icons.assignment_ind_outlined),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: Colors.green
                    //   )
                    // ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.only( 
                    //     bottomLeft: Radius.circular(10),
                    //     topRight: Radius.circular(10)
                    //     )
                    //   // borderRadius: BorderRadius.circular(20)
                    // )
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
