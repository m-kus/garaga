#[cfg(test)]
mod schnorr_tests {
    use garaga::signatures::schnorr::{
        SchnorrSignature, SchnorrSignatureWithHint, is_valid_schnorr_signature,
    };

    #[test]
    fn test_schnorr_BN254() {
        let mut sch_sig_with_hints_serialized = array![
            25818539331857930040314617978,
            78090694603461972387174096825,
            2703818907845027019,
            0,
            181762454779927841107875196039457683983,
            28215594864971818583502469914456645564,
            25093249062797173789773481043814634714,
            28090073083341299544504024785600791580,
            28610756795125421341789836686,
            867082125726060679479563787,
            517675042607557601,
            0,
            74669468252610898339759914706,
            72459310451373670527166081349,
            567344248591793433,
            0,
            38325661348877783211976497530,
            35462761860755869492142061064,
            2290891383729020262,
            0,
            41888403965386499220509717377,
            24880030827500007371349674511,
            166822982240436033,
            0,
            59454951582999105130594535162,
            19780530247864018171021222472,
            218919795684806796,
            0,
            31435683638975521302809493834,
            48131667185121458837897430174,
            1994883045584630938,
            0,
            15041540663103999983921795365,
            22855949124591923083574070497,
            1431496548459141165,
            0,
            2428427856426074607907972750,
            54368121318533369462862009534,
            1596890099361254919,
            0,
            5,
            61837781862674747651398557881,
            42849063596815185752551571777,
            1743809914324608479,
            0,
            14125390343359734247115733138,
            9540220371572626499965450177,
            806777770825267539,
            0,
            37219658634195436827902531383,
            36086049875626279911668242436,
            857858019853935457,
            0,
            62476066346196942470515974837,
            46431165989640893328445940022,
            2882251798659573227,
            0,
            48555156401384807955999529103,
            4878428048382704320459781582,
            2504880115756456188,
            0,
            6,
            39949711324880224243473585196,
            57023195591228692506127934305,
            3159923925220128050,
            0,
            62514873059441321746264403755,
            11872794308151614164025297713,
            2064298384493048687,
            0,
            78012493643898445894143864323,
            52536793550965457347782025529,
            507990844601607100,
            0,
            72508001038540066554723390228,
            14575824991215346870161430017,
            2213767882968712652,
            0,
            2443264448936850278818542438,
            35118246806308607497542621669,
            2515013763125415506,
            0,
            1,
            0,
            0,
            0,
            6,
            64484085737272230498833621360,
            64941590441093035140607026813,
            1565805298093279574,
            0,
            16352103801445018638842719544,
            65322378577842809040952423942,
            1760567286771233858,
            0,
            62770866453232585718480779790,
            26071613862063317594392655634,
            2176095366148742089,
            0,
            32543045257867221400200919292,
            6225471068027309144709945019,
            1099597769305746422,
            0,
            22461853131445071939715312158,
            19345652461163155553034228820,
            631760003808823307,
            0,
            23370372877853506569702614814,
            56796028512027974705864161665,
            217152751300313494,
            0,
            9,
            55201121649861850376863498742,
            56985016608439598594624263425,
            2505775242054442820,
            0,
            75992450501670216468470632506,
            57804260356095940623740073731,
            2705896886676175395,
            0,
            75581155903166662495343692297,
            78382218138632034449802126253,
            1523972533804821301,
            0,
            34369377087192926366998598362,
            65894262913892591786396635204,
            2827231040520324675,
            0,
            5196654081473050229162774223,
            3142964561830957732893623230,
            2635343140263353875,
            0,
            78012493643898445894143864326,
            52536793550965457347782025529,
            507990844601607100,
            0,
            72508001038540066554723390228,
            14575824991215346870161430017,
            2213767882968712652,
            0,
            2443264448936850278818542438,
            35118246806308607497542621669,
            2515013763125415506,
            0,
            1,
            0,
            0,
            0,
            18491090926730934087002805824,
            67882993143769697893850332707,
            1614341497221428780,
            0,
            0,
        ]
            .span();
        let sch_with_hints = Serde::<
            SchnorrSignatureWithHint,
        >::deserialize(ref sch_sig_with_hints_serialized)
            .expect('FailToDeserialize');
        let is_valid = is_valid_schnorr_signature(sch_with_hints, 0);
        assert!(is_valid);
    }


