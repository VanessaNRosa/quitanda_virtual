import 'package:flutter/material.dart';
import 'package:quitanda_virtual/src/config/custom_colors.dart';
import 'package:quitanda_virtual/src/pages/common_widgets/custom_text_field.dart';
import 'package:quitanda_virtual/src/config/app_data.dart' as appData;

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil do usuário"),
        foregroundColor: Colors.white,
        backgroundColor: CustomColors.customSwatchColor,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),

      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.email,
            icon: Icons.email,
            label: "E-mail",
          ),
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.name,
            icon: Icons.person,
            label: "Nome",
          ),
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.phone,
            icon: Icons.phone,
            label: "Celular",
          ),
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.cpf,
            icon: Icons.file_copy,
            label: "CPF",
            isSecret: true,
          ),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                side: BorderSide(color: CustomColors.customSwatchColor),
              ),
              onPressed: () {
                updatePassword();
              },
              child: Text(
                "Alterar senha",
                style: TextStyle(
                  fontSize: 18,
                  color: CustomColors.customSwatchColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future <bool?> updatePassword (){
    return showDialog(context: context, 
    builder: (context){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20)
        ),
        child: Stack(
          children: [
              Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const Text("Atualização de senha",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  CustomTextField(icon: 
                  Icons.lock, 
                  label: "Senha atual",
                  isSecret: true,),
                  CustomTextField(icon: 
                  Icons.lock_outline, 
                  label: "Nova senha",
                  isSecret: true,),
                  CustomTextField(icon: 
                  Icons.lock_outline, 
                  label: "Confirmar nova senha",
                  isSecret: true,),
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.customSwatchColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20)
                        )
                      ),
                      onPressed: (){}, child: const Text("Atualizar")),
                  )
                ],
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                }, 
                icon: const Icon(Icons.close)))
          ],
        ),
      );
    });
  }
}
