import 'package:flutter/material.dart';
import 'carddata.dart';
import 'face_sccaner.dart';

class PersonData extends StatefulWidget {
  @override
  _PersonDataState createState() => _PersonDataState();
}

class _PersonDataState extends State<PersonData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person data"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.grey[700],
                ),
                height: 300,
                width: 200,
              ),
              SizedBox(
                height: 30,
              ),
              new CardData(
                title: 'Name:  ',
                subtitle: "mohamed",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'Father Name:  ',
                subtitle: "Khaled mohamed khira",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'Street:  ',
                subtitle: "Sayde Hbas Street",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'Governorate:  ',
                subtitle: "Elmenofia",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'City:  ',
                subtitle: "Sirs El Layan",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'National ID:  ',
                subtitle: "32561753101205",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'Birt date:  ',
                subtitle: "2/8/1998",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'Jop:  ',
                subtitle: "Student",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                pigtitels: 'Jop Place:',
                pigsubtitel: "Faculty of Computers and Information Menoufia",
                title: '',
                subtitle: '',
              ),
              new CardData(
                title: 'Sex:  ',
                subtitle: "Male",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'Religion:  ',
                subtitle: "Muslim",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'Social status:  ',
                subtitle: "single",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'The card is valid even:  ',
                subtitle: "25/5/2030",
                pigsubtitel: '',
                pigtitels: '',
              ),
              new CardData(
                title: 'Attitude towards recruitment:  ',
                subtitle: "Still Student",
                pigsubtitel: '',
                pigtitels: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