    #[test]
    fn test_schnorr_BLS12_381() {
        let mut sch_sig_with_hints_serialized = array![
            4300102698783977245694163923,
            48190161318063001130572718261,
            68156713377498248362088587016,
            5065155056387494988862313409,
            244894305564270260175038077151215156601,
            41175158944479480789031122979049061281,
            25093249062797173789773481043814634714,
            56180146191719971483088411334392038428,
            70862508686663820822416130908,
            4331727992494874104164226470,
            59062737899953780140782212180,
            7453365378867621491305350765,
            35856937790824170676907643732,
            45854290181992112907384459678,
            30847823944679166343901919846,
            7706527822267996973261274437,
            24419388479841650463003220851,
            23979987116965785227608003898,
            64741614192416139769530843354,
            5578640387815792890225480819,
            50149190801830803380405264199,
            13148003114203294362233904885,
            10021362751172210768743083695,
            2201465790498631651537231202,
            31666960315959616976977288459,
            3134825710576077713231872932,
            8045080521185023383868889924,
            2992956758143212717186569789,
            75140208022246762520858285540,
            52146568306275464117631061364,
            29833409246381330043124446999,
            2549627654334586821775512157,
            55335431412335500478209442669,
            64486158796826219669626890547,
            73536034267494038598346764159,
            4767421939120538535718097829,
            8535765090010100315040814464,
            40663169177832267519136511634,
            36666450545821848234675228728,
            3959022888535132272757672555,
            5,
            71596710317074475526653116275,
            74309060303383429549497854043,
            25370321617454207315214527261,
            5065246692387044477183657769,
            60888873755716183191803523824,
            75053851573558735588579212684,
            52625770759380798730054230715,
            6488320759783280749892358726,
            71140643602105385518209459754,
            5235471716009189767404158801,
            44094766523522699303979740058,
            4881578429483145444897317881,
            3818011827596477841068472583,
            21295631049595749935344884125,
            78454488724787706168612913651,
            3832111588368477768604925214,
            47232412747819191410992509462,
            38283393279713926644223472379,
            15328193851469787517931497056,
            7856943785999284398965249933,
            6,
            19197139733162773762242464061,
            7607231397849784470655415688,
            22903008557303062862675538682,
            3720921732355644974907360540,
            14326317612784821622674545943,
            68119162662703449081611127429,
            52639659865010539421904656670,
            2438358673411973387483478057,
            11028724873058541920844430426,
            48491054897809869120406608588,
            33181710573693462928161203309,
            1881475776037366159780464832,
            41134564641110991577113934784,
            13173212649675317932170144089,
            71006631899288835896427732324,
            7398485047503331823233857431,
            39256076024277980001528390826,
            61117721509794794921600466945,
            11724346629564024060144382469,
            3988724812471833210856208008,
            1,
            0,
            0,
            0,
            6,
            9692974579062811611575066829,
            43957476673832824358551219492,
            66207964076529692709913492868,
            4818461587681509676344055835,
            35620452797716547842460365236,
            33724284418095651123113976292,
            27524425803143949974667515672,
            6965232514006089492188550045,
            71485165182407704706248218451,
            37813667510563575587336488601,
            60402174000539426957447694262,
            2245686161143469706217990757,
            67076135784031808555924392463,
            9381339746447842848116347577,
            71357526255388825056100085674,
            4814271674706263877843746800,
            61901673048495645465784724250,
            25416634365265881353731724032,
            15507801851608020007681783252,
            749424083666308897910407151,
            40473495582412232371655328220,
            70243574172994653107127086876,
            53007698032594065059366711917,
            7691113898709421328228266007,
            9,
            21908162430469702091639978569,
            77721108988506998413878941218,
            70785052914386667271093795112,
            6835783147336387719043116218,
            2424873948957893533368306097,
            2856183990864306483525986838,
            31275333116687898320922366396,
            1705530911561701369347586288,
            44114899492234167683377721704,
            35507894562710801294538533680,
            53498679780509514119100862902,
            7525903104149464639121859329,
            43441974803145505834922642833,
            11784328042189485543733254899,
            65165285866627394542865128845,
            1123246794024203545497486498,
            61589828705533955714128353897,
            11033602924776661862807800461,
            57883083753615467303265467319,
            2297450359126921869735658205,
            11028724873058541920844430430,
            48491054897809869120406608588,
            33181710573693462928161203309,
            1881475776037366159780464832,
            41134564641110991577113934784,
            13173212649675317932170144089,
            71006631899288835896427732324,
            7398485047503331823233857431,
            39256076024277980001528390826,
            61117721509794794921600466945,
            11724346629564024060144382469,
            3988724812471833210856208008,
            1,
            0,
            0,
            0,
            67815914388632680485338772737,
            47005648443256785887153049458,
            14023006889294130050089026618,
            3897070865563420348036505536,
            0,
        ]
            .span();
        let sch_with_hints = Serde::<
            SchnorrSignatureWithHint,
        >::deserialize(ref sch_sig_with_hints_serialized)
            .expect('FailToDeserialize');
        let is_valid = is_valid_schnorr_signature(sch_with_hints, 1);
        assert!(is_valid);
    }


