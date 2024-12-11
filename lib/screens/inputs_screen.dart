import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class InputsScreen extends StatelessWidget {

  

   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

  final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Andres',
      'apellido': 'Iniesta',
      'email': 'iniesta@gmail.com',
      'password': '123456',
      'role': 'usuario'
    };

    //bool _checkEnabled = true;
    final ValueNotifier<bool> _checkEnabled = ValueNotifier<bool>(true);

    return Scaffold(
      appBar: AppBar(
        title: Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
         child: Form(
          key: myFormKey,
           child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre del usuario',
                helperText: 'Solo letras',
                icon: Icons.verified_outlined,
                suffixIcon: Icons.person_2_sharp,
                obscureText: false,
                formProperty: 'nombre',
                formValues: formValues,
              ),
           
              const SizedBox(height: 30),
           
              CustomTextFormField(
                hintText: 'Apellidos',
                labelText: 'Apellidos del usuario',
                //helperText: 'Solo letras mamawevo',
                icon: Icons.person,
                //suffixIcon: Icons.person_2_sharp,
                obscureText: false,
                formProperty: 'apellido',
                formValues: formValues,
              ),
           
              const SizedBox(height: 30),
           
              CustomTextFormField(
                hintText: 'E-Mail',
                labelText: 'E-mail del usuario',
                helperText: 'Solo letras mamawevo',
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                formProperty: 'email',
                formValues: formValues,
                //suffixIcon: Icons.person_2_sharp,
              ),
           
              const SizedBox(height: 30),
           
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña del usuario',
                helperText: 'Solo letras mamawevo',
                icon: Icons.security_rounded,
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
                //keyboardType: TextInputType.emailAddress,
                //suffixIcon: Icons.person_2_sharp,
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField(
                items: [
                  DropdownMenuItem(child: Text('Usuario'), value: 'usuario'),
                  DropdownMenuItem(child: Text('Editor'), value: 'editor'),
                  DropdownMenuItem(child: Text('Programador'), value: 'programador'),
                  DropdownMenuItem(child: Text('Aministrador'), value: 'administrador'),
                ],
                 onChanged: ((value){
                  print(value);
                  formValues['role'] = value ?? 'usuario';

                 })
                 ),
              const SizedBox(height: 30),

              ValueListenableBuilder<bool>(
                valueListenable: _checkEnabled,
                builder: (context, value, _){
                  return Checkbox(value: value,
                   onChanged: (newValue){
                   _checkEnabled.value = newValue ?? true;
                   });
                }
                ),

              
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: (){
                  FocusScope.of(context).requestFocus(FocusNode());
                  if(!myFormKey.currentState!.validate()){
                    print('Formulario no valido');
                    return;
                  }
                },
                 child: SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar')),
                  )
                )
            ],
           ),
         ),
      ),
    );
  }
}

