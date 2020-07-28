class DocumentDescriptor {
  // "id": "01722638262945dea0f7b4f57eba4a74",
  //               "compileTitle": "№ 44 от 02.05.2020 - test examine 5e",
  //               "type": "ORDER",
  //               "title": "test examine 5e",
  //               "controlCardsCount": 0,
  //               "controlCardsRemovedCount": 0,
  //               "responderId": "01684ad838234dd08597e3eeb0343869",
  //               "whenCreated": "2020-05-18T05:18:33.474Z",
  //               "whenEdited": "2020-05-22T04:00:09.341Z",
  //               "signerId": "01684ad838234dd08597e3eeb0343869",
  //               "actorId": "01684ad838234dd08597e3eeb0343869",
  //               "overseerId": "01684ad838234dd08597e3eeb0343869",
  final String id;
  final String compileTitle;

  DocumentDescriptor({this.id, this.compileTitle});

  factory DocumentDescriptor.fromJson(Map<String, dynamic> json) {
    return DocumentDescriptor(
        id: json['id'] as String,
        compileTitle: json['compileTitle'] as String,
        );
  }
}