    #[test]
    fn test_schnorr_SECP256R1() {
        let mut sch_sig_with_hints_serialized = array![
            65609709963732580961540335485,
            20758950018888877101481730645,
            11522252604998002065,
            0,
            45808491157290277714970796752221419797,
            140496144405170607698072633926034030273,
            303416399459424055589361154128267592197,
            47392387440050222334387056025351624211,
            5334448378619112049701259704,
            41385154388772315182663277631,
            17712994706362733847,
            0,
            29943553562302403413545215534,
            33037261117876012390232157188,
            8918362541136268122,
            0,
            77978465828740080771236923744,
            71587082426216243616971085610,
            16156273850654679967,
            0,
            52166542340369324835547897543,
            57288088113203907618854285446,
            201120846434220813,
            0,
            22225084760443527623754941660,
            72421206084139732051759355727,
            2092590577219392387,
            0,
            63445583118235858229063536661,
            74363409434421264968108936743,
            16287717166536575975,
            0,
            13782045341491064547157239356,
            77287741927454492209965727853,
            13020723256891343382,
            0,
            13285178540093597177110116646,
            28648537055609517075508004916,
            13867058048569824466,
            0,
            5,
            71130024907623080145581518166,
            27055703043895051792350311242,
            16381551269340347787,
            0,
            40057874883039038238675614887,
            10911191836073957460269221975,
            3211508318921259842,
            0,
            13902950535486067326541325439,
            56197107008343328594305078592,
            10704670639769123882,
            0,
            43830361399171389494728986405,
            34806013911901315178839628080,
            5274181274183149779,
            0,
            21546112172464969276428723712,
            25866369686971982517609359067,
            11471220709928886613,
            0,
            6,
            61328966274663307566454348956,
            48893481763790923390564163989,
            17073072526965493650,
            0,
            30433495083236611378084543765,
            41283210383775591033541124389,
            11415073236430810808,
            0,
            2091724811085998741845635457,
            53998979487382756463993705285,
            11499118327703854546,
            0,
            39103914518071013357899486266,
            59673818612540895728902214919,
            5164109919524937104,
            0,
            24925113899867812712478031670,
            56478976879182389563824977756,
            17087526558917488489,
            0,
            1,
            0,
            0,
            0,
            6,
            51064934617333063940900066826,
            30800146134906693678315023979,
            5216395927824239595,
            0,
            57575804934623777512947575804,
            43621842610940429297721989972,
            2144824267670907650,
            0,
            74043995295966584017996720023,
            5702002681461200351455997289,
            10852585645846446019,
            0,
            4060165535674660129871012315,
            15439713213996197571120943511,
            13933238947603660742,
            0,
            34839216610173488692641087857,
            45055104644002338661379322417,
            3705717921278741029,
            0,
            3178282268308938007795976581,
            16643715368690846162709366105,
            13533300867768901533,
            0,
            9,
            34439349968114428747854712727,
            44574599020873413022932941784,
            11808775818162665039,
            0,
            72023339235224915583341903343,
            17214308901670360917080249967,
            2667504599204906381,
            0,
            25388764102591178993162011107,
            66934192252289690839479650031,
            17467674116926186492,
            0,
            48966658389464198765111829449,
            54181426246134207555325214622,
            17366554446091284408,
            0,
            15141656455959442900943472263,
            78127870714074223535946607638,
            13676881782359389963,
            0,
            69780664151038781760512627752,
            19473019793514367588755649506,
            3671001503267955583,
            0,
            39103914518071013357899486263,
            59673818612540895728902214919,
            5164109919524937104,
            0,
            24925113899867812712478031670,
            56478976879182389563824977756,
            17087526558917488489,
            0,
            1,
            0,
            0,
            0,
            30795595760216954562876230183,
            24892699569178114197112209813,
            2709377994465452134,
            0,
            0,
        ]
            .span();
        let sch_with_hints = Serde::<
            SchnorrSignatureWithHint,
        >::deserialize(ref sch_sig_with_hints_serialized)
            .expect('FailToDeserialize');
        let is_valid = is_valid_schnorr_signature(sch_with_hints, 3);
        assert!(is_valid);
    }


