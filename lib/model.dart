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
    bookModel(title: 'The Secret\nGarden', surat: 'assets/images/garden.jpg', kitap: 'assets/pdf/garden.pdf', ses: 'audio/garden.mp3', dereje: '2 dereje'),
    bookModel(title: 'The Black Cat', surat: 'assets/images/cat.png', kitap: 'assets/pdf/cat.pdf', ses: 'audio/cat.mp3', dereje: '3 dereje'),
    bookModel(title: 'The Lottery\nTicket', surat: 'assets/images/ticket.jpg', kitap: 'assets/pdf/ticket.pdf', ses: 'audio/ticket.mp3', dereje: '1 dereje'),
    // bookModel(title: 'Harry Potter', surat: 'assets/images/hp4.png', kitap: 'kitap', ses: 'ses', dereje: '4 dereje'),
    // bookModel(title: 'Harry Potter', surat: 'assets/images/hp5.png', kitap: 'kitap', ses: 'ses', dereje: '5 dereje'),
    // bookModel(title: 'Harry Potter', surat: 'assets/images/hp6.png', kitap: 'kitap', ses: 'ses', dereje: '6 dereje'),

  ];