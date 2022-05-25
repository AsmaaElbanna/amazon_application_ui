import 'package:amazon_application_ui/constants.dart';
import 'package:flutter/material.dart';

List<Widget> buildDescription() => [
      const Expanded(
        child: Padding(
          padding: EdgeInsets.all(Constants.kPadding),
          child: SingleChildScrollView(
            child: Text(
              'Bacon ipsum dolor amet meatball tail sausage landjaeger. Pastrami porchetta beef ribs, filet mignon shankle tongue pork chop picanha. Ribeye turducken rump fatback chislic. Swine pork meatball porchetta alcatra flank corned beef ham hock ball tip tri-tip jowl buffalo. Beef ham hock pork chop alcatra pastrami pork loin shankle.',
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(Constants.kPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.deepOrange,
              ), onPressed: () {

            },
            ),
            TextButton(
              onPressed: () {},
              child: const Text('One click purchase'),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.deepOrange,
                primary: Colors.white
              )
            )
          ],
        ),
      ),
      SizedBox(
        height: 40,
      )
    ];
