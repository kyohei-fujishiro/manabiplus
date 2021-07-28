import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:manabiplus/option/option_account.dart';
import 'package:manabiplus/option/option_text.dart';
import 'package:manabiplus/sinup/user_info_page.dart';
import 'package:manabiplus/sinup/sinup_page.dart';
class OptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: FlatButton(
                  child: Text(
                    '教材設定',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Color(0xff707070),
                        fontFamily: 'Material',
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TextOption(),//todo 繊維方法
                        fullscreenDialog: true,
                      ),
                    );

                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child:FlatButton (
                  child: Text(
                    'アカウント設定',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Color(0xff707070),
                        fontFamily: 'Material',
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserIn(),//todo 遷移方法
                        fullscreenDialog: true,
                      ),
                    );


                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: FlatButton(
                  child: Text(
                    'ログアウト',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Color(0xff707070),
                        fontFamily: 'Material',
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () async {
                    FirebaseAuth.instance.signOut();
                    await Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }),
                    );
                  }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: FlatButton(
                  child: Text(
                    'ご利用規約',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Color(0xff707070),
                        fontFamily: 'Material',
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: (){},
                ),
              ),

            ],
          ),
        ),
      ),
    ); //todo コメントアウト
  }
}
