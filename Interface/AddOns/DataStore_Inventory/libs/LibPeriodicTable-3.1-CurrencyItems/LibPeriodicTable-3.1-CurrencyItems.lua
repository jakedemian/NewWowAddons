﻿-- (c) 2007 Nymbia.  see LGPLv2.1.txt for full details.
--DO NOT MAKE CHANGES TO THIS FILE BEFORE READING THE WIKI PAGE REGARDING CHANGING THESE FILES
if not LibStub("LibPeriodicTable-3.1", true) then error("PT3 must be loaded before data") end
LibStub("LibPeriodicTable-3.1"):AddData("CurrencyItems", gsub("$Rev: 597 $", "(%d+)", function(n) return n+90000 end), {

	["CurrencyItems.Ancient Mana"]="137178:25,137401:25,137467:50,140670:100,140671:100,141205:100,147768:500,130151:1000",
	["CurrencyItems.Apexis Crystal"]="32650:1,32652:1,32653:1,32654:1,32625:3,32627:3,32631:3,32624:4,32626:4,32628:4,32645:4,32647:4,32648:4,32651:4",
	["CurrencyItems.Apexis Shard"]="32784:2,32783:3,32596:10,32597:10,32599:10,32600:10,32828:10,32759:35,32634:40,32635:40,32636:40,32637:40,32638:40,32639:40,32650:50,32652:50,32653:50,32654:50,33934:50,33935:50,32645:100,32647:100,32648:100,32651:100,32640:160,32641:160",
	["CurrencyItems.Arcane Rune"]="28903:2,28904:2,28907:2,28908:2,28909:8,28910:8,28911:8,28912:8",
	["CurrencyItems.Bloody Coin"]="102464:1,103639:20,103637:100,103638:500",
	["CurrencyItems.Brawler's Gold"]="142318:100,142319:100,143762:100,143763:100,142317:250,143761:250,142288:500,142289:500,142290:500,142291:500,142292:500,142293:500,142294:500,142314:500,143760:500,142311:1000,142313:1000,143758:1000,143759:1000",
	["CurrencyItems.Champion's Seal"]="46743:5,46744:5,46745:5,46746:5,46747:5,46749:5,46750:5,46751:5,46752:5,45131:10,45152:10,45153:10,45154:10,45155:10,45156:10,45159:10,45160:10,45163:10,45181:10,45182:10,45183:10,45184:10,45206:10,45207:10,45209:10,45211:10,45213:10,45215:10,45216:10,45217:10,45218:10,45219:10,45220:10,45221:10,45223:10,45011:15,45013:15,45014:15,45015:15,45016:15,45017:15,45018:15,45019:15,45020:15,45021:15,46843:15,45074:25,45075:25,45076:25,45077:25,45078:25,45128:25,45129:25,45130:25,45203:25,45204:25,45205:25,45208:25,45210:25,45212:25,45214:25,45222:25,122232:25,122350:25,122351:25,122354:25,122355:25,122356:25,122357:25,122358:25,122359:25,122360:25,122379:25,122380:25,122381:25,122382:25,122383:25,122384:25,122385:25,122387:25,122388:25,122389:25,122390:25,122391:25,122392:25,122361:35,122362:35,44965:40,44970:40,44971:40,44973:40,44974:40,44980:40,44982:40,44984:40,45002:40,45606:40,46820:40,46821:40,122349:40,122352:40,122353:40,122363:40,122386:40,46817:50,46818:50,46874:50,122338:55,122339:65,45125:100,45586:100,45589:100,45590:100,45591:100,45592:100,45593:100,45595:100,45596:100,45597:100,46815:100,46816:100,47179:100,47180:100,45725:150,46813:150,46814:150,47541:150",
	["CurrencyItems.Coilfang Armaments"]="32903:1,32904:1",
	["CurrencyItems.Curious Coin"]="136699:1,136702:1,136706:1,137727:1,137935:1,141712:50,141860:50,141861:50,141862:50,141884:50,141713:150",
	["CurrencyItems.Echoes of Battle"]="146804:75,146809:75,146810:75,146811:75,146812:75,146813:75,146814:75,146815:75,146816:75,149388:75,149389:75,149390:75,149391:75,149392:75,149393:75,149394:75,149395:75,149396:75,149406:75,149407:75,149408:75,149409:75,149410:75,149411:75,149412:75,149413:75,149414:75,146826:100,146827:100,146828:100,146829:100,146830:100,146831:100,146832:100,146833:100,146834:100",
	["CurrencyItems.Echoes of Domination"]="146817:75,146818:75,146819:75,146820:75,146821:75,146822:75,146823:75,146824:75,146825:75,149397:75,149398:75,149399:75,149400:75,149401:75,149402:75,149403:75,149404:75,149405:75,149415:75,149416:75,149417:75,149418:75,149419:75,149420:75,149421:75,149422:75,149423:75,146835:100,146836:100,146837:100,146838:100,146839:100,146840:100,146841:100,146842:100,146843:100",
	["CurrencyItems.Elder Charm of Good Fortune"]="95052:1,95053:1,95054:1,95055:1,95093:1,97154:1,97156:1,97157:1,97158:1,97159:1,95056:3,97155:3,98558:3,98559:3,98560:15,98562:15",
	["CurrencyItems.Frozen Orb"]="35622:1,35623:1,35624:1,35625:1,35627:1,36860:1,36908:1,45087:4,47556:6,54798:6",
	["CurrencyItems.Glowcap"]="25548:1,25550:1,30156:1,144276:1,24539:2,31775:10,144261:10,25828:15,29149:20,144262:20,144265:20,22916:25,25827:25,38229:25,22906:30,34478:30,29150:45",
	["CurrencyItems.Halaa Battle Token"]="27637:20,27638:20,27639:20,27643:20,27644:20,27645:20,27646:20,27647:40,27648:40,27649:40,27650:40,27652:40,27653:40,27654:40,28915:70,27679:100,29228:100",
	["CurrencyItems.Halaa Research Token"]="27637:1,27638:1,27639:1,27643:1,27644:1,27645:1,27646:1,27647:2,27648:2,27649:2,27650:2,27652:2,27653:2,27654:2,32071:2,33783:4,27680:8,28915:15,29228:20",
	["CurrencyItems.Holy Dust"]="28878:2,28881:2,28882:2,28885:2,28886:8,28887:8,28888:8,28889:8",
	["CurrencyItems.Mark of Honor Hold"]="24520:5,27809:10,27812:10,28361:10,27833:15,27834:15,27931:15,27942:15,27921:30,27922:30,27927:30",
	["CurrencyItems.Mark of Thrallmar"]="24522:5,27777:10,27786:10,28360:10,27830:15,27832:15,27930:15,27939:15,27920:30,27924:30,27926:30",
	["CurrencyItems.Mark of the Illidari"]="32898:1,32899:1,32900:1,32901:1,35716:1,35717:1",
	["CurrencyItems.Mark of the World Tree"]="70145:30,70146:30,70147:30,70148:30,70149:30,70150:30,70151:30,70152:30,70153:30,70154:30,71087:30,71088:30,71631:30",
	["CurrencyItems.Nethershard"]="129096:1,124069:3,128805:3,138160:50,138161:50,138162:50,138170:50,138171:50,138188:50,139172:50,139173:50,141604:100,142526:100,136924:150,139171:150,139167:200,139168:200,139169:200,139170:200,139879:250,147775:250,147212:400,147213:400,147214:400,147215:400,147216:400,147217:400,147218:400,147219:400,147220:400,147221:400,147222:400,147223:400,153005:400,156630:400,141371:1000,141372:2000,143559:2000,141067:2500,151541:2500,153006:2500,147864:4000,147698:5000,147786:5000,147791:5000,147792:5000,147793:5000,147794:5000,147795:5000,147796:5000,147797:5000,147798:5000,147799:5000,147800:5000,147801:5000,147837:5000,130199:7500,147707:7500,147717:7500,146659:8000,147205:10000,147708:25000,142452:50000",
	["CurrencyItems.Order Resources"]="144396:25,144397:25,144398:25,143639:50,143640:50,143641:50,143642:50,143636:100,143633:250,143634:250,143635:250,140962:500,140964:500,140966:500,140968:500,140970:500,140972:500,140974:500,140976:500,140978:500,140980:500,140982:500,140984:500,153174:500,153175:500,153176:500,153177:500,142226:1000,142228:1000,143490:1000,143491:1000,143492:1000,143503:1000,143504:1000,143505:1000,143637:1000,143727:1000,144431:1000,144433:1000,144434:1000,144435:1000,147537:1000,147539:1000,147540:1000,147541:1000,147542:1000,147580:1000,147832:1000,147852:1000,147853:1000,147854:1000,140935:2000,140936:2000,140937:2000,140938:2000,140939:2000,140940:2000,140941:2000,140942:2000,140943:2000,140944:2000,140945:2000,140946:2000,140963:4000,140965:4000,140967:4000,140969:4000,140971:4000,140973:4000,140975:4000,140977:4000,140979:4000,140981:4000,140983:4000,140985:4000,124124:5000",
	["CurrencyItems.Sightless Eye"]="139344:15,139346:15,139345:25,139347:25,123918:50,124101:50,124102:50,124103:50,124104:50,124107:50,124108:50,124109:50,124110:50,124111:50,124112:50,124113:50,124115:50,124117:50,124118:50,124119:50,124121:50,124437:50,137934:50,138027:50,123919:100,124120:100,137932:100,138028:100,138029:100,138030:100,138031:100,138032:100,141038:100,141057:100,141058:100,141066:100,139423:175,139424:175,139427:175,139425:225,123929:250,124105:250,128625:250,136904:250,137706:250,137826:250,137828:250,137829:250,137831:250,137869:250,137885:250,137901:250,137917:250,137954:250,137966:250,138016:250,139426:250,139896:250,139422:350,123937:500,123949:500,137720:500,137881:500,137893:500,137913:500,137925:500,137962:500,137974:500,139411:650,139431:950,139412:1500",
	["CurrencyItems.Spirit Shard"]="32947:2,32948:2,28556:8,28557:8,28559:18,28560:18,28561:18,28574:18,28575:18,28576:18,28577:18,28758:18,28759:18,28760:18,28761:18,28553:50,28555:50",
	["CurrencyItems.Sunmote"]="34381:1,34382:1,34383:1,34384:1,34385:1,34386:1,34388:1,34389:1,34390:1,34391:1,34392:1,34393:1,34394:1,34395:1,34396:1,34397:1,34398:1,34399:1,34400:1,34401:1,34402:1,34403:1,34404:1,34405:1,34406:1,34407:1,34408:1,34409:1",
	["CurrencyItems.Timewarped Badge"]="49602:10,133545:10,33844:25,33857:25,44113:25,128505:25,128506:25,129830:25,129831:25,129832:25,129833:25,129834:25,129835:25,129836:25,129837:25,129838:25,129840:25,129841:25,129842:25,129843:25,129852:25,129853:25,129854:25,129855:25,129868:25,129869:25,129870:25,129871:25,129872:25,129873:25,129874:25,129875:25,129876:25,129877:25,129879:25,129880:25,129881:25,129882:25,129883:25,129884:25,129885:25,129886:25,129889:25,129890:25,129891:25,129892:25,133520:25,133521:25,133522:25,133523:25,133524:25,133525:25,133526:25,133527:25,133528:25,133529:25,133530:25,133531:25,133532:25,133533:25,133534:25,133535:25,133536:25,143948:25,144044:25,144045:25,144046:25,144047:25,144048:25,144049:25,144050:25,144051:25,144052:25,144053:25,144054:25,144055:25,144056:25,144057:25,144058:25,144059:25,147882:25,147883:25,129839:35,129846:35,129847:35,144060:35,144061:35,144062:35,144063:35,79264:50,79265:50,79266:50,79267:50,79268:50,128507:50,129848:50,129849:50,129850:50,129851:50,129856:50,129857:50,129858:50,129861:50,129893:50,129895:50,129896:50,129897:50,129898:50,129931:50,129937:50,129940:50,129941:50,129942:50,129943:50,129944:50,129945:50,129946:50,129947:50,129948:50,129949:50,129950:50,129951:50,129954:50,129955:50,133150:50,133151:50,133152:50,133154:50,133159:50,133160:50,133537:50,133538:50,133539:50,133540:50,133541:50,143935:50,143936:50,143937:50,143938:50,143939:50,143940:50,143941:50,143942:50,143943:50,143944:50,143945:50,143946:50,143947:50,144070:50,147884:50,129827:100,129828:100,129829:100,129845:100,35348:150,46007:150,67414:150,128510:200,136925:200,147885:200,129929:500,144393:500,151184:500,122338:750,129965:750,151016:750,122339:900,122340:1000,144072:1000,151614:1000,122341:1200,151615:1200,129926:1250,129938:1500,133511:1500,129952:2000,143953:2200,143954:2200,133542:3000,87775:5000,129922:5000,129923:5000",
	["CurrencyItems.Tol Barad Commendation"]="63144:2,63145:2,64993:2,64994:2,63391:5,64995:5,63517:10,63518:10,63141:40,63378:40,63379:40,64997:40,65175:40,65176:40,63355:50,63376:50,63377:50,64996:50,68772:80,68773:80,68774:80,62454:85,62455:85,62456:85,62457:85,62458:85,62459:85,62460:85,62473:85,62474:85,62475:85,62476:85,62477:85,62478:85,62479:85,68739:85,68740:85,62463:125,62464:125,62465:125,62466:125,62467:125,62468:125,62469:125,62470:125,62471:125,62472:125,64998:165,64999:165,63039:200,65356:200,90897:200,90898:200",
	["CurrencyItems.Winterfin Clam"]="38350:1,38351:2,37449:5,37464:5,36783:30,37462:30,37463:30,37461:50,36784:100",

-- PROFESSIONS
--   Blacksmithing
	["CurrencyItems.Elementium Bar"]="66103:20,66105:20,66107:20,66109:20,66117:20,66118:20,66119:20,66125:20,66126:20,66127:20",
	["CurrencyItems.Hardened Elementium Bar"]="66104:2,66106:2,66108:2,66110:2,66111:2,66112:2,66113:2,66114:2,66115:2,66116:2,66120:2,66121:2,66128:2,66129:2,67603:2",
	["CurrencyItems.Pyrium Bar"]="66100:5,66101:5,66122:5,66123:5,66124:5,66130:5,66131:5,66132:5,67606:5",
	["CurrencyItems.Kyparite"]="83787:20,83788:20,83789:20,83790:20,83791:20,83792:20,84196:20,84197:20,84198:20,84217:20,84218:20,90531:20,90532:20",
--   Cooking
	["CurrencyItems.Epicurean's Award"]="43007:1,68689:1,65513:2,43018:3,43019:3,43020:3,43021:3,43022:3,43023:3,43024:3,43025:3,43026:3,43027:3,43028:3,43029:3,43030:3,43031:3,43032:3,43033:3,43034:3,43035:3,43036:3,43037:3,43505:3,43506:3,44954:3,65406:3,65407:3,65408:3,65409:3,65410:3,65411:3,65412:3,65413:3,65414:3,65415:3,65416:3,65417:3,65418:3,65419:3,65420:3,65421:3,65422:3,65423:3,65424:3,65425:3,65426:3,65427:3,65428:3,65429:3,65430:3,65431:3,68688:3,43017:5,65432:5,65433:5,134020:100",
	["CurrencyItems.Ironpaw Token"]="74661:1,74662:1,74853:1,87701:1,87702:1,87703:1,87704:1,87705:1,87706:1,87707:1,87708:1,87709:1,87710:1,87712:1,87713:1,87714:1,87715:1,87716:1,87721:1,87722:1,87723:1,87724:1,87725:1,87726:1,87727:1,87728:1,87729:1,87730:1,75013:10,75017:10,92748:10,88801:40,86425:50,86468:50,86558:50,86559:50",
--   Enchanting
	["CurrencyItems.Dream Shard"]="37340:4,37347:4,37349:4,44471:4,44472:4,44484:4,44485:4,44488:4,44489:4,44490:4,44491:4,44498:4,37339:10,37344:10,44473:10,44483:10,44486:10,44487:10,44492:10,44494:10,44495:10,44496:10,45059:10",
	["CurrencyItems.Abyss Crystal"]="44944:5",
	["CurrencyItems.Hypnotic Dust"]="67308:20,67312:20",
	["CurrencyItems.Heavenly Shard"]="52737:5,52738:5,52739:5,52740:5,64411:5,64412:5,64413:5,64414:5,64415:5",
	["CurrencyItems.Maelstrom Crystal"]="52733:5,52735:5,52736:5",
--   Jewelcrafting
	["CurrencyItems.Dalaran Jewelcrafter's Token"]="41559:1,41560:1,41563:1,41565:1,41566:1,41569:1,41570:1,41571:1,41572:1,41575:1,42225:1,42298:2,42301:2,42302:2,42305:2,42306:2,42307:2,42308:2,42309:2,42310:2,42311:2,42312:2,42313:2,42314:2,41576:3,41577:3,41578:3,41579:3,41580:3,41581:3,41582:3,41686:3,41687:3,41688:3,41690:3,41692:3,41693:3,41696:3,41697:3,41698:3,41702:3,41719:3,41747:3,42138:3,43317:4,43318:4,43319:4,43320:4,43485:4,43497:4,46897:4,46898:4,46899:4,46901:4,46902:4,46904:4,46905:4,46909:4,46911:4,46912:4,46913:4,46915:4,46916:4,46917:4,46918:4,46920:4,46922:4,46923:4,46924:4,46925:4,46926:4,46928:4,46929:4,46932:4,46933:4,46935:4,46937:4,46938:4,46941:4,46942:4,46943:4,46948:4,46949:4,46950:4,46951:4,46952:4,46953:4,46956:4,47007:4,47010:4,47015:4,47017:4,47018:4,47019:4,47020:4,47021:4,47022:4,49112:4,41704:5,41705:5,41706:5,41707:5,41708:5,41709:5,41710:5,41711:5,42648:6,42649:6,42650:6,42651:6,42652:6,42653:6,43597:6",
	["CurrencyItems.Illustrious Jewelcrafter's Token"]="52196:1,52381:2,52447:2,52448:2,52449:2,52450:2,52451:2,52452:2,52453:2,52454:2,52455:2,52456:2,52457:2,52458:2,52459:2,52362:3,52380:3,52384:3,52387:3,52389:3,52390:3,52391:3,52392:3,52393:3,52394:3,52395:3,52396:3,52397:3,52398:3,52399:3,52400:3,52401:3,52402:3,52403:3,52404:3,52405:3,52406:3,52407:3,52408:3,52409:3,52410:3,52411:3,52412:3,52413:3,52414:3,52415:3,52416:3,52417:3,52418:3,52419:3,52420:3,52421:3,52422:3,52423:3,52424:3,52425:3,52426:3,52427:3,52428:3,52429:3,52430:3,52431:3,52432:3,68359:3,68360:3,68361:3,68742:3,52433:4,52434:4,52435:4,52436:4,52437:4,52438:4,52439:4,52440:4,52441:4,52442:4,52443:4,52444:4,52445:4,71949:4,52460:5,52461:5,52462:5,52463:5,52464:5,52465:5,52466:5,52467:5,69853:5,71821:5,71884:5,71885:5,71886:5,71887:5,71888:5,71889:5,71890:5,71891:5,71892:5,71893:5,71894:5,71895:5,71896:5,71897:5,71898:5,71899:5,71900:5,71901:5,71902:5,71903:5,71904:5,71905:5,71906:5,71907:5,71908:5,71909:5,71910:5,71911:5,71912:5,71913:5,71914:5,71915:5,71916:5,71917:5,71918:5,71919:5,71920:5,71921:5,71922:5,71923:5,71924:5,71925:5,71926:5,71927:5,71928:5,71929:5,71930:5,71931:5,71932:5,71933:5,71934:5,71935:5,71936:5,71937:5,71938:5,71939:5,71940:5,71941:5,71942:5,71943:5,71944:5,71945:5,71946:5,71947:5,71948:5",
--   Leatherworking
	["CurrencyItems.Heavy Borean Leather"]="44513:3,44514:3,44515:3,44516:3,44517:3,44518:3,44519:3,44520:3,44521:3,44522:3,44523:3,44524:3,44525:3,44526:3,44527:3,44528:3,44530:3,44531:3,44532:3,44533:3,44534:3,44535:3,44536:3,44537:3,44538:3,44539:3,44540:3,44541:3,44542:3,44543:3,44544:3,44545:3,44584:3,44585:3,44586:3,44587:3,44588:3,44589:3,44128:10",
	["CurrencyItems.Arctic Fur"]="44546:2,44547:2,44548:2,44549:2,44550:2,44551:2,44552:2,44553:2,44932:2,44933:2",
	["CurrencyItems.Heavy Savage Leather"]="52980:10,67042:10,67044:10,67046:10,67048:10,67049:10,67053:10,67054:10,67055:10,67056:10,67058:10,67060:10,67062:10,67063:10,67064:10,67065:10,67066:10,67068:10,67070:10,67072:10,67073:10,67074:10,67075:10,67076:10,67077:10,67078:10,67079:10,67080:10,67081:10,67082:10,67083:10,67084:10,67085:10,67086:10,67087:10,67089:10,67090:10,67091:10,67092:10,67093:10,67094:10,67095:10,67096:10,67100:10,68193:10,71721:10",
--   Tailoring
	["CurrencyItems.Bolt of Embersilk Cloth"]="54593:8,54594:8,54595:8,54596:8,54597:8,54598:8,54599:8,54600:8,68199:8",
	["CurrencyItems.Dreamcloth"]="54601:1,54602:1,54603:1,54604:1,54605:1",

-- SEASONAL
	["CurrencyItems.Brewfest Prize Token"]="37750:2,90426:2,39476:5,39477:5,37816:20,33864:50,33967:50,33968:50,33969:50,119209:50,33047:100,33868:100,33927:100,33966:100,34008:100,46707:100,90427:100,116758:100,138900:100,32233:200,33862:200,33863:200,37571:200,37599:200,71137:200,116756:200,116757:200,138730:200,122339:300,122341:500,151615:500",
	["CurrencyItems.Burning Blossom"]="23246:2,34684:2,23211:5,23215:5,23326:5,23327:5,23435:5,34599:5,23324:100,34685:100,34683:200,23083:350,34686:350,74278:350,116435:350,116439:350,122338:350,141714:350,116440:500,141649:500,122340:600,151614:600",
	["CurrencyItems.Coin of Ancestry"]="21537:1,116172:1,21157:5,21538:5,21539:5,21541:5,21543:5,21544:5,21640:5,21740:5,21741:5,21742:5,21743:5,44916:5,44917:5,44918:5,44919:5,116142:5,116144:5,116146:5,143828:10,89999:25,90000:25,143827:25,143829:25,151352:25,151353:25,151354:25,151355:25,122338:40,74610:50,74611:50,122340:75,151614:75",
	["CurrencyItems.Darkmoon Prize Ticket"]="5740:1,9312:1,9313:1,9314:1,9315:1,9317:1,9318:1,19291:1,19292:1,19293:1,19295:1,77158:1,92956:1,92958:1,92959:1,92966:1,92967:1,92968:1,92969:1,92970:1,124642:1,124645:1,124646:1,124647:1,124649:1,124650:1,124651:1,124652:1,124653:1,124654:1,124656:1,124657:1,124658:1,124659:1,137745:5,74142:10,93730:10,77256:20,137746:35,97994:50,122350:50,122351:50,122354:50,122355:50,122356:50,122357:50,122358:50,122359:50,122360:50,122379:50,122380:50,122381:50,122382:50,122383:50,122384:50,122385:50,122387:50,122388:50,122389:50,122390:50,122391:50,122392:50,137790:50,78186:55,78187:55,78192:55,78193:55,78196:55,78197:55,78202:55,78203:55,78207:55,78208:55,78210:55,78211:55,78215:55,78217:55,78218:55,78219:55,78222:55,78223:55,78224:55,78229:55,78232:55,78233:55,78235:55,78236:55,78240:55,78241:55,78243:55,78244:55,78246:55,78248:55,78251:55,78253:55,78255:55,78256:55,78257:55,78259:55,78262:55,78264:55,78265:55,78266:55,78271:55,78272:55,78274:55,78277:55,78278:55,78279:55,78283:55,78285:55,78289:55,78291:55,78292:55,78293:55,78295:55,78296:55,78297:55,78298:55,78302:55,78303:55,78304:55,78309:55,78310:55,78311:55,78314:55,78317:55,78318:55,78319:55,78320:55,78321:55,78326:55,78327:55,78329:55,78333:55,116134:55,122361:70,122362:70,78188:75,78189:75,78190:75,78191:75,78198:75,78199:75,78200:75,78201:75,78204:75,78205:75,78206:75,78209:75,78212:75,78213:75,78214:75,78216:75,78225:75,78226:75,78227:75,78228:75,78230:75,78231:75,78234:75,78237:75,78238:75,78239:75,78242:75,78245:75,78247:75,78249:75,78250:75,78252:75,78254:75,78258:75,78260:75,78261:75,78263:75,78267:75,78268:75,78269:75,78270:75,78273:75,78275:75,78276:75,78280:75,78281:75,78282:75,78284:75,78286:75,78287:75,78288:75,78290:75,78294:75,78299:75,78300:75,78301:75,78305:75,78306:75,78307:75,78308:75,78312:75,78313:75,78315:75,78316:75,78322:75,78323:75,78324:75,78325:75,78328:75,78330:75,78331:75,78332:75,78341:75,116052:75,116133:75,116136:75,116137:75,122349:75,122352:75,122353:75,122363:75,122386:75,73762:90,73764:90,73765:90,73903:90,73905:90,74981:90,78340:90,90899:90,91003:90,116139:90,122238:90,122338:100,122339:120,116138:130,138202:150,72140:180,73766:180,137791:250,153485:1000",
	["CurrencyItems.Noblegarden Chocolate"]="44818:5,44792:10,6833:25,6835:25,19028:50,44800:50,44803:50,45073:50,74282:50,74283:50,44793:100,44794:100,116258:100,141532:200,72145:500",
})
