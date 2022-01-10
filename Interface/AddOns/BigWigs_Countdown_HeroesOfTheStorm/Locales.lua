local _, ns = ...
ns.L = {}
local L = ns.L

L.title = "Countdown: Heroes of the Storm"
L.language = "Language"
L.locale_warning = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."
-- varies for asian locales
L.heroes = "Heroes of the Storm"
L.key = "%s: %s: %s"
L.key_short = "%s: %s"

-- Kind of fucked myself by using the localized name as part of the id x_x
-- So here are the actual names Blizzard uses that differ from what I used
L.Angel = "Ilarian"
L.Arena = "Arena Announcer"
L.Commodore = "Commodore Ford"
L.Demon = "Beleth"
L.Necromancer = "Grave Keeper"
L.SnakeGod = "Ka"
L.SpiderQueen = "Neithis"


local locale = GetLocale()
if locale == "deDE" then

L.title = "Countdown: Heroes of the Storm"
L.language = "Sprache"
L.locale_warning = "Du hast deine Sprache verändert! Normalerweise wird nur ein Sprachset verwendet, aber jede Sprache, zu der du wechselst, wird so lange aufgelistet bleiben, bis du dein UI neu lädst."

L.Adjutant = "Adjutant"
L.Arena = "Arena-Ansager"
L.Blackheart = "Schwarzherz"
L.Commodore = "Kommodore Ford"
L.GardensDayAnnouncer = "Königin Nachtschatten"
L.LadyofThorns = "Herrin der Dornen"
L.Necromancer = "Totengräber"
L.RavenLord = "Rabenfürst"
L.Toy18A = "Kleiner Junge"

L.BrightwingA = "Funkelchen"
L.ButcherA = "Der Schlächter"
L.DeathwingA = "Todesschwinge"
L.SiegeTankA = "Sergeant Hammer"
L.StitchesA = "Kleiner"
L.TyraelMechaA = "Mecha-Tyrael"
L.VanndarA = "Vanndar Sturmlanze"
L.WhitemaneA = "Weißsträhne"

elseif locale == "esES" then

L.title = "Cuenta atrás: Heroes of the Storm"
L.language = "Idioma"
-- L.locale_warning = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."

L.Adjutant = "Ayudante"
L.Arena = "Comentarista de la arena"
L.Blackheart = "Almanegra"
L.Commodore = "Comodoro Ford"
L.GardensDayAnnouncer = "Reina Nocheoscura"
L.LadyofThorns = "Señora de las espinas"
L.Necromancer = "Guardián de las Tumbas"
L.RavenLord = "Señor de los Cuervos"
L.Toy18A = "«El niño»"

L.BlazeA = "Vulcano"
L.BrightwingA = "Alafeliz"
L.ButcherA = "El carnicero"
L.DeathwingA = "Alamuerte"
L.DeckardA = "Deckard Caín"
L.FenixA = "Fénix"
L.MephistoA = "Mefisto"
L.OrpheaA = "Orfea"
L.SiegeTankA = "Sgto. Martillo"
L.StitchesA = "Puntos"
L.TyraelMechaA = "Mecatyrael"
L.VanndarA = "Vanndar Pico Tormenta"
L.WhitemaneA = "Melenablanca"

elseif locale == "esMX" then

L.title = "Cuenta atrás: Heroes of the Storm"
L.language = "Idioma"
-- L.locale_warning = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."

L.Adjutant = "Adjutora"
L.Arena = "Presentador de la arena"
L.Blackheart = "Almanegra"
L.Commodore = "Commodore Ford"
L.GardensDayAnnouncer = "Reina Sombranegra"
L.LadyofThorns = "Dama de las espinas"
L.Necromancer = "Guardián de la cripta"
L.RavenLord = "Lord Cuervo"
L.Toy18A = "El niño"

L.BrightwingA = "Alasol"
L.ButcherA = "Carnicero"
L.DeathwingA = "Alamuerte"
L.DemonHunterA = "Vala"
L.FenixA = "Fénix"
L.MephistoA = "Mefisto"
L.SiegeTankA = "Sargento Maza"
L.StitchesA = "Puntos"
L.TyraelMechaA = "Mecatyrael"
L.VanndarA = "Vanndar Pico Tormenta"
L.WhitemaneA = "Melenablanca"

