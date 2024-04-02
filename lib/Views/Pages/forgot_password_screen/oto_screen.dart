import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/formField.dart';

import '../../Components/forgot_pass_appBar.dart';
import '../../Components/forgot_pass_btn.dart';
import '../../Components/forgot_pass_progress_indicator.dart';
import 'reset_screen.dart';

class OTPScreen extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: FractionallySizedBox(
        alignment: Alignment.center,
        heightFactor: 1.0,
        widthFactor: 1.0,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildProgressIndicators(),
                      const SizedBox(height: 30),
                      const Text(
                        'OTP Code',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Please enter the code that we sent to your email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Form(
                        key: _formKey,
                        child: buildFormField(
                          controller: otpController,
                          type: TextInputType.number,
                          label: 'OTP Code',
                          prefix: Icons.lock_outline,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'OTP code must not be empty';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 30),
                      buildContinueButton(context, () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResetPasswordScreen()),
                          );
                        }
                      }),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildProgressIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildProgressIndicator(Color(0xFF1565C0)),
        const SizedBox(width: 4),
        buildProgressIndicator(Color(0xFF1565C0)),
        const SizedBox(width: 4),
        buildProgressIndicator(Color(0x331565C0)),
      ],
    );
  }
}
