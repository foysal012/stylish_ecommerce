import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _pinCodeController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _countryController = TextEditingController();
  final _bankAccountNoController = TextEditingController();
  final _bankAccountNameController = TextEditingController();
  final _ifscCodeController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _pinCodeController.dispose();
    _addressController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _countryController.dispose();
    _bankAccountNoController.dispose();
    _bankAccountNameController.dispose();
    _ifscCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
          backgroundColor: Color(0xffF2F2F2),
          leadingWidth: 40,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[500],
                ),
                child: Icon(Symbols.arrow_back),
              ),
            ),
          ),

          title: Text('Address', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true
      ),

      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple
                      ),
                    ),
                    Positioned(
                        right: 1.0,
                        bottom: 1.0,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.circle
                          ),
                          child: Icon(Symbols.border_color)
                        )
                    )
                  ],
                ),
              ),
              Gap(20.0),
          
              Text('Personal Details',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              Gap(20.0),
          
              Text('Email Address',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),
          
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: 'foysal999@gmail.com',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(10.0),
          
              Text('Password',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),
          
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: '*********',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(20.0),
          
              Divider(
                thickness: 2.0,
                color: Color(0xffA8A8A9)
              ),
              Gap(20.0),
          
              Text('Business Address Details',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(20.0),
          
              Text('PinCode',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),
          
              TextFormField(
                controller: _pinCodeController,
                decoration: InputDecoration(
                    hintText: '450116',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(10.0),
          
              Text('Address',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),
          
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                    hintText: '216 St Paul\'s Rd',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(10.0),
          
              Text('City',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),
          
              TextFormField(
                controller: _cityController,
                decoration: InputDecoration(
                    hintText: 'London',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(10.0),
          
              Text('State',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),
          
              TextFormField(
                controller: _stateController,
                decoration: InputDecoration(
                    hintText: 'NT 2LL',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(10.0),
          
              Text('Country',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),
          
              TextFormField(
                controller: _countryController,
                decoration: InputDecoration(
                    hintText: 'United Kingdom',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(20.0),

              Divider(
                  thickness: 2.0,
                  color: Color(0xffA8A8A9)
              ),
              Gap(20.0),

              Text('Bank Account Details',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(20.0),

              Text('bank Account Number',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),

              TextFormField(
                controller: _bankAccountNoController,
                decoration: InputDecoration(
                    hintText: '204356XXXXXXXX',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(10.0),

              Text('Account Holder\'s Name',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),

              TextFormField(
                controller: _bankAccountNameController,
                decoration: InputDecoration(
                    hintText: 'Foysal Joarder',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(10.0),

              Text('IFSC Code',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(5.0),

              TextFormField(
                controller: _ifscCodeController,
                decoration: InputDecoration(
                    hintText: 'SBINOO428',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            width: 2,
                            color: Color(0xffA8A8A9)
                        )
                    )
                ),
              ),
              Gap(20.0),

              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 52,
                  width: MediaQuery.sizeOf(context).width,
                  alignment: AlignmentGeometry.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xffF83758)
                  ),
                  child: Text('Save',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              Gap(20.0),
            ],
          ),
        ),
      ),
    );
  }
}