elseif locale == "frFR" then

L.title = "Compte à rebours : Heroes of the Storm"
L.language = "Langue"
-- L.locale_warning = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."

L.key = "%s : %s : %s"
L.key_short = "%s : %s"

L.Adjutant = "Aide de camp"
L.Athena = "Athéna"
L.Arena = "Annonceur de l’arène"
L.Blackheart = "Cœur-Noir"
L.Commodore = "Amiral Ford"
L.GardensDayAnnouncer = "Reine Belladone"
L.LadyofThorns = "Dame des épines"
L.Necromancer = "Fossoyeur"
L.RavenLord = "Seigneur corbeau"
L.Toy18A = "« le gamin »"

L.BlazeA = "Kramer"
L.BrightwingA = "Luisaile"
L.ButcherA = "Le Boucher"
L.DeathwingA = "Aile de mort"
L.FenixA = "Fénix"
L.GazloweA = "Gazleu"
L.HoggerA = "Lardeur"
L.ImperiusA = "Impérius"
L.MephistoA = "Méphisto"
L.MurkyA = "Bourbie"
L.OrpheaA = "Orphéa"
L.JunkratA = "Chacal"
L.SiegeTankA = "Sgt Marteau"
L.StitchesA = "Balafré"
L.TyraelA = "Tyraël"
L.TyraelMechaA = "Méca Tyraël"
L.WitchDoctorA = "Nasibo"
L.VanndarA = "Vanndar Foudrepique"
L.WhitemaneA = "Blanchetête"

elseif locale == "itIT" then

L.title = "Conto alla Rovescia: Heroes of the Storm"
L.language = "Lingua"
-- L.locale_warning = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."

L.Adjutant = "Aiutante"
L.Arena = "Annunciatore arena"
L.Blackheart = "Cuornero"
L.Commodore = "Commodoro Ford"
L.GardensDayAnnouncer = "Regina Ombranera"
L.LadyofThorns = "Signora delle Spine"
L.Necromancer = "Custode dei Morti"
L.RavenLord = "Signore dei Corvi"
L.Toy18A = "\"Il Bambino\""

L.BrightwingA = "Alachiara"
L.ButcherA = "Macellaio"
L.DeathwingA = "Alamorte"
L.GazloweA = "Sparachiodi"
L.HoggerA = "Boccalarga"
L.MephistoA = "Mefisto"
L.MurkyA = "Fosky"
L.OrpheaA = "Orfea"
L.StitchesA = "Tritacarne"
L.TyraelMechaA = "Tyrael Mech"
L.VanndarA = "Vanndar Piccatonante"
L.WhitemaneA = "Biancachioma"

elseif locale == "koKR" then

L.title = "초읽기 : 히어로즈 오브 더 스톰"
L.language = "언어"
L.locale_warning = "당신의 언어를 변경했습니다! 일반적으로 하나의 음성 세트만 사용하지만, 변경한 각 언어는 당신이 UI를 다시 불러오기 전까지 목록에 남아있습니다."

L.heroes = "히어로즈 오브 더 스톰"
L.key = "%s : %s : %s"
L.key_short = "%s : %s"

L.Adjutant = "부관"
L.Angel = "일라리안"
L.Athena = "아테나"
L.Arena = "투기장 아나운서"
L.Blackheart = "블랙하트"
L.Commodore = "포드 제독"
L.Demon = "벨레스"
L.DrekTharA = "드렉타르"
L.GardensDayAnnouncer = "밤그늘 여왕"
L.LadyofThorns = "가시의 여군주"
L.LuchaA = "엘 구아포"
L.MiraA = "미라 한"
L.Necromancer = "묘지기"
L.RavenLord = "까마귀 군주"
L.SnakeGod = "카"
L.SpiderQueen = "네이디스"
L.Toy18A = "\"히린이\""
L.VanndarA = "반다르 스톰파이크"
L.VolskayaA = "볼스카야"

