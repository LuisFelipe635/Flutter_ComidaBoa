import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Italiana',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Rápida e Fácil',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hambúrgueres',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Alemã',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Comidas Leves',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exóticas',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Café da Manhã',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asiática',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Francesa',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Para o Verão',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Espaguete ao Molho de Tomate',
    cost: Cost.Barata,
    complexity: Complexity.Simples,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomates',
      '1 Colher (sopa) de Azeite de Oliva',
      '1 Cebola',
      '250g de Espaguete',
      'Temperos à gosto',
      'Queijo ralado (opcional)'
    ],
    steps: [
      'Corte os tomates e a cebola em pedaços pequenos.',
      'Coloque uma panela com água no fogo e adicione sal assim que ferver.',
      'Coloque o espaguete na água fervente por mais ou menos 10 minutos (ou a seu gosto pessoal).',
      'Enquanto isso, aqueça o azeite de oliva em outra panela e doure a cebola.',
      'Após dourar, adicione os tomates picados, sal e os temperos da sua preferência.',
      'O molho ficará pronto quando o espaguete estiver pronto.',
      'Escorra o espaguete, ponha-o num refratário e jogue o molho por cima, suavemente.',
      'Por fim, se preferir, adicione queijo ralado.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Torrada Havaiana',
    cost: Cost.Barata,
    complexity: Complexity.Simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Fatia de Pão de Forma',
      '1 Fatia de Presunto',
      '1 Fatia de Abacaxi',
      '1 ou 2 Fatias de Queijo',
      '1 Porção de Manteiga'
    ],
    steps: [
      'Passe a manteiga em um dos lados da fatia de pão.',
      'Do outro lado, faça o seguinte arranjo: primeiro o presunto, depois o abacaxi e, por fim, o queijo.',
      'Asse a torrada por cerca de 10 minutos em um forno pré-aquecido a 200° C.',
      'Sirva em seguida.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Hambúrguer Clássico',
    cost: Cost.Cara,
    complexity: Complexity.Simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g de Carne Bovina Moída',
      '1 Tomate',
      '1 Pepino',
      '1 Cebola',
      'Ketchup',
      '2 Pães de Hambúrguer'
    ],
    steps: [
      'Forme 2 bolinhos de carne em forma de hambúguer.',
      'Frite os bolinhos por cerca de 4 minutos em cada lado.',
      'Frite rapidamente os pães, cerca de 1 minuto em cada lado.',
      'Coloque um bolinho de carne dentro de cada pão.',
      'Espalhe o ketchup por cima do bolinho.',
      'Complete o hambúrguer com cebola, pepino e tomate. Sirva em seguida.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Bife à Milanesa versão Austríaca',
    cost: Cost.Luxuosa,
    complexity: Complexity.Mediana,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Costeletas de Vitela',
      '4 Ovos',
      '200g de Farinha de Rosca',
      '100g de Farinha de Trigo',
      '300g de Manteiga',
      '100g de Óleo Vegetal',
      'Sal',
      'Rodelas de Limão'
    ],
    steps: [
      'Amacie a vitela para cerca de 2-4 mm, adicione sal em ambos os lados.',
      'Num prato raso, mexa os ovos brevemente com um garfo.',
      'Cubra levemente as costeletas em farinha, depois mergulhe nos ovos mexidos e empane com a farinha de rosca.',
      'Aqueça a manteiga e o óleo em uma panela larga (que permita a gordura ficar bem quente) e frite os bifes até dourarem dos dois lados.',
      'Certifique-se de balançar a panela regularmente para que os bifes fiquem cercados por óleo e a camada exterior fique crocante.',
      'Retire da panela e seque com papel toalha.',
      'Coloque os bifes em um prato aquecido e sirva guarnecido com salsa e rodelas de limão.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salada com Salmão Defumado',
    cost: Cost.Luxuosa,
    complexity: Complexity.Simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rúcula',
      'Alface-de-Cordeiro',
      'Salsa',
      'Erva-doce',
      '200g de Salmão Defumado',
      'Mostarda',
      'Vinagre Balsâmico',
      'Azeite de Oliva',
      'Sal e Pimenta'
    ],
    steps: [
      'Lave e corte todas as folhas e ervas.',
      'Pique o salmão.',
      'Misture a mostarda, o vinagre e o azeite até virar um molho.',
      'Monte a salada.',
      'Adicione o salmão e o molho.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Mousse Delicioso de Laranja',
    cost: Cost.Barata,
    complexity: Complexity.Trabalhosa,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Envelopes de Gelatina Sem Sabor',
      '150ml de Suco de Laranja',
      '80g de Açúcar',
      '300g de Iogurte',
      '200g de Creme',
      'Casca de Laranja',
    ],
    steps: [
      'Dissolva a gelatina numa panela.',
      'Adicione o suco de laranja e o açúcar.',
      'Retire a panela do fogão.',
      'Adicione duas colheres de sopa de iogurte e misture, para ficar homogêneo.',
      'Acrescente o iogurte restante e misture novamente.',
      'Ponha a mistura no refrigerador por alguns instantes.',
      'Bata o creme e ponha por cima da mousse levemente refrigerada.',
      'Coloque novamente na geladeira, agora por 4 horas.',
      'Sirva decorado com raspas da casca de laranja.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Panquecas',
    cost: Cost.Barata,
    complexity: Complexity.Simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 xícara e meia de Farinha de Trigo',
      '3 colheres e meia (chá) de Fermento em Pó',
      '1 colher (chá) de Sal',
      '1 colher (sopa) de Açúcar',
      'Pouco mais que 1 copo de Leite',
      '1 Ovo',
      '3 colheres (sopa) de Manteiga Derretida',
    ],
    steps: [
      'Numa tigela larga, peneire juntos a farinha, o fermento, o sal e o açúcar.',
      'Faça um buraco no centro e despeje o leite, o ovo e a manteiga derretida; mexa até ficar homogêneo.',
      'Aqueça uma chapa (ou frigideira) levemente untada com óleo em fogo médio.',
      'Despeje a massa na chapa (ou frigideira), usando aproximadamente 1/4 de um copo para cada panqueca. Asse dos dois lados e sirva quente.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Frango Cremoso ao Curry Indiano',
    cost: Cost.Cara,
    complexity: Complexity.Mediana,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Peitos de Frango',
      '1 Cebola',
      '2 Dentes de Alho',
      '1 Pedaço de Gengibre',
      '4 colheres (sopa) de Amêndoas',
      '1 colher (chá) de Pimenta-Caiena',
      '500ml de Leite de Coco',
    ],
    steps: [
      'Fatie e frite o peito de frango; reserve.',
      'Rale a cebola, o alho e o gengibre e refogue.',
      'Adicione outros temperos e mexa a fritura.',
      'Adicione o frango reservado + 250ml de água e cozinhe por 10 minutos.',
      'Acrescente o leite de coco.',
      'Sirva com arroz branco.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Suflê de Chocolate',
    cost: Cost.Barata,
    complexity: Complexity.Trabalhosa,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 colher (chá) de Manteiga Derretida',
      '2 colheres (sopa) de Açúcar',
      '60g de Chocolate 70% Cacau, quebrado em pedaços',
      '1 colher (sopa) de Manteiga',
      '1 colher (sopa) de Farinha de Trigo',
      '4 colheres e meia de Leite Frio',
      '1 Pitada de Sal',
      '1 Pitada de Pimenta-Caiena',
      '1 Gema de Ovo Grande',
      '2 Claras de Ovos Grandes',
      '1 Pitada de Creme de Tártaro',
      '1 colher (sopa) de Açúcar',
    ],
    steps: [
      'Preaqueça o forno a 190° C. Forre com papel manteiga uma assadeira com bordas.',
      'Escove o fundo e as laterais de 2 ramequins levemente com 1 colher de chá de manteiga derretida; cubra o fundo e os lados até a borda.',
      'Adicione 1 colher de sopa de açúcar aos ramequins. Rode os ramequins até o açúcar cobrir tudo.',
      'Coloque pedaços de chocolate numa tigela de metal e derreta-o em banho-maria.',
      'Derreta 1 colher de sopa de manteiga em uma frigideira em fogo médio. Polvilhe com farinha. Bata até que a farinha esteja incorporada na manteiga e a mistura engrosse.',
      'Bata com leite frio até que a mistura se torne homogênea e grossa. Transfira a mistura para a tigela com chocolate derretido.',
      'Adicione sal e pimenta-caiena. Mexa completamente. Adicione a gema de ovo e misture novamente.',
      'Deixe a tigela acima da água quente (não fervendo) para manter o chocolate aquecido enquanto bate as claras de ovo.',
      'Coloque 2 claras de ovo em uma tigela; adicione o creme de tártaro. Bata até a mistura engrossar e uma gotícula da batida fique na superfície por 1 segundo antes de desaparecer na mistura.',
      'Adicione 1/3 do açúcar e bata. Bata um pouco mais de açúcar, agora por 15 segundos.',
      'Bata o resto do açúcar. Continue batento até que a mistura esteja tão espessa quanto creme de barbear.',
      'Transfira um pouco menos da metade das claras de ovo para o chocolate.',
      'Mexa até que as claras estejam completamente incorporadas ao chocolate.',
      'Adicione o restante das claras; vire delicadamente o chocolate com uma espátula, levantando do fundo e virando.',
      'Pare de mexer quando as claras de ovo desaparecerem. Divida a mistura entre os 2 ramequins preparados. Coloque os ramequins na assadeira preparada.',
      'Asse em forno preaquecido até que os suflês estejam inchados e tenham crescido além do topo das bordas, entre 12 a 15 minutos.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Salada de Aspargos com Tomates-Cereja',
    cost: Cost.Luxuosa,
    complexity: Complexity.Simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Aspargos Branco e Verde',
      '30g de Pinhão',
      '300g de Tomate-Cereja',
      'Salada',
      'Sal, Pimenta e Azeite de Oliva'
    ],
    steps: [
      'Lave, descasque e corte os aspargos.',
      'Cozinhe-os em água salgada.',
      'Após o cozimento, tempere os aspargos com sal e pimenta.',
      'Asse os pinhões.',
      'Corte os tomates no meio.',
      'Misture os aspargos, a salada e algum molho da sua preferência.',
      'Decore com os tomates e sirva com pão baguete.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
