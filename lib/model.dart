class bookModel {
  String title;
  String surat;
  String kitap;
  String ses;
  String dereje;

  bookModel({
    required this.title,
    required this.surat,
    required this.kitap,
    required this.ses,
    required this.dereje,
  });
}

List<bookModel> kitapList = [
    bookModel(title: 'Harry Potter', surat: 'assets/images/hp1.png', kitap: 'kitap', ses: 'ses', dereje: '1 dereje'),
    bookModel(title: 'Harry Potter', surat: 'assets/images/hp2.png', kitap: 'kitap', ses: 'ses', dereje: '2 dereje'),
    bookModel(title: 'Harry Potter', surat: 'assets/images/hp3.png', kitap: 'kitap', ses: 'ses', dereje: '3 dereje'),
    bookModel(title: 'Harry Potter', surat: 'assets/images/hp4.png', kitap: 'kitap', ses: 'ses', dereje: '4 dereje'),
    bookModel(title: 'Harry Potter', surat: 'assets/images/hp5.png', kitap: 'kitap', ses: 'ses', dereje: '5 dereje'),
    bookModel(title: 'Harry Potter', surat: 'assets/images/hp6.png', kitap: 'kitap', ses: 'ses', dereje: '6 dereje'),

  ];