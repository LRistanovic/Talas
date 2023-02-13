import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/assets.dart';
import 'package:talas/common/listener.dart';
import 'package:talas/common/widgets.dart';
import 'package:talas/main/new_tab/new_community/new_community_provider.dart';
import 'package:talas/networking/request_provider/request_state.dart';
import 'package:talas/palette.dart';

class NewCommunityScreen extends StatelessWidget {
  const NewCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Napravi novu zajednicu"),
        backgroundColor: Palette.primary,
      ),
      body: ChangeNotifierProvider(
        create: (context) => NewCommunityProvider(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
            child: Column(
              children: [
                Consumer<NewCommunityProvider>(
                  builder: (_, newCommunityProvider, __) => OutlinedButton(
                    onPressed: newCommunityProvider.pickImage,
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 3, color: Palette.primary),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(0),
                    ),
                    child: ClipOval(
                      child: newCommunityProvider.image != null
                          ? Image.file(
                              File(newCommunityProvider.image!.path),
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            )
                          : Image.asset(
                              Assets.assets_main_communities_placeholder_picture_png,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Consumer<NewCommunityProvider>(
                  builder: (_, newCommunityProvider, __) => RegularInput(
                    hintText: "naziv",
                    onChanged: (String val) {
                      newCommunityProvider.name = val;
                    },
                  ),
                ),
                Consumer<NewCommunityProvider>(
                  builder: (_, newCommunityProvider, __) => RegularInput(
                    hintText: "mjesto",
                    onChanged: (String val) {
                      newCommunityProvider.location = val;
                    },
                  ),
                ),
                Consumer<NewCommunityProvider>(
                  builder: (_, newCommunityProvider, __) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: "opis",
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      ),
                      onChanged: (String val) {
                        newCommunityProvider.description = val;
                      },
                    ),
                  ),
                ),
                Consumer<NewCommunityProvider>(
                  builder: (_, newCommunityProvider, __) => ElevatedButton(
                    onPressed: newCommunityProvider.canConfirm() ? newCommunityProvider.confirm : null,
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
                      child: newCommunityProvider.state.when(
                        initial: () => const Text("Napravi"),
                        loading: () => const SizedBox(
                          height: 15,
                          width: 15,
                          child: CircularProgressIndicator(color: Palette.light),
                        ),
                        success: (_) => const Text("Uspješno!"),
                        failure: (_) => Text("Došlo je do greške $_"),
                      ),
                    ),
                  ),
                ),
                ProviderListener<NewCommunityProvider>(
                  listener: (context, loginProvider) {
                    if (loginProvider.state is RequestStateSuccess) {
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
    );
  }
}