    #[test]
    fn test_schnorr_SECP256K1() {
        let mut sch_sig_with_hints_serialized = array![
            78606496206920099100290923834,
            43911463299960000386608879502,
            14041545249823853474,
            0,
            59386049736680295913786713419323148528,
            270829133879959126518087881026816746419,
            303416399459424055589361154128267592197,
            47392387440050222334387056025351624211,
            17715499006646118987196549744,
            31205626268480212688405503580,
            15737561220077112842,
            0,
            37322498786671537568897399032,
            59690337901062948816085125773,
            4544367804235814850,
            0,
            32803483138380350315628718348,
            64938189120307896329751404557,
            10965091484343017130,
            0,
            9451832877726900051416442618,
            35667387939941614514852863888,
            6952285671285991513,
            0,
            69645138687985723029644911827,
            1930902150986193785937810220,
            4471042176165867291,
            0,
            42470803398001068029522997389,
            65254591345684077147526103857,
            5646316224836823276,
            0,
            15534068473468096205607398454,
            37693041015143371248138059449,
            10419509733620609980,
            0,
            31213008634466214510899647500,
            28123856296255542439991988801,
            16537686676327361254,
            0,
            5,
            69752254402723345012418577148,
            53544312240721859161317552841,
            700435932622579225,
            0,
            39953070957734347199774928581,
            48722835242232485430441224583,
            3226045694720248868,
            0,
            709669438188210504918692885,
            9731398613961436895811196827,
            17744041469109873823,
            0,
            64972961145287301073865860954,
            62253758270328657936753768986,
            11371338927112774780,
            0,
            21821942454082295962023827244,
            16881989562111096592929581972,
            6475849946771856324,
            0,
            6,
            13468748272079174740474722876,
            28109642721152106854372777332,
            2747963682602882017,
            0,
            5375572173163856432213625277,
            9647051234193832862244215991,
            7545198116891709146,
            0,
            24347531681554282298439041764,
            52442539004213407103510334748,
            15173520117237357379,
            0,
            35323965448504509184792271446,
            6094992584501355127133725294,
            16590498106651049774,
            0,
            8582078657163081110772619376,
            75416609466560603392480015061,
            4974465787213837510,
            0,
            1,
            0,
            0,
            0,
            6,
            54608107264699709897637540558,
            37728246953733701305739566980,
            6085938338136124905,
            0,
            48426547978694603494733375203,
            25848431637084625296816987158,
            12334450156159695067,
            0,
            68372091701499287093250630571,
            24486402207098360680440299514,
            3681843998391748208,
            0,
            23768244146560115186982836291,
            63319178025960551848798449188,
            12228061804936341302,
            0,
            73159765812378910530675501522,
            63830418277551790800847214058,
            14654659021928356892,
            0,
            24125391498198811108096892501,
            5083537621877705190543019173,
            2606283380005560932,
            0,
            9,
            15053075390289885594074078069,
            38311174019536072793521540653,
            789001704510622505,
            0,
            37629005212146995034085313485,
            67529358639356830035709511937,
            15922898670822860790,
            0,
            11976396742351300923460233041,
            50185122972436499350396541894,
            13980920452113743577,
            0,
            23052018868817726279158581628,
            70774590812661592744308854393,
            8200985986902920739,
            0,
            65450122773305424216211897455,
            62194342414532031048340619402,
            5472970479969468490,
            0,
            24347531681554282298439041771,
            52442539004213407103510334748,
            15173520117237357379,
            0,
            35323965448504509184792271446,
            6094992584501355127133725294,
            16590498106651049774,
            0,
            8582078657163081110772619376,
            75416609466560603392480015061,
            4974465787213837510,
            0,
            1,
            0,
            0,
            0,
            35420733313539204342608325071,
            22310277226923816540576479228,
            7385719721005846375,
            0,
            3,
            76587817090895264875730800089,
            60658712726386329267516391135,
            6524142019572333242,
            0,
            39369197003410657708420440909,
            62352538339931959706183395550,
            1997501439784452045,
            0,
            78439023492739379303881567320,
            66614350012553704940418077161,
            3069732152639348835,
            0,
        ]
            .span();
        let sch_with_hints = Serde::<
            SchnorrSignatureWithHint,
        >::deserialize(ref sch_sig_with_hints_serialized)
            .expect('FailToDeserialize');
        let is_valid = is_valid_schnorr_signature(sch_with_hints, 2);
        assert!(is_valid);
    }


