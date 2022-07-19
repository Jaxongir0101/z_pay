import 'package:flutter/material.dart';

class PartnerStore extends StatefulWidget {
  const PartnerStore({super.key});

  @override
  State<PartnerStore> createState() => _PartnerStoreState();
}

class _PartnerStoreState extends State<PartnerStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff3554D1),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Магазин партнеров",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Mont",
            color: Color(0xff3554D1),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
