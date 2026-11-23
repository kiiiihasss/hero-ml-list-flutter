import 'package:mobile_legend_hero/models/hero.dart';

final List<MLHero> dataHero = [
  // 1. Alucard
  MLHero(
    name: "Alucard",
    alias: "Demon Hunter",
    image: "assets/alucard.jpg",
    role: "Fighter / Assassin",
    specialty: "Chase / Damage",
    lane: "Jungle / EXP Lane",
    difficulty: "Mudah",
    quote: "Nothing can stop me from burning this world to ashes!",
    story:
    "Alucard dilahirkan di Moniyan Empire. Saat usianya masih sangat muda, ayahnya memimpin pasukan tempur dan gugur dalam perang melawan Demon. Alucard ditangkap dan disiksa oleh iblis selama bertahun-tahun sebelum akhirnya diselamatkan oleh Order of Knights. Dengan dendam yang mendalam dan pedang raksasa di tangannya, ia bersumpah memburu setiap iblis di Land of Dawn.",
    skills: [
      SkillDetail(
        name: "Pursuit",
        type: "Passive",
        description:
        "Setelah menggunakan skill, Alucard melompat ke target pada serangan berikutnya dan memberikan damage ekstra.",
      ),
      SkillDetail(
        name: "Groundsplitter",
        type: "Skill 1",
        description:
        "Alucard melompat ke area yang ditentukan, menebas musuh dan memberikan efek slow.",
      ),
      SkillDetail(
        name: "Whirling Smash",
        type: "Skill 2",
        description:
        "Alucard melakukan tebasan memutar 360 derajat yang memberikan Physical Damage ke semua musuh di sekitarnya.",
      ),
      SkillDetail(
        name: "Fission Wave",
        type: "Ultimate",
        description:
        "Meningkatkan Lifesteal dan mereset cooldown Pursuit. Dapat diaktifkan kembali untuk melepaskan gelombang energi mematikan.",
      ),
    ],
  ),

  // 2. Gusion
  MLHero(
    name: "Gusion",
    alias: "Holy Blade",
    image: "assets/gs.jpg",
    role: "Assassin",
    specialty: "Magic Damage / Burst",
    lane: "Jungle / Mid Lane",
    difficulty: "Sangat Tinggi",
    quote: "Break the bounds of illusion!",
    story:
    "Gusion adalah putra dari bangsawan House Paxley yang sakral. Meski keluarganya memuja sihir jarak jauh kuno, Gusion lebih tertarik menggabungkan sihir elemen dengan ketajaman belati jarak dekat. Karena menolak tradisi keluarga, ia meninggalkan rumahnya demi membuktikan bahwa gayanya adalah puncak dari ilmu bela diri sihir.",
    skills: [
      SkillDetail(
        name: "Dagger Specialist",
        type: "Passive",
        description:
        "Setiap penggunaan skill memberi stack. Pada stack ke-4, serangan dasar berikutnya memberikan damage tambahan sesuai HP musuh yang hilang.",
      ),
      SkillDetail(
        name: "Sword Spike",
        type: "Skill 1",
        description:
        "Melempar belati ke arah musuh. Tekan kembali untuk melakukan dash tepat ke belakang target yang terkena belati.",
      ),
      SkillDetail(
        name: "Shadowblade Slaughter",
        type: "Skill 2",
        description:
        "Melempar 5 belati ke depan. Tekan kembali untuk menarik kelima belati tersebut kembali ke arah Gusion.",
      ),
      SkillDetail(
        name: "Incandescence",
        type: "Ultimate",
        description:
        "Melakukan dash ke lokasi tujuan dan mereset cooldown Skill 1 serta Skill 2 secara instan.",
      ),
    ],
  ),

  // 3. Lancelot
  MLHero(
    name: "Lancelot",
    alias: "Perfumed Blade",
    image: "assets/lancelot.jpg",
    role: "Assassin",
    specialty: "Chase / Burst",
    lane: "Jungle",
    difficulty: "Tinggi",
    quote: "Time to witness handsome!",
    story:
    "Lancelot berasal dari keluarga bangsawan Baroque di Moniyan Empire. Terkenal akan ketampanan dan kemampuannya menganggap pedang sebagai karya seni, sifat sombongnya pernah membuatnya terluka parah dalam pertarungan melawan suku Shadow. Ia diselamatkan oleh Odette di Swan Lake, yang mengubah pandangan hidupnya menjadi lebih bijak.",
    skills: [
      SkillDetail(
        name: "Soul Cutter",
        type: "Passive",
        description:
        "Setiap kali melakukan dash, damage Lancelot meningkat sebesar 7.5% selama beberapa detik (dapat di-stack hingga 4 kali).",
      ),
      SkillDetail(
        name: "Puncture",
        type: "Skill 1",
        description:
        "Menerjang ke depan dan memberi Sword Mark pada musuh. Jika mengenai target tanpa mark, cooldown skill ini akan langsung di-reset.",
      ),
      SkillDetail(
        name: "Thorned Rose",
        type: "Skill 2",
        description:
        "Membentuk pola segitiga dengan pedangnya. Lancelot menjadi invincible (tidak bisa diserang) selama durasi tebasan.",
      ),
      SkillDetail(
        name: "Phantom Execution",
        type: "Ultimate",
        description:
        "Melakukan serangan tusukan dahsyat ke depan setelah jeda singkat, memberikan Physical Damage masif.",
      ),
    ],
  ),

  // 4. Granger
  MLHero(
    name: "Granger",
    alias: "Death Chanter",
    image: "assets/gr.jpg",
    role: "Marksman",
    specialty: "Burst / Reap",
    lane: "Gold Lane / Jungle",
    difficulty: "Sedang",
    quote: "Let's make harmony out of noise!",
    story:
    "Granger adalah anak yatim piatu korban perang yang dibesarkan di Monastery of Light. Berbeda dengan pemburu iblis lainnya yang menyukai ketenangan, Granger justru menemukan inspirasi dari simfoni dan musik. Ia memodifikasi biola dan senapannya menjadi senjata pemungkas untuk mengeksekusi iblis.",
    skills: [
      SkillDetail(
        name: "Caprice",
        type: "Passive",
        description:
        "Senjata Granger memuat 6 peluru. Peluru ke-6 selalu memberikan damage kritikal dijamin (guaranteed critical hit).",
      ),
      SkillDetail(
        name: "Rhapsody",
        type: "Skill 1",
        description:
        "Menembakkan seluruh pelurunya secara beruntun ke arah depan sambil tetap bisa bergerak.",
      ),
      SkillDetail(
        name: "Rondo",
        type: "Skill 2",
        description:
        "Melakukan dash cepat ke arah tertentu dan memperkuat damage 2 peluru berikutnya.",
      ),
      SkillDetail(
        name: "Death Sonata",
        type: "Ultimate",
        description:
        "Mengubah biolanya menjadi meriam dan menembakkan 3 super bullet secara berurutan dengan jangkauan sangat jauh.",
      ),
    ],
  ),

  // 5. Belerick
  MLHero(
    name: "Belerick",
    alias: "Guard of Nature",
    image: "assets/bele.jpg",
    role: "Tank",
    specialty: "Crowd Control",
    lane: "Roam / EXP Lane",
    difficulty: "Mudah",
    quote: "My duty is to protect the forest.",
    story:
    "Belerick adalah mahluk Treant kuno yang dianugerahi kehidupan oleh Ancient Tree. Hati Belerick yang sangat lembut mendorongnya untuk mengorbankan diri demi menyelamatkan ras Tree People dari kepunahan. Jiwanya yang abadi kemudian bangkit kembali dalam wujud pelindung alam yang lebih tangguh.",
    skills: [
      SkillDetail(
        name: "Deadly Thorns",
        type: "Passive",
        description:
        "Setiap menerima damage sejumlah tertentu, Belerick berpeluang membalaskan duri tajam ke arah musuh terdekat.",
      ),
      SkillDetail(
        name: "Ancient Seed",
        type: "Skill 1",
        description:
        "Melepaskan amukan tanaman merambat di jalur lurus, memberikan damage dan efek Taunt pada musuh.",
      ),
      SkillDetail(
        name: "Nature's Strike",
        type: "Skill 2",
        description:
        "Meningkatkan Movement Speed dan memulihkan HP saat serangan dasar berikutnya memukul musuh.",
      ),
      SkillDetail(
        name: "Wrath of Dryad",
        type: "Ultimate",
        description:
        "Menciptakan area akar raksasa di sekitarnya yang menyebabkan efek Taunt pada semua musuh di dalam area tersebut.",
      ),
    ],
  ),

  // 6. Chou
  MLHero(
    name: "Chou",
    alias: "Kung Fu Boy",
    image: "assets/chou.jpg",
    role: "Fighter",
    specialty: "Control / Initiator",
    lane: "EXP Lane / Roam",
    difficulty: "Tinggi",
    quote: "Wipe out injustice from the world!",
    story:
    "Lahir di daerah kumuh dan miskin, Chou tumbuh menjadi pelindung bagi orang-orang lemah dari kejahatan para geng lokal. Setelah diselamatkan oleh seorang master bela diri yang mengajarinya teknik rahasia Wing Chun, Chou bertekad menggunakan kepalan tangannya untuk menegakkan keadilan di seluruh daratan.",
    skills: [
      SkillDetail(
        name: "Only Fast",
        type: "Passive",
        description:
        "Setelah bergerak sejauh jarak tertentu, serangan dasar berikutnya memberikan damage tambahan dan efek slow.",
      ),
      SkillDetail(
        name: "Jeet Kune Do",
        type: "Skill 1",
        description:
        "Melakukan 3 kali pukulan berturut-turut. Pukulan ke-3 memberikan efek Airborne (menerbangkan musuh).",
      ),
      SkillDetail(
        name: "Shunpo",
        type: "Skill 2",
        description:
        "Melakukan dash ke depan, memberikan efek kekebalan terhadap Crowd Control (CC) sementara dan penyerapan damage Shield.",
      ),
      SkillDetail(
        name: "The Way of Dragon",
        type: "Ultimate",
        description:
        "Menendang musuh ke belakang, lalu menendangnya berulang kali di udara dengan damage masif.",
      ),
    ],
  ),

  // 7. Hayabusa
  MLHero(
    name: "Hayabusa",
    alias: "Crimson Shadow",
    image: "assets/haya.jpg",
    role: "Assassin",
    specialty: "Chase / Burst",
    lane: "Jungle",
    difficulty: "Tinggi",
    quote: "Shadow is my best companion.",
    story:
    "Hayabusa adalah pemimpin terpilih dari klan ninja Iga (Shadow Sect). Sejak kecil ia dilatih teknik ninja bayangan terlarang untuk menjalankan satu misi utama: memburu dan membunuh mantan rekannya, Hanzo, yang berkhianat dan mencuri pedang terlarang klan.",
    skills: [
      SkillDetail(
        name: "Ninjutsu: Trace of Shadow",
        type: "Passive",
        description:
        "Setiap serangan Hayabusa meninggalkan Shadow Mark pada musuh, meningkatkan damage serangan berikutnya.",
      ),
      SkillDetail(
        name: "Ninjutsu: Phantom Shuriken",
        type: "Skill 1",
        description:
        "Melempar 3 shuriken ke depan. Mengembalikan energi jika shuriken mengenai target.",
      ),
      SkillDetail(
        name: "Ninjutsu: Quad Shadow",
        type: "Skill 2",
        description:
        "Melepaskan 4 bayangan ke 4 arah. Hayabusa dapat berpindah lokasi ke bayangan tersebut secara instan.",
      ),
      SkillDetail(
        name: "Ougi: Shadow Kill",
        type: "Ultimate",
        description:
        "Menjadi bayangan dan menyerang target di area secara acak beberapa kali secara cepat tanpa bisa diserang.",
      ),
    ],
  ),

  // 8. Yi Sun-shin
  MLHero(
    name: "Yi Sun-shin",
    alias: "Paenung's Ultimate Weapon",
    image: "assets/yss.jpg",
    role: "Assassin / Marksman",
    specialty: "Chase / Harvest",
    lane: "Jungle",
    difficulty: "Tinggi",
    quote: "I will protect my homeland at all costs!",
    story:
    "Laksamana Yi Sun-shin adalah pahlawan laut legendaris dari kerajaan Timur. Dikenal atas kecerdasan taktik lautnya dan armada kapal penyu (Turtle Ship), ia memimpin pasukannya bertarung melawan penjajah demi kedamaian lautan dan tanah kelahirannya.",
    skills: [
      SkillDetail(
        name: "Heavenly Vow",
        type: "Passive",
        description:
        "Yi Sun-shin berganti antara pedang (jarak dekat) dan busur (jarak jauh). Berganti senjata meningkatkan critical damage pada serangan berikutnya.",
      ),
      SkillDetail(
        name: "Traceless",
        type: "Skill 1",
        description:
        "Menerjang ke depan sambil menebas pedang, memberikan kekebalan terhadap Crowd Control secara singkat.",
      ),
      SkillDetail(
        name: "Blood Floods",
        type: "Skill 2",
        description:
        "Menembakkan panah yang dapat di-charge untuk jangkauan lebih jauh dan damage yang lebih besar.",
      ),
      SkillDetail(
        name: "Mountain Shocker",
        type: "Ultimate",
        description:
        "Memerintahkan kapal perang armada untuk melepaskan tembakan meriam ke seluruh hero musuh di mana pun berada di peta.",
      ),
    ],
  ),

  // 9. Julian
  MLHero(
    name: "Julian",
    alias: "Scarlet Raven",
    image: "assets/julian.jpg",
    role: "Fighter / Mage",
    specialty: "Magic Damage / Chase",
    lane: "Jungle / Mid / EXP Lane",
    difficulty: "Sedang",
    quote: "I carry the weight of my past.",
    story:
    "Julian tumbuh sebagai salah satu dari kelompok Ravens yang dilatih secara rahasia oleh Church of Light. Setelah menemukan fakta bahwa orang tuanya dihancurkan oleh gereja tempat ia mengabdi, Julian memutuskan membelot dan menggunakan kombinasi senjata rantai, pedang, dan sabitnya demi mencari kebenarannya sendiri.",
    skills: [
      SkillDetail(
        name: "Smith's Legacy",
        type: "Passive",
        description:
        "Julian tidak memiliki Ultimate biasa. Setelah menggunakan 2 skill berbeda, skill ke-3 akan menjadi versi Enhanced yang sangat kuat.",
      ),
      SkillDetail(
        name: "Enhanced Scythe",
        type: "Skill 1",
        description:
        "Melempar sabit berputar ke depan yang memberikan Magic Damage terus-menerus dan menarik musuh ke pusatnya.",
      ),
      SkillDetail(
        name: "Enhanced Sword",
        type: "Skill 2",
        description:
        "Memanggil pedang terbang dan meluncur ke depan, memberikan status Unselectable (invincible) sementara.",
      ),
      SkillDetail(
        name: "Enhanced Chain",
        type: "Skill 3",
        description:
        "Melemparkan rantai ke area target yang memberikan damage beruntun serta efek Airborne (menerbangkan musuh).",
      ),
    ],
  ),

  // 10. Xavier
  MLHero(
    name: "Xavier",
    alias: "Defier of Light",
    image: "assets/xavier.jpg",
    role: "Mage",
    specialty: "Poke / Control",
    lane: "Mid Lane",
    difficulty: "Sedang",
    quote: "Light shall break through the darkness!",
    story:
    "Sebagai mantan anggota tertinggi dari Knights of Light, Xavier dianugerahi kekuatan mengendalikan Mystic Light. Namun, kecurigaannya terhadap kejahatan terselubung para petinggi Church of Light mendorongnya untuk membangkang dan bertarung bersama pembangkang lainnya demi membawa cahaya keadilan yang sesungguhnya.",
    skills: [
      SkillDetail(
        name: "Transcendence",
        type: "Passive",
        description:
        "Meningkatkan Stage skill setiap kali skill mengenai musuh, memperluas jangkauan dan damage skill Xavier.",
      ),
      SkillDetail(
        name: "Infinite Extension",
        type: "Skill 1",
        description:
        "Menembakkan peluru cahaya yang menembus musuh. Jangkauannya bertambah setiap kali mengenai target.",
      ),
      SkillDetail(
        name: "Mystic Field",
        type: "Skill 2",
        description:
        "Menciptakan penghalang cahaya. Jika terkena Skill 1 Xavier, penghalang membesar dan mengunci (Immobilize) musuh.",
      ),
      SkillDetail(
        name: "Dawning Light",
        type: "Ultimate",
        description:
        "Menembakkan berkas sinar cahaya raksasa melintasi seluruh peta secara instan.",
      ),
    ],
  ),
];