    #[test]
    fn test_schnorr_ED25519() {
        let mut sch_sig_with_hints_serialized = array![
            40509457281782809498454448235,
            58396416825062967373227279551,
            1701828145982709556,
            0,
            223715258625639326142652276474981337537,
            14074032163407275079928199974627275370,
            25093249062797173789773481043814634714,
            14045036529151963575211831511205168156,
            35350125138164052565237540183,
            13904820893660719690890968734,
            4752348650469845154,
            0,
            4865960413346412454823997010,
            36776401425106937459042250075,
            781380896372324280,
            0,
            21516447725199662850814670110,
            31749513258614684435976532817,
            8532184749951306308,
            0,
            37382527682193631468880595794,
            26652615641701310139911479500,
            5691699211518096719,
            0,
            47927547698545266204901027373,
            53511069142428921980657152385,
            7845969227819767345,
            0,
            44506253632912329800734144285,
            15691172574227412038896317503,
            4817835396179206140,
            0,
            39591592297184766526155722795,
            35872362134079550841721704854,
            651611606390650932,
            0,
            5061674598640930445105869735,
            36862349733677510263339913314,
            2952104372542100347,
            0,
            5,
            61425023694230833464722350280,
            34209916188072294416637565995,
            5532255830221238971,
            0,
            8045821829858189521487155530,
            2127258198507732218838179453,
            3752153700161338880,
            0,
            45185906108164896306534430538,
            54863324904419401994482808844,
            7527532608023987417,
            0,
            77152627069807808661202058999,
            79176281472179440065978223884,
            2302046357981597039,
            0,
            35623188468047846956355686459,
            75194578151616694082381497835,
            6726026909992082498,
            0,
            6,
            47000961465215411961860073122,
            8019863832773806795933126697,
            7325341712582668927,
            0,
            61558037445017848681884993805,
            56793853281342004288210290091,
            4981555436271894279,
            0,
            3913735748520382401367380293,
            51349420423119074630892458059,
            1278124937130721677,
            0,
            14737700349380640120606188071,
            8981527503902300660220126984,
            1808138028285869061,
            0,
            9929452808432578992565991365,
            28356346220149526898212113177,
            2827562869147712377,
            0,
            1,
            0,
            0,
            0,
            6,
            29493587807743637201588279481,
            77592117618088957797893936093,
            2826506673602303978,
            0,
            12343892908165061196564972008,
            69477554833206183259586446743,
            504916790840291809,
            0,
            67160729024776584725139811722,
            68723714275598785369913509437,
            3091094257226705986,
            0,
            53716431642869264788209289396,
            52416907715772665690988880345,
            1274867274589557200,
            0,
            69941558523411304978120954396,
            44133907692181373720621135226,
            1233607360777944126,
            0,
            41300023908436467786810683442,
            930779273693727195986791971,
            4661836766743929856,
            0,
            9,
            38004519034522588014364841430,
            11557164912298774264165035228,
            7984735621180689017,
            0,
            67592237391547974182959881765,
            34658830029011856518991934778,
            4332706737896680230,
            0,
            67767485261038361275589019627,
            12852932759130303335899054580,
            8491637411909213292,
            0,
            29700552499995940671610972213,
            46024697600958580739425178857,
            8010623223617864190,
            0,
            7118883153050056093127147364,
            5768417499571165386471269408,
            5507645248429294148,
            0,
            45413976359313471811030183348,
            47062081072180699014102858031,
            8810221010650505316,
            0,
            18651196135637222341554895188,
            24329903563200612696466267493,
            8531639347015088875,
            0,
            9929452808432578992565991365,
            28356346220149526898212113177,
            2827562869147712377,
            0,
            1,
            0,
            0,
            0,
            46362039500565326411190871547,
            4215556651048727014537851504,
            60144119900779431,
            0,
            2,
            67150315027061905332908352504,
            23209385780798127044263768336,
            2035282506983860621,
            0,
            77323179072132972597556007111,
            70885317516434941180282791760,
            3752174281020443936,
            0,
        ]
            .span();
        let sch_with_hints = Serde::<
            SchnorrSignatureWithHint,
        >::deserialize(ref sch_sig_with_hints_serialized)
            .expect('FailToDeserialize');
        let is_valid = is_valid_schnorr_signature(sch_with_hints, 4);
        assert!(is_valid);
    }


