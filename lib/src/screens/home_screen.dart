import 'package:flutter/material.dart';
import '../components/ypay_app_bar.dart';
import '../components/ypay_text_field.dart';
import '../components/ypay_radio_button.dart';
import '../components/ypay_dropdown_button.dart';
import '../components/ypay_textstyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _nameController = TextEditingController();
  String _selectedGender = '1';
  String? _selectedCountry;

  final List<Map<String, dynamic>> _countries = const [
    {
      'name': 'United States',
      'icon': Icons.flag,
      'code': 'US'
    },
    {
      'name': 'United Kingdom',
      'icon': Icons.flag,
      'code': 'UK'
    },
    {
      'name': 'Canada',
      'icon': Icons.flag,
      'code': 'CA'
    },
    {
      'name': 'Australia',
      'icon': Icons.flag,
      'code': 'AU'
    },
    {
      'name': 'India',
      'icon': Icons.flag,
      'code': 'IN'
    },
  ];

  void _handleCountryChange(String? value) {
    if (value != null && value != _selectedCountry) {
      setState(() => _selectedCountry = value);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YPayAppBar(
        title: 'Select Country',
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text('Choose Your Country', 
                style: YpayTextStyle.subh2.copyWith(fontSize: 18)),
            const SizedBox(height: 16),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: YPayDropdownButton<String>(
                value: _selectedCountry,
                hint: 'Select Country',
                prefixIcon: Icon(
                  Icons.flag,
                  color: YpayColors.primary,
                  size: 24,
                ),
                items: _countries.map((country) {
                  final String name = country['name'] as String;
                  final String code = country['code'] as String;
                  return DropdownMenuItem<String>(
                    value: name,
                    child: Text(
                      '$name ($code)',
                      style: YpayTextStyle.inputText.copyWith(
                        fontSize: 16,
                        color: YpayColors.black87,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: _handleCountryChange,
              ),
            ),
            Text('Text Field Component', style: YpayTextStyle.subh3),
            const SizedBox(height: 8),
            YPayTextfield(
              label: 'Name',
              title: 'Name Input',
              hintText: 'Enter your name',
              controller: _nameController,
              regexList: [RegExp(r'^[a-zA-Z\s]*$')],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),

            // Radio Button Example
            Text('Radio Button Component', style: YpayTextStyle.subh3),
            const SizedBox(height: 8),
            Row(
              children: [
                YPayRadioButton<String>(
                  value: '1',
                  groupValue: _selectedGender,
                  label: '1',
                  onChanged: (value) => setState(() => _selectedGender = value!),
                ),
                const SizedBox(width: 16),
                YPayRadioButton<String>(
                  value: '2',
                  groupValue: _selectedGender,
                  label: '2',
                  onChanged: (value) => setState(() => _selectedGender = value!),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Button Example
            Text('Button Component', style: YpayTextStyle.subh3),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle login logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: YpayColors.primary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Login',
                  style: YpayTextStyle.ButtonText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 