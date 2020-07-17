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
