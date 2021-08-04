import 'package:app_of_apps/site_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({Key? key}) : super(key: key);

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {

  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = siteLink.elementAt().websiteURL;

  Future<void> _launchInBrowser(String url) async{
    if( await canLaunch(url)) { await launch(url, forceSafariVC: false, forceWebView: false, headers: <String, String>{'header_key':'header_value'}, );
      
    }
  }

  @override
  void initState(){
    super.initState();
    //triioo
    SiteUtils.getSiteLinks();
  }
  List<SiteLinks> siteLink = SiteUtils.getSiteLinks();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 38.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              TextButton(
                onPressed: (){

                },
                child: Row(
                  children: const[
                     Icon(Icons.ac_unit, color: Colors.white, size: 30,),
                    SizedBox(width: 10,),
                    Text("Sign"),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                padding: const EdgeInsets.only(
                  left: 30.0,
                  top: 10,
                  right: 30.0,
                ),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: siteLink.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  // Container(
                                  //     height: 26.5,
                                  //     decoration: BoxDecoration(
                                  //         image: DecorationImage(
                                  //           fit: BoxFit.contain,
                                  //           image:  NetworkImage(siteLink.elementAt(index).websiteLogo),
                                  //         ),
                                  //         borderRadius: BorderRadius.circular(25),
                                  //         border: Border.all(
                                  //           color: Colors.blueGrey,
                                  //           width: 1.5,
                                  //
                                  //         ),
                                  //         color: Colors.grey),
                                  //     child:
                                  //     const Text(""),
                                  //     // ClipOval(
                                  //     //   child: Image.network(imgPath),
                                  //     // )
                                  // ),
                                  Text(siteLink.elementAt(index).websiteName,
                                    style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold)),
                                  Divider(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
