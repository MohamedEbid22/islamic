import 'package:islamic/data/model/doaamodel.dart';

class MyDoaa {
  static Map<String, DOAA> mapazker = Map<String, DOAA>();
  static List<DOAA> listazker = <DOAA>[];
  static DOAA doaa = DOAA(
    category: '',
    count: '',
    description: '',
    reference: '',
    content: '',
  );
  static Future<List<DOAA>> getAlldata() async {
    listazker.clear();
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "3",
        description: "",
        reference: "طه: [25- 28]",
        content:
            "رَبِّ اشْرَحْ لِي صَدْرِي  وَيَسِّرْ لِي أَمْرِي  وَاحْلُلْ عُقْدَةً مِنْ لِسَانِي  يَفْقَهُوا قَوْلِي"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[القصص: 16]",
        content: "رَبِّ إِنِّي ظَلَمْتُ نَفْسِي فَاغْفِرْ لِي"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[آل عمران: 53]",
        content:
            "رَبَّنَا ءامَنَّا بِمَا أَنْزَلْتَ وَاتَّبَعْنَا الرَّسُولَ فَاكْتُبْنَا مَعَ الشَّاهِدِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[البقرة: 201]",
        content:
            "رَبَّنَا ءاتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[البقرة: 285]",
        content:
            "سَمِعْنَا وَأَطَعْنَا غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[البقرة: 286]",
        content:
            "رَبَّنَا لا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلا تُحَمِّلْنَا مَا لا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلانَا فَانصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "10",
        description: "",
        reference: "[التوبة:129]",
        content:
            "حَسْبِي اللَّهُ لا إِلَهَ إِلا هُوَ عَلَيْهِ تَوَكَّلْتُ وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[القصص: 22]",
        content: "عسى ربي أن يهديني سواء السبيل"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "3",
        description: "",
        reference: "[القصص: 21]",
        content: "رَبِّ نَجِّنِي مِنْ الْقَوْمِ الظَّالِمِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[الأعراف: 23]",
        content:
            "رَبَّنَا ظَلَمْنَا أَنفُسَنَا وَإِنْ لَمْ تَغْفِرْ لَنَا وَتَرْحَمْنَا لَنَكُونَنَّ مِنْ الْخَاسِرِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[هود: 47]",
        content:
            "رَبِّ إِنِّي أَعُوذُ بِكَ أَنْ أَسْأَلَكَ مَا لَيْسَ لِي بِهِ عِلْمٌ وَإِلا تَغْفِرْ لِي وَتَرْحَمْنِي أَكُنْ مِنْ الْخَاسِرِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[المؤمنون: 109]",
        content:
            "رَبَّنَا ءامَنَّا فَاغْفِرْ لَنَا وَارْحَمْنَا وَأَنْتَ خَيْرُ الرَّاحِمِينَ"));

    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[الفرقان: 65- 66]",
        content:
            "رَبَّنَا اصْرِفْ عَنَّا عَذَابَ جَهَنَّمَ إِنَّ عَذَابَهَا كَانَ غَرَامًا  إِنَّهَا سَاءَتْ مُسْتَقَرًّا وَمُقَامًا"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[الفرقان: 74]",
        content:
            "رَبَّنَا هَبْ لَنَا مِنْ أَزْوَاجِنَا وَذُرِّيَّاتِنَا قُرَّةَ أَعْيُنٍ وَاجْعَلْنَا لِلْمُتَّقِينَ إِمَامًا"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[نوح: 28]",
        content:
            "رَبِّ اغْفِرْ لِي وَلِوَالِدَيَّ وَلِمَنْ دَخَلَ بَيْتِي مُؤْمِنًا وَلِلْمُؤْمِنِينَ وَالْمُؤْمِنَاتِ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[البقرة: 127-128]",
        content:
            "رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[إبراهيم: 40]",
        content:
            "رَبِّ اجْعَلْنِي مُقِيمَ الصَّلاةِ وَمِنْ ذُرِّيَّتِي رَبَّنَا وَتَقَبَّلْ دُعَاءِ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[المائدة: 83]",
        content: "رَبَّنَا ءامَنَّا فَاكْتُبْنَا مَعَ الشَّاهِدِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[إبراهيم: 35]",
        content:
            "رَبِّ اجْعَلْ هَذَا الْبَلَدَ آمِنًا وَاجْنُبْنِي وَبَنِيَّ أَنْ نَعْبُدَ الأَصْنَامَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[القصص: 24]",
        content: "رَبِّ إِنِّي لِمَا أَنزَلْتَ إِلَيَّ مِنْ خَيْرٍ فَقِيرٌ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[الممتحنة: 4]",
        content:
            "رَبَّنَا عَلَيْكَ تَوَكَّلْنَا وَإِلَيْكَ أَنَبْنَا وَإِلَيْكَ الْمَصِيرُ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[الأنبياء: 89]",
        content: "رَبِّ لا تَذَرْنِي فَرْدًا وَأَنْتَ خَيْرُ الْوَارِثِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[الأنبياء: 87]",
        content:
            "لا إِلَهَ إِلا أَنْتَ سُبْحَانَكَ إِنِّي كُنتُ مِنْ الظَّالِمِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[آل عمران: 147]",
        content:
            "رَبَّنَا لا تَجْعَلْنَا فِتْنَةً لِلْقَوْمِ الظَّالِمِينَ * وَنَجِّنَا بِرَحْمَتِكَ مِنْ الْقَوْمِ الْكَافِرِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[المؤمنون: 118]",
        content: "رَبِّ اغْفِرْ وَارْحَمْ وَأَنْتَ خَيْرُ الرَّاحِمِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[آل عمران: 8]",
        content:
            "رَبَّنَا لا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِنْ لَدُنْكَ رَحْمَةً إِنَّكَ أَنْتَ الْوَهَّابُ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "آل عمران: 191-194]",
        content:
            "رَبَّنَا مَا خَلَقْتَ هَذَا بَاطِلا سُبْحَانَكَ فَقِنَا عَذَابَ النَّارِ  رَبَّنَا إِنَّكَ مَنْ تُدْخِلْ النَّارَ فَقَدْ أَخْزَيْتَهُ وَمَا لِلظَّالِمِينَ مِنْ أَنْصَارٍ  رَبَّنَا إِنَّنَا سَمِعْنَا مُنَادِيًا يُنَادِي لِلإِيمَانِ أَنْ آمِنُوا بِرَبِّكُمْ فَآمَنَّا رَبَّنَا فَاغْفِرْ لَنَا ذُنُوبَنَا وَكَفِّرْ عَنَّا سَيِّئَاتِنَا وَتَوَفَّنَا مَعَ الأَبْرَارِ  رَبَّنَا وَآتِنَا مَا وَعَدْتَنَا عَلَى رُسُلِكَ وَلا تُخْزِنَا يَوْمَ الْقِيَامَةِ إِنَّكَ لا تُخْلِفُ الْمِيعَادَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[الأحقاف: 15]",
        content:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَصْلِحْ لِي فِي ذُرِّيَّتِي إِنِّي تُبْتُ إِلَيْكَ وَإِنِّي مِنْ الْمُسْلِمِينَ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[الحشر: 10]",
        content:
            "رَبَّنَا اغْفِرْ لَنَا وَلإِخْوَانِنَا الَّذِينَ سَبَقُونَا بِالإِيمَانِ وَلا تَجْعَلْ فِي قُلُوبِنَا غِلا لِلَّذِينَ آمَنُوا رَبَّنَا إِنَّكَ رَءُوفٌ رَحِيمٌ"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "1",
        description: "",
        reference: "[الكهف: 10]",
        content:
            "رَبَّنَا ءاتِنَا مِنْ لَدُنْكَ رَحْمَةً وَهَيِّئْ لَنَا مِنْ أَمْرِنَا رَشَدًا"));
    listazker.add(DOAA(
        category: "أدعية قرآنية",
        count: "10",
        description: "",
        reference: "[طه: 114]",
        content: "رَبِّ زِدْنِي عِلْمًا"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "3",
        description: "",
        reference: "",
        content:
            "اللهم لك أسلمت، وبك آمنت، وعليك توكلت، وإليك خاصمت، وبك حاكمت، فاغفر لي ما قدمت وما أخرت، وأسررت وأعلنت، وما أنت أعلم به مني، لا إله إلا أنت"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم ربنا لك الحمد، ملء السماوات وملء الأرض، وملء ما شئت من شيء بعد أهل الثناء والمجد، لا مانع لما أعطيت، ولا معطي لما منعت ولا ينفع ذا الجد منك الجد"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "سبحانك اللهم ربنا وبحمدك، اللهم اغفر لي"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم صل على محمد وعلى آل محمد، كما صليت على إبراهيم، وعلى آل إبراهيم، إنك حميد مجيد، اللهم بارك على محمد وعلى آل محمد، كما باركت على إبراهيم وعلى آل إبراهيم، إنك حميد مجيد"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني ظلمت نفسي ظلما كثيرا ولا يغفر الذنوب إلا أنت، فاغفر لي مغفرة من عندك وارحمني، إنك أنت الغفور الرحيم."));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "“اللهم إني أعوذ بك من العجز والكسل، والجبن والهرم والبخل ، وأعوذ بك من عذاب القبر ومن فتنة المحيا والممات"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "3",
        description: "",
        reference: "",
        content:
            "اللهم إني أعوذ بك من الهم والحزن، والعجز والكسل، والجبن والبخل، وضلع الدين، وغلبة الرجال"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أعوذ بك من الكسل والهرم، والمغرم والمأثم، اللهم إني أعوذ بك من عذاب النار وفتنة النار، وفتنة القبر وعذاب القبر، وشر فتنة الغنى، وشر فتنة الفقر، ومن شر فتنة المسيح الدجال، اللهم اغسل خطاياي بماء الثلج والبرد، ونق قلبي من الخطايا، كما ينقى الثوب الأبيض من الدنس، وباعد بيني وبين خطاياي كما باعدت بين المشرق والمغرب"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أعوذ بك من فتنة النار ومن عذاب النار، وأعوذ بك من فتنة القبر، وأعوذ بك من عذاب القبر، وأعوذ بك من فتنة الغنى، وأعوذ بك من فتنة الفقر، وأعوذ بك من فتنة المسيح الدجال"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أعوذ بك من زوال نعمتك، وتحول عافيتك وفجاءة نقمتك، وجميع سخطك"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "اللهم إني أعوذ بك من البرص والجنون والجذام ومن سيئ الأسقام"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "اللهم إني أعوذ بك من منكرات الأخلاق والأعمال والأهواء"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أعوذ بك من شر سمعي ومن شر بصري ومن شر لساني ومن شر قلبي ومن شر منيي"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أعوذ بك من الفقر والقلة والذلة وأعوذ بك من أن أظلم أو أظلم"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "3",
        description: "",
        reference: "",
        content: "اللهم إني أعوذ بعظمتك أن أغتال من تحتي"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أعوذ بك من الهدم وأعوذ بك من التردي وأعوذ بك من الغرق والحرق والهرم وأعوذ بك أن يتخبطني الشيطان عند الموت وأعوذ بك أن أموت في سبيلك مدبرا وأعوذ بك أن أموت لديغا"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أسألك من الخير كله عاجله وآجله ما علمت منه وما لم أعلم وأعوذ بك من الشر كله عاجله وآجله ما علمت منه وما لم أعلم اللهم إني أسألك من خير ما سألك عبدك ونبيك وأعوذ بك من شر ما عاذ به عبدك ونبيك اللهم إني أسألك الجنة وما قرب إليها من قول أو عمل وأعوذ بك من النار وما قرب إليها من قول أو عمل وأسألك أن تجعل كل قضاء قضيته لي خيرا"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أسألك يا الله بأنك الواحد الأحد الصمد الذي لم يلد ولم يولد ولم يكن له كفوا أحد أن تغفر لي ذنوبي إنك أنت الغفور الرحيم"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أسألك بأن لك الحمد لا إله إلا أنت المنان بديع السماوات والأرض يا ذا الجلال والإكرام يا حي يا قيوم إني أسألك"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أسألك بأني أشهد أنك أنت الله لا إله إلا أنت الأحد الصمد الذي لم يلد ولم يولد ولم يكن له كفوا أحد"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني أسألك فعل الخيرات وترك المنكرات وحب المساكين وإذا أردت بعبادك فتنة فاقبضني إليك غير مفتون"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "اللهم إني أسألك الهدى والتقى والعفاف والغنى"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "اللهم أعني على ذكرك وشكرك وحسن عبادتك"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم اجعل في قلبي نورا، وفي بصري نورا، وفي سمعي نورا، وعن يميني نورا، وعن يساري نورا، وفوقي نورا، وتحتي نورا، وأمامي نورا، وخلفي نورا، وعظم لي نورا"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم أصلح لي ديني الذي هو عصمة أمري، وأصلح لي دنياي التي فيها معاشي، وأصلح لي آخرتي التي فيها معادي، واجعل الحياة زيادة لي في كل خير، واجعل الموت راحة لي من كل شر"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "للهم اغفر لي خطيئتي، وجهلي وإسرافي، في أمري وما أنت أعلم به مني، اللهم اغفر لي جدي وهزلي وخطئي وعمدي وكل ذلك عندي، اللهم اغفر لي ما قدمت وما أخرت وما أسررت وما أعلنت وما أنت أعلم به مني أنت المقدم وأنت المؤخر، وأنت على كل شيء قدير"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "رب أعني، ولا تعن علي، وانصرني ولا تنصر علي، وامكر لي ولا تمكر علي، واهدني ويسر الهدى لي، وانصرني على من بغى علي، رب اجعلني لك شاكراً، لك ذاكراً، لك راهباً، لك مطواعاً، لك مخبتاً، إليك أواهاً منيباً، رب تقبل توبتي، واغسل حوبتي، وأجب دعواتي، وثبت حجتي، وسدد لساني، واهد قلبي، واسلل سخيمة صدري"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "اللهم اغفر لي وارحمني واهدني وارزقني"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم اغفر لي ذنبي كله، دقه وجله، وأوله وآخره، وعلانيته وسره"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم اغفر لي ما قدمت وما أخرت، وما أسررت وما أعلنت، وما أسرفت، وما أنت أعلم به مني، أنت المقدم وأنت المؤخر، لا إله إلا أنت"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك علي وأبوء لك بذنبي فاغفر لي، فإنه لا يغفر الذنوب إلا أنت"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم اهدني فيمن هديت، وعافني فيمن عافيت، وتولني فيمن توليت، وبارك لي فيما أعطيت وقني شر ما قضيت، إنك تقضي ولا يقضى عليك، وإنه لا يذل من واليت ولا يعز من عاديت تباركت ربنا وتعاليت"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "اللهم اهدني وسددني"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم لك أسلمت، وبك آمنت، وعليك توكلت، وإليك أنبت وبك خاصمت اللهم إني أعوذ بعزتك لا إله إلا أنت أن تضلني، أنت الحي الذي لا يموت، والجن والإنس يموتون"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم ربنا آتنا في الدنيا حسنة، وفي الآخرة حسنة، وقنا عذاب النار"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "يا مقلب القلوب ثبت قلبي على دينك"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم إني عبدك، وابن عبدك، وابن أمتك، ناصيتي بيدك، ماض في حكمك، عدل في قضاؤك، أسألك بكل اسم هو لك سميت به نفسك، أو أنزلته في كتابك، أو علمته أحدا من خلقك، أو استأثرت به في علم الغيب عندك، أن تجعل القرآن ربيع قلبي، ونور صدري، وجلاء حزني، وذهاب همي"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "للهم بعلمك الغيب وقدرتك على الخلق أحيني ما علمت الحياة خيرا لي وتوفني إذا علمت الوفاة خيرا لي اللهم وأسألك خشيتك في الغيب والشهادة وأسألك كلمة الحق في الرضا والغضب وأسألك القصد في الفقر والغنى وأسألك نعيما لا ينفد وأسألك قرة عين لا تنقطع وأسألك الرضاء بعد القضاء وأسألك برد العيش بعد الموت وأسألك لذة النظر إلى وجهك والشوق إلى لقائك في غير ضراء مضرة ولا فتنة مضلة اللهم زينا بزينة الإيمان واجعلنا هداة مهتدين"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "اللهم إنك عفو كريم تحب العفو فاعف عني"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم رب جبرائيل وميكائيل وإسرافيل، فاطر السماوات والأرض، عالم الغيب والشهادة، أنت تحكم بين عبادك فيما كانوا فيه يختلفون، اهدني لما اختلف فيه من الحق بإذنك إنك تهدي من تشاء إلى صراط مستقيم"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content: "ب اغفر لي وتب علي إنك أنت التواب الغفور"));
    listazker.add(DOAA(
        category: "أدعية السنة النبوية",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللهم أعوذ برضاك من سخطك، وبمعافاتك من عقوبتك، وأعوذ بك منك، لا أحصي ثناء عليك، أنت كما أثنيت على نفسك"));

    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ أبدله داراً خيراً من داره، وأهلاً خيراً من أهله، وأدخله الجنّة، وأعذه من عذاب القبر ومن عذاب النّار."));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content: "اللَّهُمَّ عامله بما أنت أهله، ولا تعامله بما هو أهله"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ اجزه عن الإحسان إحساناً وعن الإساءة عفواً وغفراناً"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إن كان محسناً فزد من حسناته، وإن كان مسيئاً فتجاوز عن سيّئاته"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content: "اللَّهُمَّ أدخله الجنّة من غير مناقشة حساب ولا سابقة عذاب"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content: "اللَّهُمَّ آنسه في وحدته وفي وحشته وفي غربته"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content: "اللَّهُمَّ أنزله منزلاً مباركاً وأنت خير المنزلين"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ أنزله منازل الصدّيقين والشّهداء والصّالحين، وحسن أولئك رفيقاً"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ اجعل قبره روضةً من رياض الجنّة، ولا تجعله حفرةً من حفر النّار"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ افسح له في قبره مدّ بصره، وافرش قبره من فراش الجنّة"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content: "اللَّهُمَّ أعذه من عذاب القبر، وجفاف ِالأرض عن جنبيها"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content: "اللَّهُمَّ املأ قبره بالرّضا والنّور والفسحة والسّرور"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّه في ذمّتك وحبل جوارك، فقِهِِ فتنة القبر، وعذاب النّار، وأنت أهل الوفاء والحقّ، فاغفر له وارحمه إنّك أنت الغفور الرّحيم"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّه عبدك وابن عبدك خرج من الدّنيا وسعتها ومحبوبها وأحبّائه فيها إلى ظلمة القبر وما هو لاقيه"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّه كان يشهد أنّك لا إله إلّا أنت وأنّ محمّداً عبدك ورسولك وأنت أعلم به"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّا نتوسّل بك إليك، ونقسم بك عليك أن ترحمه ولا تعذّبه، وأن تثبّته عند السؤال"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّه نَزَل بك وأنت خير منزولٍ به، وأصبح فقيراً إلى رحمتك وأنت غنيٌّ عن عذابه"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ آته برحمتك ورضاك، وقهِ فتنة القبر وعذابه، وآته برحمتك الأمن من عذابك حتّى تبعثه إلى جنّتك يا أرحم الرّاحمين"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ انقله من مواطن الدّود وضيق اللحود إلى جنّات الخلود"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ احمه تحت الأرض، واستره يوم العرض، ولا تخزه يوم يبعثون يوم لا ينفع مالٌ ولا بنون إلّا من أتى الله بقلبٍ سليم"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ يمّن كتابه، ويسّر حسابه، وثقّل بالحسنات ميزانه، وثبّت على الصّراط أقدامه، وأسكنه في أعلى الجنّات بجوار حبيبك ومصطفاك (صلّى الله عليه وسلّم)"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ أمّنه من فزع يوم القيامة، ومن هول يوم القيامة، واجعل نفسه آمنة مطمئنّة، ولقّنه حجّته"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ اجعله في بطن القبر مطمئنّاً وعند قيام الأشهاد آمن، وبجود رضوانك واثق، وإلى أعلى درجاتك سابق"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ اجعل عن يمينه نوراً حتّى تبعثه آمناً مطمئنّاً في نورٍ من نورك"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ انظر إليه نظرة رضا، فإنّ من تنظر إليه نظرة رضا لا تعذّبه أبداً"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ أسكنه فسيح الجنان، واغفر له يا رحمن، وارحمه يا رحيم، وتجاوز عمّا تعلم يا عليم"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content: "اللَّهُمَّ اعف عنه فإنّك القائل ويعفو عن كثير"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّه جاء ببابك، وأناخ بجنابك، فَجد عليه بعفوك وإكرامك وجود إحسانك"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّ رحمتك وسعت كلّ شيء فارحمه رحمةً تطمئنّ بها نفسه، وتقرّ بها عينه"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content: "اللَّهُمَّ احشره مع المتّقين إلى الرّحمن وفداً"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ احشره مع أصحاب اليمين، واجعل تحيّته سلامٌ لك من أصحاب اليمين"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ اجعله من الّذين سعدوا في الجنّة خالدين فيها ما دامت السموات والأرض"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ شفع فيه نبيّنا ومصطفاك، واحشره تحت لوائه، واسقه من يده الشّريفة شربةً هنيئةً لا يظمأ بعدها أبداً"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ اجعله في جنّة الخلد الَّتِي وُعِدَ الْمُتَّقُونَ كَانَتْ لَهُمْ جَزَاء وَمَصِيرًا. لَهُمْ فِيهَا مَا يَشَاؤُونَ خَالِدِينَ كَانَ عَلَى رَبِّكَ وَعْدًا مَسْؤُولا"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّه كان مصلّ لك، فثبّته على الصّراط يوم تزل الأقدام"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّه كان صائماً لك، فأدخله الجنّة من باب الريّان"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ إنّه كان لكتابك تالٍ وسامع، فشفّع فيه القرآن، وارحمه من النّيران، واجعله يا رحمن يرتقي في الجنّة إلى آخر آية قرأها أو سمعها، وآخر حرفٍ تلاه"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ ارزقه بكلّ حرفٍ في القرآن حلاوة، وبكلّ كلمة كرامة، وبكلّ اّية سعادة، وبكلّ سورة سلامة، وبكل جْزءٍ جزاء"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ ارحمه فإنّه كان مسلماً، واغفر له فإنّه كان مؤمناً، وأدخله الجنّة فإنّه كان بنبيّك مصدّقاً، وسامحه فإنّه كان لكتابك مرتّلاً"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "للَّهُمَّ اغفر لحيّنا وميّتنا، وشاهدنا وغائبنا، وصغيرنا وكبيرنا، وذَكرنَا وأنثانا"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ من أحييته منّا فأحيه على الإسلام، ومن توفّيته منّا فتوفّه على الإيمان"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content: "اللَّهُمَّ لا تحرمنا أجره ولا تضللنا بعده"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ ارحمنا إذا أتانا اليقين، وعرق منّا الجبين، وكثر الأنين والحنين"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ ارحمنا إذا يئس منّا الطبيب، وبكى علينا الحبيب، وتخلّى عنّا القريب والغريب، وارتفع النّشيج والنّحيب"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ ارحمنا إذا اشتدّت الكربات، وتوالت الحسرات، وأطبقت الرّوعات، وفاضت العبرات، وتكشّفت العورات، وتعطّلت القوى والقدرات"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ ارحمنا إذا حُمِلنا على الأعناقِ، وبلغتِ التراقِ، وقيل من راق وظنّ أنّه الفراق والتفَّتِ السَّاقُ بالسَّاقِ، إليك يا ربَّنا يومئذٍ المساق."));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ ارحمنا إذا ورينا التّراب، وغلقت القبور والأبواب، وانفضّ الأهل والأحباب، فإذا الوحشة والوحدة وهول الحساب"));
    listazker.add(DOAA(
        category: "أدعية للميّت",
        count: "1",
        description: "",
        reference: "",
        content:
            "اللَّهُمَّ ارحمنا إذا فارقنا النّعيم، وانقطع النّسيم، وقيل ما غرّك بربّك الكريم"));
    listazker.add(DOAA(
        category: "دعاء المذاكرة",
        count: "1",
        description: "دعاء قبل المذاكرة",
        reference: "",
        content:
            "اللهم إني أسألك فهم النبيين وحفظ الملائكة المقربين، اللهم اجعل لساني عامراً بذكرك وقلبي بخشيتك، وسري بطاعتك، إنك على كل شيء قدير وحسبنا الله ونعم الوكيل."));
    listazker.add(DOAA(
        category: "دعاء المذاكرة",
        count: "1",
        description: "دعاء بعد المذاكرة",
        reference: "",
        content:
            " اللهم إني أستودعك ما قرأت وما حفظت، وما تعلمت، فرده عند حاجتي إليه، إنك على كل شيء قدير، حسبنا الله ونعم الوكيل."));
    listazker.add(DOAA(
      category: "دعاء المذاكرة",
      count: "1",
      description: "الدعاء يـوم الامتحان",
      reference: "",
      content:
          "اللهم إني توكلت عليك، وسلمت أمري إليك، لا ملجأ ولا منجا منك إلا إليك.",
    ));
    listazker.add(DOAA(
        category: "دعاء المذاكرة",
        count: "1",
        description: "الدعاء يـوم الامتحان",
        reference: "",
        content:
            "اللهم إنّي أستودعك ما قرأت، وما حفظت، وما تعلمت، فردّه إليّ عند حاجتي إليه، إنّك على كلّ شي قدير، وحسبنا الله ونعم الوكيل."));

    listazker.add(DOAA(
        category: "دعاء المذاكرة",
        count: "1",
        description: "الدعاء عند دخول قاعة الامتحان",
        reference: "",
        content:
            "رب أدخلني مدخل صدق، وأخرجني مخرج صدق، واجعل لي من لدنك سلطانا نصيراً"));

    listazker.add(DOAA(
        category: "دعاء المذاكرة",
        count: "1",
        description: "الدعاء عند دخول قاعة الامتحان",
        reference: "",
        content:
            "اللهمّ اجعل لي نوراً، وفي قلبي نوراً، وفي سمعي نوراً، وفي بصري نوراً، وفي شعري نوراً، وفي عظامي نوراً، وفي دمى نوراً، ونوراً من خلفي، ونوراً ومن أمامي، ونوراً عن يميني، ونوراً عن شمالي، ونوراً من تحتي، ونوراً من فوقي، اللهمّ زدني نوراً، واجعل لي نوراً"));

    listazker.add(DOAA(
        category: "دعاء المذاكرة",
        count: "1",
        description: "الدعاء عند بداية الإجابة",
        reference: "",
        content:
            "رب اشرح لي صدري، ويسر لي أمري، واحلل عقدة من لساني، يفقهوا قولي بسم الله الفاتح"));

    listazker.add(DOAA(
        category: "دعاء المذاكرة",
        count: "1",
        description: "الدعاء عند بداية الإجابة",
        reference: "",
        content: "اللهم لا سهل إلا ما جعلته سهلاً يا أرحم الراحمين"));

    listazker.add(DOAA(
        category: "دعاء المذاكرة",
        count: "1",
        description: "الدعاء بعـد الانتهاء من الامتحان",
        reference: "",
        content:
            "الحمد لله الذي هدانا لهذا وما كنا لنهتدي لولا أن هدانا الله"));
    listazker.add(DOAA(
        category: "دعاء المذاكرة",
        count: "1",
        description: "الدعاء بعـد الانتهاء من الامتحان",
        reference: "",
        content:
            "اللهم ارزقنا نجاحاً في كل أمر، ونيلاً لكل مقصد، وارزقنا القمة في درجات العلم"));

    return listazker;
  }

  static Future<List<DOAA>> getdueaquran() async {
    List<DOAA> morningAzkar = await getAlldata();
    return morningAzkar
        .where((azkar) => azkar.category == 'أدعية قرآنية')
        .toList();
  }

  static Future<List<DOAA>> getdueathonaa() async {
    List<DOAA> morningAzkar = await getAlldata();
    return morningAzkar
        .where((azkar) => azkar.category == "أدعية السنة النبوية")
        .toList();
  }

  static Future<List<DOAA>> getdueamayet() async {
    List<DOAA> morningAzkar = await getAlldata();
    return morningAzkar
        .where((azkar) => azkar.category == "أدعية للميّت")
        .toList();
  }

  static Future<List<DOAA>> getdueamothkra() async {
    List<DOAA> morningAzkar = await getAlldata();
    return morningAzkar
        .where((azkar) => azkar.category == "دعاء المذاكرة")
        .toList();
  }
}