L.Abathur = "아바투르"
L.AlarakA = "알라라크"
L.AlexstraszaA = "알렉스트라자"
L.AnduinA = "안두인"
L.AnubarakAnnouncer = "아눕아락"
L.ArthasA = "아서스"
L.BarbarianA = "소냐"
L.BlazeA = "블레이즈"
L.BrightwingA = "빛나래"
L.ButcherA = "도살자"
L.DeathwingA = "데스윙"
L.DeckardA = "데커드 케인"
L.DemonHunterA = "발라"
L.DiabloA = "디아블로"
L.DvaA = "D.Va"
L.ETCA = "정예 타우렌 족장"
L.FalstadA = "폴스타트"
L.FenixA = "피닉스"
L.GarroshA = "가로쉬"
L.GazloweA = "가즈로"
L.GenjiA = "겐지"
L.HanzoA = "한조"
L.HoggerA = "들창코"
L.IllidanA = "일리단"
L.ImperiusA = "임페리우스"
L.JainaA = "제이나"
L.JunkratA = "정크랫"
L.KelthuzadA = "켈투자드"
L.LiLiA = "리 리"
L.MaievA = "마이에브"
L.MalfurionA = "말퓨리온"
L.MalganisA = "말가니스"
L.MeiOWA = "메이"
L.MephistoA = "메피스토"
L.MuradinA = "무라딘"
L.MurkyA = "머키"
L.NexusHunterA = "키히라"
L.OrpheaA = "오르피아"
L.RehgarAnnouncer = "레가르"
L.SiegeTankA = "해머 상사"
L.StitchesA = "누더기"
L.TassadarA = "태사다르"
L.TychusA = "타이커스"
L.TyraelA = "티리엘"
L.TyraelMechaA = "메카 티리엘"
L.WhitemaneA = "화이트메인"
L.WitchDoctorA = "나지보"
L.YrelA = "이렐"
L.ZeratulA = "제라툴"

elseif locale == "ptBR" then

L.title = "Contagem Regressiva: Heroes of the Storm"
L.language = "Idioma"
-- L.locale_warning = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."

L.Adjutant = "Adjutora"
L.Arena = "Narrador da Arena"
L.Blackheart = "Coração Negro"
L.Commodore = "Comodoro Florioto Peixano"
L.GardensDayAnnouncer = "Rainha Coirana"
L.LadyofThorns = "Senhora dos Espinhos"
L.Necromancer = "Coveiro"
L.RavenLord = "Senhor dos Corvos"
L.Toy18A = "\"A Criança\""

L.BrightwingA = "Asaluz"
L.ButcherA = "Açougueiro"
L.DeathwingA = "Asa da Morte"
L.GazloweA = "Gasganete"
L.ImperiusA = "Impérius"
L.MephistoA = "Mefisto"
L.MurkyA = "Murquinho"
L.OrpheaA = "Orféa"
L.SiegeTankA = "Sgt. Marreta"
L.StitchesA = "Suturin"
L.TyraelMechaA = "Meca-Tyrael"
L.WitchDoctorA = "Nazibo"
L.VanndarA = "Vandar Lançatroz"
L.WhitemaneA = "Cristalba"

elseif locale == "ruRU" then

L.title = "Обратный отсчет: Heroes of the Storm"
L.language = "Язык"
-- L.locale_warning = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."

L.Adjutant = "Адъютант"
L.Angel = "Иларий"
L.Athena = "Афина"
L.Arena = "Комментатор арены"
L.Blackheart = "Черносерд"
L.Commodore = "Командор Форд"
L.Demon = "Белет"
L.DrekTharA = "Дрек'Тар"
L.GardensDayAnnouncer = "Королева Белладонна"
L.LadyofThorns = "Королева Шипов"
L.LuchaA = "Эль Гуапо"
L.MiraA = "Мира Хан"
L.Necromancer = "Могильщик"
L.RavenLord = "Повелитель Воронов"
L.SnakeGod = "Ка"
L.SpiderQueen = "Неитис"
L.Toy18A = "Мальчишка"
L.VanndarA = "Вандар Грозовая Вершина"
L.VolskayaA = "Вольская"

