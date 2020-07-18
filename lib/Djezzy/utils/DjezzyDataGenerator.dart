import 'package:djezzy/Djezzy/model/DjezzyModels.dart';
import 'package:djezzy/Djezzy/utils/DjezzyImages.dart';

List<DjezzySlider> getSliders() {
  List<DjezzySlider> list = List<DjezzySlider>();
  DjezzySlider model1 = DjezzySlider();
  model1.image = img_event1;
  DjezzySlider model2 = DjezzySlider();
  model2.image = img_event2;

  list.add(model1);
  list.add(model2);

  return list;
}

List<DjezzyInternet> getInternet() {
  List<DjezzyInternet> list = List<DjezzyInternet>();

  DjezzyInternet model1 = DjezzyInternet();
  model1.internet = '15Gb';
  model1.delay = '30 Days';
  model1.price = '1000 Da';

  DjezzyInternet model2 = DjezzyInternet();
  model2.internet = '16Gb';
  model2.delay = '30 Days';
  model2.price = '500 DA';

  DjezzyInternet model3 = DjezzyInternet();
  model3.internet = '1Gb';
  model3.delay = '24 Hours';
  model3.price = '100 DA';

  DjezzyInternet model4 = DjezzyInternet();
  model4.internet = '250Mb';
  model4.delay = '24 Hours';
  model4.price = '50 DA';

  DjezzyInternet model5 = DjezzyInternet();
  model5.internet = '100Mb';
  model5.delay = '24 Hours';
  model5.price = '30 DA';

  DjezzyInternet model6 = DjezzyInternet();
  model6.internet = '3Gb';
  model6.delay = '7 Days';
  model6.price = '300 DA';

  DjezzyInternet model7 = DjezzyInternet();
  model7.internet = '60Gb';
  model7.delay = '30 Days';
  model7.price = '2000 DA';

  DjezzyInternet model8 = DjezzyInternet();
  model8.internet = 'Internet On demand';
  model8.delay = 'Internet';
  model8.price = '4.99 DA/ Mb';

  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model4);
  list.add(model5);
  list.add(model6);
  list.add(model7);
  list.add(model8);

  return list;
}

List<DjezzyImtiyaz> getImtiyaz() {
  List<DjezzyImtiyaz> list = List<DjezzyImtiyaz>();

  DjezzyImtiyaz model1 = DjezzyImtiyaz();
  model1.imtiyaz = 'IMTIYAZ 190';
  model1.delay = '24 Hours';
  model1.price = '190 DA';

  model1.offre1 = '3 Gb';
  model1.offre2 = '';
  model1.offre3 = '1000 DA';

  model1.imgoffre1 = ic_world;
  model1.imgoffre2 = ic_world2;
  model1.imgoffre3 = ic_server;

  DjezzyImtiyaz model2 = DjezzyImtiyaz();
  model2.imtiyaz = 'IMTIYAZ 600';
  model2.delay = '30 Days';
  model2.price = '600 DA';

  model2.offre1 = '12 Gb';
  model2.offre2 = '1500 DA';
  model2.offre3 = 'Unlimited';

  model2.imgoffre1 = ic_world;
  model2.imgoffre2 = ic_server;
  model2.imgoffre3 = ic_offercall;

  DjezzyImtiyaz model3 = DjezzyImtiyaz();
  model3.imtiyaz = 'IMTIYAZ 400';
  model3.delay = '15 Days';
  model3.price = '400 DA';

  model3.offre1 = '2000 DA';
  model3.offre2 = 'Unlimited';
  model3.offre3 = 'Unlimited';

  model3.imgoffre1 = ic_server;
  model3.imgoffre2 = ic_offercall;
  model3.imgoffre3 = ic_offermsg;

  DjezzyImtiyaz model4 = DjezzyImtiyaz();
  model4.imtiyaz = 'IMTIYAZ 300';
  model4.delay = '10 Days';
  model4.price = '300 DA';

  model4.offre1 = '1200 DA';
  model4.offre2 = 'Unlimited';
  model4.offre3 = 'Unlimited';

  model4.imgoffre1 = ic_server;
  model4.imgoffre2 = ic_offercall;
  model4.imgoffre3 = ic_offermsg;

  DjezzyImtiyaz model5 = DjezzyImtiyaz();
  model5.imtiyaz = 'IMTIYAZ 250';
  model5.delay = '7 Days';
  model5.price = '250 DA';

  model5.offre1 = '1000 DA';
  model5.offre2 = 'Unlimited';
  model5.offre3 = 'Unlimited';

  model5.imgoffre1 = ic_server;
  model5.imgoffre2 = ic_offercall;
  model5.imgoffre3 = ic_offermsg;

  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model4);
  list.add(model5);

  return list;
}

List<DjezzyRoaming> getRoaming() {
  List<DjezzyRoaming> list = List<DjezzyRoaming>();

  DjezzyRoaming model1 = DjezzyRoaming();
  model1.roaming = 'Roaming Internet 1000';
  model1.delay = '48 Hours';
  model1.price = '1000 DA';

  model1.offre1 = '3 Gb';
  model1.offre2 = '';
  model1.offre3 = '1000 DA';

  model1.imgoffre1 = ic_world;
  model1.imgoffre2 = ic_world2;
  model1.imgoffre3 = ic_server;

  DjezzyRoaming model2 = DjezzyRoaming();
  model2.roaming = 'Roaming Internet 2000';
  model2.delay = '7 Days';
  model2.price = '2000 DA';

  model2.offre1 = '12 Gb';
  model2.offre2 = '1500 DA';
  model2.offre3 = 'Unlimited';

  model2.imgoffre1 = ic_world;
  model2.imgoffre2 = ic_server;
  model2.imgoffre3 = ic_offercall;

  DjezzyRoaming model3 = DjezzyRoaming();
  model3.roaming = 'Roaming Internet 1000';
  model3.delay = '48 Hours';
  model3.price = '1000 DA';

  model3.offre1 = '2000 DA';
  model3.offre2 = 'Unlimited';
  model3.offre3 = 'Unlimited';

  model3.imgoffre1 = ic_server;
  model3.imgoffre2 = ic_offercall;
  model3.imgoffre3 = ic_offermsg;

  DjezzyRoaming model4 = DjezzyRoaming();
  model4.roaming = 'Roaming Internet 2000';
  model4.delay = '7 Days';
  model4.price = '2000 DA';

  model4.offre1 = '1200 DA';
  model4.offre2 = 'Unlimited';
  model4.offre3 = 'Unlimited';

  model4.imgoffre1 = ic_server;
  model4.imgoffre2 = ic_offercall;
  model4.imgoffre3 = ic_offermsg;

  DjezzyRoaming model5 = DjezzyRoaming();
  model5.roaming = 'Roaming Internet 4000';
  model5.delay = '7 Days';
  model5.price = '4000 DA';

  model5.offre1 = '1000 DA';
  model5.offre2 = 'Unlimited';
  model5.offre3 = 'Unlimited';

  model5.imgoffre1 = ic_server;
  model5.imgoffre2 = ic_offercall;
  model5.imgoffre3 = ic_offermsg;

  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model4);
  list.add(model5);

  return list;
}
