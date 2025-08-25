import 'package:quitanda_virtual/src/models/cart_item_model.dart';
import 'package:quitanda_virtual/src/models/item_model.dart';
import 'package:quitanda_virtual/src/models/order_model.dart';
import 'package:quitanda_virtual/src/models/user_model.dart';

ItemModel apple = ItemModel(
  itemName: "Maçã",
  image: 'assets/fruits/apple.png',
  unit: "kg",
  price: 5.5,
  description:
      'A melhor maçã da região e o melhor preço de qualquer quitanda. Este item tem vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel grape = ItemModel(
  image: 'assets/fruits/grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
  description:
      'A melhor uva da região e o melhor preço de qualquer quitanda. Este item tem vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel guava = ItemModel(
  image: 'assets/fruits/guava.png',
  itemName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
  description:
      'A melhor goiaba da região e o melhor preço de qualquer quitanda. Este item tem vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel kiwi = ItemModel(
  image: 'assets/fruits/kiwi.png',
  itemName: 'Kiwi',
  price: 2.5,
  unit: 'un',
  description:
      'O melhor kiwi da região e o melhor preço de qualquer quitanda. Este item tem vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  image: 'assets/fruits/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'un',
  description:
      'A melhor manga da região e o melhor preço de qualquer quitanda. Este item tem vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel papaya = ItemModel(
  image: 'assets/fruits/papaya.png',
  itemName: 'Mamão papaya',
  price: 8,
  unit: 'kg',
  description:
      'O melhor mamão da região e o melhor preço de qualquer quitanda. Este item tem vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

// Lista de produtos
List<ItemModel> items = [apple, grape, guava, kiwi, mango, papaya];

List<String> categories = ["Frutas", "Verduras", "Legumes", "Grãos"];

List<CartItemModel> cartItems = [
  CartItemModel(item: apple, quantity: 1),
  CartItemModel(item: mango, quantity: 3),
  CartItemModel(item: guava, quantity: 5),
];

UserModel user = UserModel(
  name: "João Silva",
  email: "joaosilva@gmail.com",
  phone: "(47) 99999-9999",
  password: "123456",
  cpf: "000.000.000-00",
);

List<OrderModel> orders = [
//Pedido 1:
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse('2022-06-08 10:00:10.458'),
    overdueDateTime: DateTime.parse('2022-06-08 11:00:10.458'),
    id: 'asd6a54da6s2d1',
    status: 'pending_payment',
    total: 11.0,
    items: [
      CartItemModel(item: apple, quantity: 2),
      CartItemModel(item: mango, quantity: 2),
    ],
  ),

//Pedido 2:
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse('2022-06-08 10:00:10.458'),
    overdueDateTime: DateTime.parse('2022-06-08 11:00:10.458'),
    id: 'a65s4d6a2s1d6a5s',
    status: 'delivered',
    total: 11.5,
    items: [CartItemModel(item: guava, quantity: 1)],
  ),
];
