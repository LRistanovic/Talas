import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/assets.dart';
import 'package:talas/common/listener.dart';
import 'package:talas/main/account_tab/providers/account_info_provider.dart';
import 'package:talas/main/account_tab/subtabs/edit_account/edit_account_provider.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_state.dart';
import 'package:talas/palette.dart';
import 'package:talas/common/widgets.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Izmijeni nalog"),
        backgroundColor: Palette.primary,
      ),
      body: ChangeNotifierProvider(
        create: (context) => AccountInfoProvider(),
        child: Consumer<AccountInfoProvider>(
          builder: (_, accountInfoProvider, __) => Container(
            height: MediaQuery.of(context).size.height,
            color: Palette.light,
            child: accountInfoProvider.state.maybeWhen(
              success: (userInfo) => ChangeNotifierProvider(
                create: (context) => EditAccountProvider(userInfo),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
                    child: Column(
                      children: [
                        const Text(
                          "Unesi izmjene",
                          style: TextStyle(
                            color: Palette.primary,
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Consumer<EditAccountProvider>(
                          builder: (_, editAccountProvider, __) => OutlinedButton(
                            onPressed: editAccountProvider.pickImage,
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(width: 3, color: Palette.primary),
                              shape: const CircleBorder(),
                            ),
                            child: ClipOval(
                              child: editAccountProvider.newImage != null
                                  ? Image.file(
                                      File(editAccountProvider.newImage!.path),
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 100,
                                    )
                                  : Image.network(
                                      "http://talas.gimnazijapg.me/images/profile/${NetworkRepository.myId}.png",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                      errorBuilder: (_, __, ___) => Image.asset(
                                        Assets.assets_default_pfp_png,
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Consumer<EditAccountProvider>(
                          builder: (_, editAccountProvider, __) => RegularInput(
                            hintText: "ime i prezime",
                            onChanged: (String val) {
                              editAccountProvider.name = val;
                            },
                          ),
                        ),
                        Consumer<EditAccountProvider>(
                          builder: (_, editAccountProvider, __) => RegularInput(
                            hintText: "email",
                            onChanged: (String val) {
                              editAccountProvider.email = val;
                            },
                          ),
                        ),
                        Consumer<EditAccountProvider>(
                          builder: (_, editAccountProvider, __) => PasswordInput(
                            onChanged: (String val) {
                              editAccountProvider.password = val;
                            },
                          ),
                        ),
                        Consumer<EditAccountProvider>(
                          builder: (_, editAccountProvider, __) => RegularInput(
                            hintText: "mjesto",
                            onChanged: (String val) {
                              editAccountProvider.location = val;
                            },
                          ),
                        ),
                        Consumer<EditAccountProvider>(
                          builder: (_, editAccountProvider, __) => ElevatedButton(
                            onPressed: editAccountProvider.confirm,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Palette.primary,
                              foregroundColor: Palette.light,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: editAccountProvider.state.when(
                                initial: () => const Text("Potvrdi izmjene"),
                                loading: () => const SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: CircularProgressIndicator(color: Palette.light),
                                ),
                                success: (_) => const Text("Uspješno!"),
                                failure: (_) => Text("Došlo je do greške: $_"),
                              ),
                            ),
                          ),
                        ),
                        ProviderListener<EditAccountProvider>(
                          listener: (context, editAccountProvider) {
                            if (editAccountProvider.state is RequestStateSuccess) {
                              Navigator.of(context).pop();
                            }
                          },
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              orElse: () => const Center(child: CircularProgressIndicator(color: Palette.primary)),
            ),
          ),
        ),
      ),
    );
  }
}