L.Abathur = "Абатур"
L.AlarakA = "Аларак"
L.AlexstraszaA = "Алекстраза"
L.AnduinA = "Андуин"
L.AnubarakAnnouncer = "Ануб'арак"
L.ArthasA = "Артас"
L.BarbarianA = "Соня"
L.BlazeA = "Блэйз"
L.BrightwingA = "Светик"
L.ButcherA = "Мясник"
L.DeathwingA = "Смертокрыл"
L.DeckardA = "Декард Каин"
L.DemonHunterA = "Валла"
L.DiabloA = "Диабло"
L.DvaA = "D.Va"
L.ETCA = "E.T.C."
L.FalstadA = "Фалстад"
L.FenixA = "Феникс"
L.GarroshA = "Гаррош"
L.GazloweA = "Газлоу"
L.GenjiA = "Гэндзи"
L.HanzoA = "Хандзо"
L.HoggerA = "Дробитель"
L.IllidanA = "Иллидан"
L.ImperiusA = "Империй"
L.JainaA = "Джайна"
L.JunkratA = "Крысавчик"
L.KelthuzadA = "Кел'Тузад"
L.LiLiA = "Ли Ли"
L.MaievA = "Майев"
L.MalfurionA = "Малфурион"
L.MalganisA = "Мал'Ганис"
L.MeiOWA = "Мэй"
L.MephistoA = "Мефисто"
L.MuradinA = "Мурадин"
L.MurkyA = "Мурчаль"
L.NexusHunterA = "Кахира"
L.OrpheaA = "Орфея"
L.RehgarAnnouncer = "Регар"
L.SiegeTankA = "Сержант Кувалда"
L.StitchesA = "Стежок"
L.TassadarA = "Тассадар"
L.TychusA = "Тайкус"
L.TyraelA = "Тираэль"
L.TyraelMechaA = "Меха Тираэль"
L.WhitemaneA = "Вайтмейн"
L.WitchDoctorA = "Назибо"
L.YrelA = "Ирель"
L.ZeratulA = "Зератул"

elseif locale == "zhCN" then

L.title = "倒数：风暴英雄"
L.language = "语言"
-- L.locale_warning = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."

L.heroes = "风暴英雄"
L.key = "%s：%s：%s"
L.key_short = "%s：%s"

L.Adjutant = "副官"
L.Angel = "衣拉瑞安"
L.Athena = "雅典娜"
L.Arena = "竞技场播报员"
L.Blackheart = "黑心船长"
L.Commodore = "准将福特"
L.Demon = "贝莱斯"
L.DrekTharA = "德雷克塔尔"
L.GardensDayAnnouncer = "龙葵女王"
L.LadyofThorns = "荆棘女士"
L.LuchaA = "摔霸"
L.MiraA = "米拉·汉"
L.Necromancer = "守墓人"
L.RavenLord = "乌鸦之神"
L.SnakeGod = "卡"
L.SpiderQueen = "尼西斯"
L.Toy18A = "“小孩”"
L.VanndarA = "范达尔·雷矛"
L.VolskayaA = "沃斯卡娅"

L.Abathur = "阿巴瑟"
L.AlarakA = "阿拉纳克"
L.AlexstraszaA = "阿莱克丝塔萨"
L.AnduinA = "安度因"
L.AnubarakAnnouncer = "阿努巴拉克"
L.ArthasA = "阿尔萨斯"
L.BarbarianA = "桑娅"
L.BlazeA = "布雷泽"
L.BrightwingA = "光明之翼"
L.ButcherA = "屠夫"
L.DeathwingA = "死亡之翼"
L.DeckardA = "迪卡德·凯恩"
L.DemonHunterA = "维拉"
L.DiabloA = "迪亚波罗"
L.DvaA = "D.Va"
L.ETCA = "精英牛头人酋长"
L.FalstadA = "弗斯塔德"
L.FenixA = "菲尼克斯"
L.GarroshA = "加尔鲁什"
L.GazloweA = "加兹鲁维"
L.GenjiA = "源氏"
L.HanzoA = "半藏"
L.HoggerA = "霍格"
L.IllidanA = "伊利丹"
L.ImperiusA = "英普瑞斯"
L.JainaA = "吉安娜"
L.JunkratA = "狂鼠"
L.KelthuzadA = "克尔苏加德"
L.LiLiA = "丽丽"
L.MaievA = "玛维"
L.MalfurionA = "玛法里奥"
L.MalganisA = "玛尔加尼斯"
L.MeiOWA = "美"
L.MephistoA = "墨菲斯托"
L.MuradinA = "穆拉丁"
L.MurkyA = "奔波尔霸"
L.NexusHunterA = "琪拉"
L.OrpheaA = "奥菲娅"
L.RehgarAnnouncer = "雷加尔"
L.SiegeTankA = "重锤军士"
L.StitchesA = "缝合怪"
L.TassadarA = "塔萨达尔"
L.TychusA = "泰凯斯"
L.TyraelA = "泰瑞尔"
L.TyraelMechaA = "机甲泰瑞尔"
L.WhitemaneA = "怀特迈恩"
L.WitchDoctorA = "纳兹波"
L.YrelA = "伊瑞尔"
L.ZeratulA = "泽拉图"

