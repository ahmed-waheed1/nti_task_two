import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:logger/logger.dart';

import '../../../../core/resources/app_padding.dart';
import '../../../../core/resources/app_size.dart';
import '../widgets/save_button.dart';
import '../widgets/user_image.dart';
import '../widgets/user_name_form.dart';

class NewUser extends StatefulWidget {
  const NewUser({super.key});

  @override
  State<NewUser> createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  final Logger logger = Logger();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isTyping = false;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      setState(() {
        _isTyping = _nameController.text.isNotEmpty;
      });
      logger.d(_nameController.text);
    });
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UserImage(),
            const Gap(AppSize.s70),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: UserNameForm(
                formKey: _formKey,
                nameController: _nameController,
                focusNode: _focusNode,
                isFocused: _isFocused,
              ),
            ),
            const Gap(AppSize.s70),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: SaveButton(
                formKey: _formKey,
                logger: logger,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