    #[test]
    fn test_schnorr_GRUMPKIN() {
        let mut sch_sig_with_hints_serialized = array![
            10027581330431628453549225171,
            17769317987186844813745069795,
            1243992553458866925,
            0,
            165407633356739519055469821118285734928,
            48293298294023512007455595888421154673,
            25093249062797173789773481043814634714,
            28090073083341299544504024785600791580,
            41688611208562472964299242833,
            17729154263670546193656586433,
            573097972700812243,
            0,
            20613342921902541570728309120,
            42388390441097310645094190638,
            2775434689072615984,
            0,
            32742651362628634804903802820,
            12912826620872950257580804817,
            1435959441261093758,
            0,
            14491472189336362739010351523,
            8628636525329667739678713136,
            2242680673134273057,
            0,
            8583189884244618319383432206,
            30479446584647506405028102678,
            2542009309460967476,
            0,
            43114378039015657026587521045,
            41330395424783416276398469572,
            1801783938122010484,
            0,
            426962886372611437719919423,
            23261969460637478846066632936,
            3241043095840848947,
            0,
            28733018451971575416621801842,
            16562832892619895287368260554,
            3471574837120669096,
            0,
            5,
            7338910052250667518818415856,
            33173621602762148684605930005,
            839892074221283431,
            0,
            41016309092980200892819189064,
            75055803713079429126544721349,
            2981440913955493473,
            0,
            7978452953619419098924927095,
            4040407204837116380832951415,
            3173143168734795115,
            0,
            32448807941694140479620469877,
            17950677581372485955139661343,
            2201323710420492732,
            0,
            18519108083220649669697311866,
            9525058755767534823857579975,
            2604016848018605307,
            0,
            6,
            52312840771018202161689565355,
            25090062064009469916332297377,
            2071917453024184673,
            0,
            5852818111273849894444571882,
            60779488306618325091558133866,
            2856386498469410703,
            0,
            438200784196508799367255878,
            19842174079880991147191517456,
            2504813295108338630,
            0,
            24837555675319776670805004167,
            57899834993584033140794128501,
            358992572661788417,
            0,
            29574191807372339935307604896,
            7515295803776899084161180232,
            2668884981145189572,
            0,
            1,
            0,
            0,
            0,
            6,
            23699527519049917231335446963,
            60416675462593243103233323968,
            1227935870853705445,
            0,
            31726376444494122366914879695,
            12772723229906848412939661089,
            1268546572689427738,
            0,
            49373041456884021644735402980,
            21836976540638374128740067146,
            429954620691765837,
            0,
            41464647344528800213667379638,
            32763440658726985650096190414,
            1122757446194611606,
            0,
            66949016626150614804578765184,
            55216816561100916999480611620,
            2194063697086421124,
            0,
            16430510685193740776186784124,
            67840101869577492644438222092,
            222830538084202854,
            0,
            9,
            441241525272406171792432304,
            42477755792165970295399654497,
            3134384233421537876,
            0,
            31767446233199358647587869828,
            3025177487006838664317443307,
            259405261261607356,
            0,
            6915909229522927183153624167,
            8091934144803575510185900446,
            2749151451596861940,
            0,
            22330782447093134106589630646,
            26387224995235098971840404840,
            2943040251379722903,
            0,
            72054017546658010921419915095,
            40743865602398452892627916105,
            2816319287439806632,
            0,
            438200784196508799367255861,
            19842174079880991147191517456,
            2504813295108338630,
            0,
            24837555675319776670805004167,
            57899834993584033140794128501,
            358992572661788417,
            0,
            29574191807372339935307604896,
            7515295803776899084161180232,
            2668884981145189572,
            0,
            1,
            0,
            0,
            0,
            166690294123501025618776103,
            46034994651768039754409668785,
            905677827055191110,
            0,
            1,
            2991762280857332207471861045,
            77980090706386920451359258940,
            740591502524969259,
            0,
        ]
            .span();
        let sch_with_hints = Serde::<
            SchnorrSignatureWithHint,
        >::deserialize(ref sch_sig_with_hints_serialized)
            .expect('FailToDeserialize');
        let is_valid = is_valid_schnorr_signature(sch_with_hints, 5);
        assert!(is_valid);
    }
}
