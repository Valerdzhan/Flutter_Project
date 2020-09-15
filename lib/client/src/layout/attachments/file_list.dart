import 'package:flutter/material.dart';
import 'package:myapp/models/graphql/graphql_api.document.dart';
import 'package:myapp/presentation/my_flutter_app_icons.dart';

class FileListLayout extends StatelessWidget {
  final List<GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments>
      attachments;

  FileListLayout({
    Key key,
    this.attachments = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              color: Colors.white),
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Вложения",
                style: Theme.of(context).textTheme.headline5.apply(
                      color: Color(0xff0b1666),
                      fontWeightDelta: 2,
                    ),
              ),
              FlatButton(
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: ListView.builder(
              itemCount: attachments.length,
              itemBuilder: (ctx, i) {
                String image;
                Icon icon;
                Color color;
                switch (attachments[i].fileType) {
                  case ('.doc'):
                    {
                      icon = Icon(FontAwesome.file_word);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.docx'):
                    {
                      icon = Icon(FontAwesome.file_word);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.rtf'):
                    {
                      icon = Icon(FontAwesome.file_word);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.ocx'):
                    {
                      icon = Icon(FontAwesome.file_word);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.pdf'):
                    {
                      icon = Icon(FontAwesome.file_pdf);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.txt'):
                    {
                      icon = Icon(FontAwesome.file);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.ptx'):
                    {
                      icon = Icon(FontAwesome.file_powerpoint);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.ppt'):
                    {
                      icon = Icon(FontAwesome.file_powerpoint);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.xls'):
                    {
                      icon = Icon(FontAwesome.file_excel);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.xlsx'):
                    {
                      icon = Icon(FontAwesome.file_excel);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.xlsm'):
                    {
                      icon = Icon(FontAwesome.file_excel);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.xlsb'):
                    {
                      icon = Icon(FontAwesome.file_excel);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.jpg'):
                    {
                      icon = Icon(FontAwesome.file_image);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.png'):
                    {
                      icon = Icon(FontAwesome.file_image);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.gif'):
                    {
                      icon = Icon(FontAwesome.file_image);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.zip'):
                    {
                      icon = Icon(FontAwesome.file_archive);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.rar'):
                    {
                      icon = Icon(FontAwesome.file_archive);
                      color = Color(0xffe3f9f3);
                    }
                    break;
                  case ('.js'):
                    {
                      icon = Icon(FontAwesome.file_code);
                      color = Color(0xffe3f9f3);
                    }
                    break;

                  // case fileType.document:
                  //   {
                  //     image = 'assets/file_word.png';
                  //     color = Color(0xffeaeaea);
                  //   }
                  //   break;
                  // case fileType.pdf:
                  //   {
                  //     image = 'assets/file_pdf.png';
                  //     color = Color(0xfff8bdba);
                  //   }
                  //   break;
                  // case fileType.video:
                  //   {
                  //     image = 'assets/file_video.png';
                  //     color = Color(0xfffceeeb);
                  //   }
                  //   break;
                  default:
                    {
                      icon = Icon(FontAwesome.file);
                      color = Color(0xff939aef);
                    }
                }
                return ListTile(
                  onTap: () {},
                  leading: Container(
                    padding: EdgeInsets.all(11.0),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: icon,
                  ),
                  title: Text("${attachments[i].fileName}"),
                  subtitle: Text(
                      "${attachments[i].date} | ${attachments[i].fileLength}"),
                  trailing: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                );
              }
              // children: [
              //   Container(color: Colors.red, height: 150.0),
              //   Container(color: Colors.purple, height: 150.0),
              //   Container(color: Colors.green, height: 150.0),
              //   Container(color: Colors.orange, height: 150.0),
              //   Container(color: Colors.yellow, height: 150.0),
              //   Container(color: Colors.pink, height: 150.0),
              //   Container(color: Colors.cyan, height: 150.0),
              //   Container(color: Colors.indigo, height: 150.0),
              //   Container(color: Colors.blue, height: 150.0),
              // ],
              ),
        ),
      ],
    );
    // Container(
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.only(
    //         topLeft: Radius.circular(25.0),
    //         topRight: Radius.circular(25.0),
    //       ),
    //       color: Colors.white),
    //   padding: EdgeInsets.all(15.0),
    //   child: Expanded(
    //     flex: 1,
    //     child:
    // Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: <Widget>[
    //         Text(
    //           "Вложения",
    //           style: Theme.of(context).textTheme.display1.apply(
    //                 color: Color(0xff0b1666),
    //                 fontWeightDelta: 2,
    //               ),
    //         ),
    //         FlatButton(
    //           child: Text(
    //             "View All",
    //             style: TextStyle(color: Colors.blue),
    //           ),
    //           onPressed: () {},
    //         )
    //       ],
    //     ),
    //     //  ListView(
    //     //   children: <Widget>[
    //     //     // Row(
    //     //     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     //     //   children: <Widget>[
    //     //     //     Text(
    //     //     //       "Вложения",
    //     //     //       style: Theme.of(context).textTheme.display1.apply(
    //     //     //             color: Color(0xff0b1666),
    //     //     //             fontWeightDelta: 2,
    //     //     //           ),
    //     //     //     ),
    //     //     //     FlatButton(
    //     //     //       child: Text(
    //     //     //         "View All",
    //     //     //         style: TextStyle(color: Colors.blue),
    //     //     //       ),
    //     //     //       onPressed: () {},
    //     //     //     )
    //     //     //   ],
    //     //     // ),
    //     //     // Container(color: Colors.red, height: 150.0),
    //     //     // Container(color: Colors.purple, height: 150.0),
    //     //     // Container(color: Colors.green, height: 150.0),
    //     //     // Container(color: Colors.orange, height: 150.0),
    //     //     // Container(color: Colors.yellow, height: 150.0),
    //     //     // Container(color: Colors.pink, height: 150.0),
    //     //     // Container(color: Colors.cyan, height: 150.0),
    //     //     // Container(color: Colors.indigo, height: 150.0),
    //     //     // Container(color: Colors.blue, height: 150.0),
    //     //     // Expanded(
    //     //     //   child: ListView.builder(
    //     //     //     itemCount: attachments.length,
    //     //     //     itemBuilder: (ctx, i) {
    //     //     //       String image;
    //     //     //       Icon icon;
    //     //     //       Color color;
    //     //     //       switch (attachments[i].fileType) {
    //     //     //         case ('.doc'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_word);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.docx'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_word);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.rtf'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_word);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.ocx'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_word);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.pdf'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_pdf);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.txt'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.ptx'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_powerpoint);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.ppt'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_powerpoint);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.xls'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_excel);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.xlsx'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_excel);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.xlsm'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_excel);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.xlsb'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_excel);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.jpg'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_image);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.png'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_image);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.gif'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_image);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.zip'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_archive);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.rar'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_archive);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;
    //     //     //         case ('.js'):
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file_code);
    //     //     //             color = Color(0xffe3f9f3);
    //     //     //           }
    //     //     //           break;

    //     //     //         // case fileType.document:
    //     //     //         //   {
    //     //     //         //     image = 'assets/file_word.png';
    //     //     //         //     color = Color(0xffeaeaea);
    //     //     //         //   }
    //     //     //         //   break;
    //     //     //         // case fileType.pdf:
    //     //     //         //   {
    //     //     //         //     image = 'assets/file_pdf.png';
    //     //     //         //     color = Color(0xfff8bdba);
    //     //     //         //   }
    //     //     //         //   break;
    //     //     //         // case fileType.video:
    //     //     //         //   {
    //     //     //         //     image = 'assets/file_video.png';
    //     //     //         //     color = Color(0xfffceeeb);
    //     //     //         //   }
    //     //     //         //   break;
    //     //     //         default:
    //     //     //           {
    //     //     //             icon = Icon(FontAwesome.file);
    //     //     //             color = Color(0xff939aef);
    //     //     //           }
    //     //     //       }
    //     //     //       return ListTile(
    //     //     //         onTap: () {},
    //     //     //         leading: Container(
    //     //     //           padding: EdgeInsets.all(11.0),
    //     //     //           decoration: BoxDecoration(
    //     //     //             color: color,
    //     //     //             borderRadius: BorderRadius.circular(5.0),
    //     //     //           ),
    //     //     //           child: icon,
    //     //     //         ),
    //     //     //         title: Text("${attachments[i].fileName}"),
    //     //     //         subtitle: Text(
    //     //     //             "${attachments[i].date} | ${attachments[i].fileLength}"),
    //     //     //         trailing: IconButton(
    //     //     //           icon: Icon(Icons.more_vert),
    //     //     //           onPressed: () {},
    //     //     //         ),
    //     //     //       );
    //     //     //     },
    //     //     //   ),
    //     //     // )
    //     //   ],
    //     // ),
    //   ),
    // );
  }
}

enum folderType { archive, image, normal }
enum fileType { sheet, pdf, video, document }

Color blueColor = Color(0xff4e5af6);

String profileImage =
    "https://cdn.pixabay.com/photo/2016/10/09/18/03/smile-1726471_960_720.jpg";

List<Map<String, dynamic>> storageList = [
  {
    'name': 'Images',
    'size': '17.0 GB',
    'color': Color(0xff3d4bf7),
  },
  {
    'name': 'Documents',
    'size': '27.0 GB',
    'color': Color(0xfff7b63a),
  },
  {
    'name': 'Media',
    'size': '13.0 GB',
    'color': Color(0xffef5b54),
  },
  {
    'name': 'Other',
    'size': '97.0 GB',
    'color': Color(0xff5dcb86),
  },
  {
    'name': 'Archive',
    'size': '7.0 GB',
    'color': Color(0xffa257df),
  },
  {
    'name': 'Unknown',
    'size': '5.0 GB',
    'color': Color(0xffbec2da),
  },
];

List<Map<String, dynamic>> progressItems = [
  {
    'color': Color(0xff3a49f6),
    'progress': .3,
  },
  {
    'color': Color(0xfff7bc48),
    'progress': .1,
  },
  {
    'color': Color(0xffef5b54),
    'progress': .4,
  },
  {
    'color': Color(0xff5dcb86),
    'progress': .2,
  }
];

List<Map<String, dynamic>> filesList = [
  {
    'name': 'sheet.xlsx',
    'date': '13/10/2019',
    'size': '10 KB',
    'type': fileType.sheet
  },
  {
    'name': 'Cybdom Course.pdf',
    'date': '13/09/2019',
    'size': '29 MB',
    'type': fileType.pdf
  },
  {
    'name': 'Provider Video.mp4',
    'date': '04/10/2019',
    'size': '293 MB',
    'type': fileType.video
  },
  {
    'name': 'invoice.docx',
    'date': '04/10/2019',
    'size': '293 MB',
    'type': fileType.document
  },
  {
    'name': 'sheet.xlsx',
    'date': '13/10/2019',
    'size': '10 KB',
    'type': fileType.sheet
  },
  {
    'name': 'Cybdom Course.pdf',
    'date': '13/09/2019',
    'size': '29 MB',
    'type': fileType.pdf
  },
  {
    'name': 'Provider Video.mp4',
    'date': '04/10/2019',
    'size': '293 MB',
    'type': fileType.video
  },
  {
    'name': 'invoice.docx',
    'date': '04/10/2019',
    'size': '293 MB',
    'type': fileType.document
  },
];
List<Map<String, dynamic>> foldersList = [
  {
    'name': 'My Pictures',
    'itemsCount': '49',
    'size': '17 GB',
    'type': folderType.image
  },
  {
    'name': 'My Documents',
    'itemsCount': '139',
    'size': '39 GB',
    'type': folderType.normal
  },
  {
    'name': 'Flutter Packages.zip',
    'itemsCount': '3949',
    'size': '3 GB',
    'type': folderType.archive
  },
  {
    'name': 'Important Documents',
    'itemsCount': '739',
    'size': '31 GB',
    'type': folderType.normal
  },
  {
    'name': 'Other Documents',
    'itemsCount': '931',
    'size': '27 GB',
    'type': folderType.normal
  },
  {
    'name': 'Similarly Documents',
    'itemsCount': '841',
    'size': '21 GB',
    'type': folderType.normal
  },
];
