import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'appointmentdone.dart';

void main() => runApp(const MySample());

class MySample extends StatefulWidget {
  const MySample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MySampleState();
}

class MySampleState extends State<MySample> {
  bool isLightTheme = false;
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  bool useFloatingAnimation = true;
  final OutlineInputBorder border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey.withOpacity(0.7),
      width: 2.0,
    ),
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool useContinueButton = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Credit Card View Demo',
      debugShowCheckedModeBanner: false,
      themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark,
      theme: ThemeData(
        // Theme data for light theme
      ),
      darkTheme: ThemeData(
        // Theme data for dark theme
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 90,top: 50),
                child: Text(
                  "Payment via visa",
                  style: TextStyle(
                    fontFamily: 'poe',
                    color: Color(0xFF454571),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(),
          automaticallyImplyLeading: false,
          toolbarHeight: 75,
        ),
        resizeToAvoidBottomInset: false,
        body: Builder(
          builder: (BuildContext context) {
            return Container(
              child: SafeArea(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          CreditCardWidget(
                            enableFloatingCard: useFloatingAnimation,
                            cardNumber: cardNumber,
                            expiryDate: expiryDate,
                            cardHolderName: cardHolderName,
                            cvvCode: cvvCode,
                            showBackView: isCvvFocused,
                            obscureCardNumber: true,
                            obscureCardCvv: true,
                            isHolderNameVisible: true,
                            // cardBgColor: isLightTheme
                            //     // ? theme.cardBgLightColor
                            //     // : Constants.greenColor,
                            // backgroundImage: useBackgroundImage ? 'assets/images/go.png' : null,
                            isSwipeGestureEnabled: true,
                            onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
                            customCardTypeIcons: <CustomCardTypeIcon>[
                              CustomCardTypeIcon(
                                cardType: CardType.mastercard,
                                cardImage: Image.asset(
                                  'assets/images/go.png',
                                  height: 55,
                                  width: 48,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  CreditCardForm(
                                    formKey: formKey,
                                    obscureCvv: true,
                                    obscureNumber: true,
                                    cardNumber: cardNumber,
                                    cvvCode: cvvCode,
                                    isHolderNameVisible: true,
                                    isCardNumberVisible: true,
                                    isExpiryDateVisible: true,
                                    cardHolderName: cardHolderName,
                                    expiryDate: expiryDate,
                                    inputConfiguration: const InputConfiguration(
                                      cardNumberDecoration: InputDecoration(
                                        labelText: 'Number',
                                        hintText: 'XXXX XXXX XXXX XXXX',
                                      ),
                                      expiryDateDecoration: InputDecoration(
                                        labelText: 'Expired Date',
                                        hintText: 'XX/XX',
                                      ),
                                      cvvCodeDecoration: InputDecoration(
                                        labelText: 'CVV',
                                        hintText: 'XXX',
                                      ),
                                      cardHolderDecoration: InputDecoration(
                                        labelText: 'Card Holder',
                                      ),
                                    ),
                                    onCreditCardModelChange: onCreditCardModelChange,
                                  ),

                                  Container(
                                    height: 38,
                                    width: 310,
                                    margin: EdgeInsets.only(top:55,left:38,right:38),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(63, 59, 108, 1),
                                          Color.fromRGBO(63, 59, 108, 1),
                                        ],
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: useContinueButton ? () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => Appointment(),
                                          ),
                                        );
                                      } : () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("OoOps!!"),
                                              content: Text("Please enter valid data to continue "),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("Ok"),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        "Continue",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontFamily: 'poe',
                                          height: 1.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });

    bool isAllValid = formKey.currentState?.validate() ?? false;

    setState(() {
      useContinueButton = isAllValid;
    });
  }
}
