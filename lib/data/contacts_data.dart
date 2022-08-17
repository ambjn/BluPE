import 'package:blupe/model/contacts_model.dart';

List<ContactsModel> getContacts() {
  List<ContactsModel> categories = [];
  ContactsModel contactsModel = ContactsModel();

  contactsModel = ContactsModel();
  contactsModel.contactName = "Ian";
  contactsModel.imageUrl =
      'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg';
  categories.add(contactsModel);

  contactsModel = ContactsModel();
  contactsModel.contactName = "Adarsh";
  contactsModel.imageUrl =
      "https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg";
  categories.add(contactsModel);

  contactsModel = ContactsModel();
  contactsModel.contactName = "Yash";
  contactsModel.imageUrl =
      "https://media.cntraveler.com/photos/60596b398f4452dac88c59f8/16:9/w_3999,h_2249,c_limit/MtFuji-GettyImages-959111140.jpg";
  categories.add(contactsModel);

  contactsModel = ContactsModel();
  contactsModel.contactName = "Sakshi";
  contactsModel.imageUrl =
      "https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0'";

  categories.add(contactsModel);
  contactsModel = ContactsModel();
  contactsModel.contactName = "Rohan";
  contactsModel.imageUrl =
      "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60";

  categories.add(contactsModel);
  contactsModel = ContactsModel();
  contactsModel.contactName = "Jyoti";
  contactsModel.imageUrl =
      "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60";

  categories.add(contactsModel);
  contactsModel = ContactsModel();
  contactsModel.contactName = "Bhavesh";
  contactsModel.imageUrl =
      "https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60";

  categories.add(contactsModel);
  contactsModel = ContactsModel();
  contactsModel.contactName = "Joseph";
  contactsModel.imageUrl =
      "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60";
  return categories;
}