elseif locale == "zhTW" then

L.title = "倒數：暴雪英霸"
L.language = "語言"
-- L.locale_warning = "You've changed your language! Normally only one set of voices is used, but each language you change to will remain listed until you reload your UI."

L.heroes = "暴雪英霸"
L.key = "%s：%s：%s"
L.key_short = "%s：%s"

L.Adjutant = "副官"
L.Angel = "伊萊瑞"
L.Athena = "雅典娜"
L.Arena = "競技場播報員"
L.Blackheart = "黑心船長"
L.Commodore = "福特准將"
L.Demon = "貝雷斯"
L.DrekTharA = "德雷克塔爾"
L.GardensDayAnnouncer = "夜影女皇"
L.LadyofThorns = "荊棘夫人"
L.LuchaA = "摔霸"
L.MiraA = "米拉‧韓"
L.Necromancer = "守墓者"
L.RavenLord = "掠鴉王"
L.SnakeGod = "卡"
L.SpiderQueen = "涅希絲"
L.Toy18A = "「小鬼頭」"
L.VanndarA = "范達爾‧雷矛"
L.VolskayaA = "伏斯凱亞"

L.Abathur = "阿巴瑟"
L.AlarakA = "亞拉瑞克"
L.AlexstraszaA = "雅立史卓莎"
L.AnduinA = "安杜因"
L.AnubarakAnnouncer = "阿努巴拉克"
L.ArthasA = "阿薩斯"
L.BarbarianA = "桑雅"
L.BlazeA = "爆焰"
L.BrightwingA = "亮翼"
L.ButcherA = "屠夫"
L.DeathwingA = "死亡之翼"
L.DeckardA = "迪卡‧凱恩"
L.DemonHunterA = "維拉"
L.DiabloA = "迪亞布羅"
L.DvaA = "D.Va"
L.ETCA = "精英牛頭大佬"
L.FalstadA = "弗斯塔德"
L.FenixA = "菲尼克斯"
L.GarroshA = "卡爾洛斯"
L.GazloweA = "加茲魯維"
L.GenjiA = "源氏"
L.HanzoA = "半藏"
L.HoggerA = "霍格"
L.IllidanA = "伊利丹"
L.ImperiusA = "英普瑞斯"
L.JainaA = "珍娜"
L.JunkratA = "炸彈鼠"
L.KelthuzadA = "科爾蘇加德"
L.LiLiA = "莉莉"
L.MaievA = "瑪翼夫"
L.MalfurionA = "瑪法里恩"
L.MalganisA = "瑪爾加尼斯"
L.MeiOWA = "小美"
L.MephistoA = "墨菲斯托"
L.MuradinA = "穆拉丁"
L.MurkyA = "莫奇"
L.NexusHunterA = "奇菈"
L.OrpheaA = "歐菲亞"
L.RehgarAnnouncer = "雷加"
L.SiegeTankA = "榔頭中士"
L.StitchesA = "縫合怪"
L.TassadarA = "塔薩達"
L.TychusA = "泰科斯"
L.TyraelA = "泰瑞爾"
L.TyraelMechaA = "機甲泰瑞爾"
L.WhitemaneA = "懷特邁恩"
L.WitchDoctorA = "納奇班"
L.YrelA = "伊芮爾"
L.ZeratulA = "澤拉圖"

end
