new mode_name[] = "Protect the Prime Minister 7.4";


#include <a_samp>

#include <file>


//ID(d) { return d; }
//#define CHKR(%1[%2]) ( ID(%2)>=0 && ID(%2)<sizeof %1 ? %1[%2] : (printf("%d out of bounds of %1[%d]",%2,sizeof %1), %1[%2]) )
//#define CHKW(%1[%2]=%3) ( ID(%2)>=0 && ID(%2)<sizeof %1 ? (%1[%2]=%3) : (printf("%d out of bounds of %1[%d]",%2,sizeof %1), %1[%2]=%3) )


#define COLOUR_PERSONAL  0x8080FFAA
#define COLOUR_IMPORTANT 0xFF0000AA
#define COLOUR_GLOBAL    0xD0D0FFAA
#define COLOUR_BROADCAST 0x0066CCAA

#define COLOUR_QUERY 0xFFDC18AA


#define GAME_TEXT_STYLE_BIG 6
#define GAME_TEXT_STYLE_SMALL 4


//#define PICKUP_BRASS_KNUCKLES 331
#define PICKUP_GOLFCLUB 333
#define PICKUP_NITESTICK 334
#define PICKUP_KNIFE 335
#define PICKUP_BAT 336
#define PICKUP_SHOVEL 337
#define PICKUP_POOLSTICK 338
//#define PICKUP_KATANA 338
#define PICKUP_CHAINSAW 341
#define PICKUP_DILDO 321
#define PICKUP_DILDO2 322
#define PICKUP_VIBRATOR1 323
#define PICKUP_VIBRATOR2 324
#define PICKUP_FLOWER 325
#define PICKUP_CANE 326
//#define PICKUP_GRENADE 342
//#define PICKUP_TEARGAS 343
//#define PICKUP_MOLTOV 344
//#define PICKUP_MISSILE 345
#define PICKUP_COLT45 346
#define PICKUP_SILENCED 347
#define PICKUP_DEAGLE 348
#define PICKUP_SHOTGUN 349
#define PICKUP_SAWEDOFF 350
#define PICKUP_SHOTGSPA 351
#define PICKUP_UZI 352
#define PICKUP_MP5 353
//#define PICKUP_HYDRAFLARE 354
#define PICKUP_AK47 355
#define PICKUP_TEC9 372
//#define PICKUP_RIFLE 357
//#define PICKUP_SNIPER 358
//#define PICKUP_ROCKETLAUNCHER 359
//#define PICKUP_HEATSEEKER 360
#define PICKUP_FLAMETHROWER 361
#define PICKUP_MINIGUN 362
//#define PICKUP_SACHEL 363
//#define PICKUP_BOMB 364  // actually the detonator
#define PICKUP_SPRAYCAN 365
#define PICKUP_FIREEXTINGUISHER 366
//#define PICKUP_CAMERA 367
//#define PICKUP_NIGHTVISION_GOGGLES 368
//#define PICKUP_THERMAL_GOGGLES 369

#define PICKUP_PARACHUTE 371
#define PICKUP_ARMOR 1242
#define PICKUP_JETPACK 370

#define SOUND_PICKUP_STANDARD 1150






// every vehicle in SA


#define V_ADMIRAL 445
#define V_ALPHA 602
#define V_AMBULAN 416
#define V_ANDROM 592            // air
#define V_ARTICT1 435
#define V_ARTICT2 450
#define V_ARTICT3 591
#define V_AT400 577             // air
#define V_BAGBOXA 606
#define V_BAGBOXB 607
#define V_BAGGAGE 485
#define V_BANDITO 568
#define V_BANSHEE 429
#define V_BARRACKS 433
#define V_BEAGLE 511            // air
#define V_BENSON 499
#define V_BF400 581             // bike
#define V_BFINJECT 424
#define V_BIKE 509              // bike
#define V_BLADE 536
#define V_BLISTAC 496
#define V_BLOODRA 504
#define V_BMX 481               // bike
#define V_BOBCAT 422
#define V_BOXBURG 609
#define V_BOXVILLE 498
#define V_BRAVURA 401
#define V_BROADWAY 575
#define V_BUCCANEE 518
#define V_BUFFALO 402
#define V_BULLET 541
#define V_BURRITO 482
#define V_BUS 431
#define V_CABBIE 438
#define V_CADDY 457
#define V_CADRONA 527
#define V_CAMPER 483
#define V_CARGOBOB 548          // air
#define V_CEMENT 524
#define V_CHEETAH 415
#define V_CLOVER 542
#define V_CLUB 589
#define V_COACH 437
#define V_COASTG 472            // water
#define V_COMBINE 532
#define V_COMET 480
#define V_COPBIKE 523           // bike
#define V_COPCARLA 596
#define V_COPCARRU 599
#define V_COPCARSF 597
#define V_COPCARVG 598
#define V_CROPDUST 512          // air
#define V_DFT30 578
#define V_DINGHY 473            // water
#define V_DODO 593              // air
#define V_DOZER 486
#define V_DUMPER 406
#define V_DUNERIDE 573
#define V_ELEGANT 507
#define V_ELEGY 562
#define V_EMPEROR 585
#define V_ENFORCER 427
#define V_ESPERANT 419
#define V_EUROS 587
#define V_FAGGIO 462
#define V_FARMTR1 610
#define V_FBIRANCH 490
#define V_FBITRUCK 528
#define V_FCR900 521            // bike
#define V_FELTZER 533
#define V_FIRELA 544
#define V_FIRETRUK 407
#define V_FLASH 565
#define V_FLATBED 455
#define V_FORKLIFT 530
#define V_FORTUNE 526
#define V_FREEWAY 463           // bike
#define V_FREIBOX 590
#define V_FREIFLAT 569
#define V_FREIGHT 537
#define V_GLENDALE 466
#define V_GLENSHIT 604
#define V_GREENWOO 492
#define V_HERMES 474
#define V_HOTDOG 588
#define V_HOTKNIFE 434
#define V_HOTRINA 502
#define V_HOTRINB 503
#define V_HOTRING 494
#define V_HUNTER 425            // air
#define V_HUNTLEY 579
#define V_HUSTLER 545
#define V_HYDRA 520             // air
#define V_INFERNUS 411
#define V_INTRUDER 546
#define V_JESTER 559
#define V_JETMAX 493            // water
#define V_JOURNEY 508
#define V_KART 571
#define V_LANDSTAL 400
#define V_LAUNCH 595            // water
#define V_LEVIATHN 417          // air
#define V_LINERUN 403
#define V_MAJESTIC 517
#define V_MANANA 410
#define V_MARQUIS 484           // water
#define V_MAVERICK 487          // air
#define V_MERIT 551
#define V_MESA 500
#define V_MONSTER 444
#define V_MONSTERA 556
#define V_MONSTERB 557
#define V_MOONBEAM 418
#define V_MOWER 572
#define V_MRWHOOP 423
#define V_MTBIKE 510            // bike
#define V_MULE 414
#define V_NEBULA 516
#define V_NEVADA 553            // air
#define V_NEWSVAN 582
#define V_NRG500 522            // bike
#define V_OCEANIC 467
#define V_PACKER 443
#define V_PATRIOT 470
#define V_PCJ600 461            // bike
#define V_PEREN 404
#define V_PETRO 514
#define V_PETROTR 584
#define V_PHOENIX 603
#define V_PICADOR 600
#define V_PIZZABOY 448
#define V_POLMAV 497            // air
#define V_PONY 413
#define V_PREDATOR 430          // water
#define V_PREMIER 426
#define V_PREVION 436
#define V_PRIMO 547
#define V_QUAD 471              // bike
#define V_RAINDANC 563          // air
#define V_RANCHER 489
#define V_RCBANDIT 441
#define V_RCBARON 464           // air
#define V_RCCAM 594
#define V_RCGOBLIN 501          // air
#define V_RCRAIDER 465          // air
#define V_RCTIGER 564
#define V_RDTRAIN 515
#define V_REEFER 453            // water
#define V_REGINA 479
#define V_REMINGTN 534
#define V_RHINO 432
#define V_RNCHLURE 505
#define V_ROMERO 442
#define V_RUMPO 440
#define V_RUSTLER 476           // air
#define V_SABRE 475
#define V_SADLER 543
#define V_SADLSHIT 605
#define V_SANCHEZ 468           // bike
#define V_SANDKING 495
#define V_SAVANNA 567
#define V_SEASPAR 447           // air
#define V_SECURICA 428
#define V_SENTINEL 405
#define V_SHAMAL 519            // air
#define V_SKIMMER 460           // air
#define V_SLAMVAN 535
#define V_SOLAIR 458
#define V_SPARROW 469           // air
#define V_SPEEDER 452           // water
#define V_SQUALO 446            // water
#define V_STAFFORD 580
#define V_STALLION 439
#define V_STRATUM 561
#define V_STREAK 538
#define V_STREAKC 570
#define V_STRETCH 409
#define V_STUNT 513             // air
#define V_SULTAN 560
#define V_SUNRISE 550
#define V_SUPERGT 506
#define V_SWATVAN 601
#define V_SWEEPER 574
#define V_TAHOMA 566
#define V_TAMPA 549
#define V_TAXI 420
#define V_TOPFUN 459
#define V_TORNADO 576
#define V_TOWTRUCK 525
#define V_TRACTOR 531
#define V_TRAM 449
#define V_TRASH 408
#define V_TROPIC 454
#define V_TUG 583
#define V_TUGSTAIR 608
#define V_TURISMO 451
#define V_URANUS 558
#define V_UTILITY 552
#define V_UTILTR1 611
#define V_VCNMAV 488            // air
#define V_VINCENT 540
#define V_VIRGO 491
#define V_VOODOO 412
#define V_VORTEX 539            // hovercraft
#define V_WALTON 478
#define V_WASHING 421
#define V_WAYFARER 586          // bike
#define V_WILLARD 529
#define V_WINDSOR 555
#define V_YANKEE 456
#define V_YOSEMITE 554
#define V_ZR350 477




#define NUM_V_MODELIDS 212
// maximum velocities from standard handling.cfg
// for CHEETAH (415) use vehicle_velocity[15];
new Float:vehicle_velocity[NUM_V_MODELIDS] = {
    160.0, // landstal (400)
    160.0, // bravura (401)
    200.0, // buffalo (402)
    120.0, // linerun (403)
    150.0, // peren (404)
    165.0, // sentinel (405)
    110.0, // dumper (406)
    170.0, // firetruk (407)
    110.0, // trash (408)
    180.0, // stretch (409)
    160.0, // manana (410)
    240.0, // infernus (411)
    160.0, // voodoo (412)
    160.0, // pony (413)
    140.0, // mule (414)
    230.0, // cheetah (415)
    155.0, // ambulan (416)
    200.0, // leviathn (417)
    150.0, // moonbeam (418)
    160.0, // esperant (419)
    180.0, // taxi (420)
    180.0, // washing (421)
    165.0, // bobcat (422)
    145.0, // mrwhoop (423)
    170.0, // bfinject (424)
    200.0, // hunter (425)
    200.0, // premier (426)
    170.0, // enforcer (427)
    170.0, // securica (428)
    200.0, // banshee (429)
    190.0, // predator (430)
    130.0, // bus (431)
    80.0,  // rhino (432)
    180.0, // barracks (433)
    200.0, // hotknife (434)
    120.0, // artict1 (435)
    160.0, // previon (436)
    160.0, // coach (437)
    160.0, // cabbie (438)
    160.0, // stallion (439)
    160.0, // rumpo (440)
    75.0,  // rcbandit (441)
    150.0, // romero (442)
    150.0, // packer (443)
    110.0, // monster (444)
    165.0, // admiral (445)
    280.0, // squalo (446)      // WAS 190
    200.0, // seaspar (447)
    190.0, // pizzaboy (448)
    150.0, // tram (449)
    120.0, // artict2 (450)
    240.0, // turismo (451)
    190.0, // speeder (452)
    190.0, // reefer (453)
    190.0, // tropic (454)
    140.0, // flatbed (455)
    160.0, // yankee (456)
    160.0, // caddy (457)
    165.0, // solair (458)
    160.0, // topfun (459)
    200.0, // skimmer (460)
    190.0, // pcj600 (461)
    190.0, // faggio (462)
    190.0, // freeway (463)
    75.0,  // rcbaron (464)
    75.0,  // rcraider (465)
    160.0, // glendale (466)
    160.0, // oceanic (467)
    190.0, // sanchez (468)
    200.0, // sparrow (469)
    170.0, // patriot (470)
    160.0, // QUAD (471)
    190.0, // coastg (472)
    190.0, // dinghy (473)
    160.0, // hermes (474)
    160.0, // sabre (475)
    330.0, // rustler (476)     (was 200)
    200.0, // zr350 (477)
    150.0, // walton (478)
    165.0, // regina (479)
    200.0, // comet (480)
    120.0, // bmx (481)
    150.0, // burrito (482)
    120.0, // camper (483)
    190.0, // marquis (484)
    160.0, // baggage (485)
    100.0, // dozer (486)
    200.0, // maverick (487)
    200.0, // vcnmav (488)
    170.0, // rancher (489)
    170.0, // fbiranch (490)
    160.0, // virgo (491)
    160.0, // greenwoo (492)
    190.0, // jetmax (493)
    220.0, // hotring (494)
    170.0, // sandking (495)
    200.0, // blistac (496)
    200.0, // polmav (497)
    140.0, // boxville (498)
    140.0, // benson (499)
    160.0, // mesa (500)
    75.0,  // rcgoblin (501)
    220.0, // hotrina (502)
    220.0, // hotrinb (503)
    160.0, // bloodra (504)
    170.0, // rnchlure (505)
    230.0, // supergt (506)
    165.0, // elegant (507)
    140.0, // journey (508)
    120.0, // bike (509)
    140.0, // mtbike (510)
    200.0, // beagle (511)
    200.0, // cropdust (512)
    200.0, // stunt (513)
    120.0, // petro (514)
    120.0, // rdtrain (515)
    165.0, // nebula (516)
    165.0, // majestic (517)
    160.0, // buccanee (518)
    330.0, // shamal (519)     (WAS 200)
    330.0, // hydra (520)      (WAS 200)
    190.0, // fcr900 (521)
    190.0, // nrg500 (522)
    190.0, // copbike (523)
    110.0, // cement (524)
    160.0, // towtruck (525)
    160.0, // fortune (526)
    160.0, // cadrona (527)
    170.0, // fbitruck (528)
    160.0, // willard (529)
    60.0,  // forklift (530)
    70.0,  // tractor (531)
    140.0, // combine (532)
    200.0, // feltzer (533)
    160.0, // remingtn (534)
    160.0, // slamvan (535)
    160.0, // blade (536)
    110.0, // freight (537)
    110.0, // streak (538)
    150.0, // vortex (539)
    160.0, // vincent (540)
    230.0, // bullet (541)
    160.0, // clover (542)
    165.0, // sadler (543)
    170.0, // firela (544)
    160.0, // hustler (545)
    160.0, // intruder (546)
    160.0, // primo (547)
    200.0, // cargobob (548)
    160.0, // tampa (549)
    160.0, // sunrise (550)
    165.0, // merit (551)
    160.0, // utility (552)
    200.0, // nevada (553)
    170.0, // yosemite (554)
    180.0, // windsor (555)
    110.0, // monstera (556)
    110.0, // monsterb (557)
    200.0, // uranus (558)
    200.0, // jester (559)
    200.0, // sultan (560)
    200.0, // stratum (561)
    200.0, // elegy (562)
    200.0, // raindanc (563)
    75.0,  // rctiger (564)
    200.0, // flash (565)
    160.0, // tahoma (566)
    160.0, // savanna (567)
    170.0, // bandito (568)
    110.0, // freiflat (569)
    110.0, // streakc (570)
    90.0,  // kart (571)
    60.0,  // mower (572)
    110.0, // duneride (573)
    60.0,  // sweeper (574)
    160.0, // broadway (575)
    160.0, // tornado (576)
    200.0, // at400 (577)
    110.0, // dft30 (578)
    160.0, // huntley (579)
    165.0, // stafford (580)
    190.0, // bf400 (581)
    160.0, // newsvan (582)
    170.0, // tug (583)
    120.0, // petrotr (584)
    165.0, // emperor (585)
    190.0, // wayfarer (586)
    200.0, // euros (587)
    140.0, // hotdog (588)
    200.0, // club (589)
    110.0, // freibox (590)
    120.0, // artict3 (591)
    200.0, // androm (592)
    200.0, // dodo (593)
    60.0,  // rccam (594)
    190.0, // launch (595)
    200.0, // copcarla (596)
    200.0, // copcarsf (597)
    200.0, // copcarvg (598)
    160.0, // copcarru (599)
    165.0, // picador (600)
    110.0, // swatvan (601)
    200.0, // alpha (602)
    200.0, // phoenix (603)
    160.0, // glenshit (604)
    165.0, // sadlshit (605)
    160.0, // bagboxa (606)
    160.0, // bagboxb (607)
    160.0, // tugstair (608)
    140.0, // boxburg (609)
    160.0, // farmtr1 (610)
    160.0 // utiltr1 (611)
};



// names from vehicles.ide, matches up with the #defines
new vehicle_name[NUM_V_MODELIDS][9] = {
    "landstal",
    "bravura",
    "buffalo",
    "linerun",
    "peren",
    "sentinel",
    "dumper",
    "firetruk",
    "trash",
    "stretch",
    "manana",
    "infernus",
    "voodoo",
    "pony",
    "mule",
    "cheetah",
    "ambulan",
    "leviathn",
    "moonbeam",
    "esperant",
    "taxi",
    "washing",
    "bobcat",
    "mrwhoop",
    "bfinject",
    "hunter",
    "premier",
    "enforcer",
    "securica",
    "banshee",
    "predator",
    "bus",
    "rhino",
    "barracks",
    "hotknife",
    "artict1",
    "previon",
    "coach",
    "cabbie",
    "stallion",
    "rumpo",
    "rcbandit",
    "romero",
    "packer",
    "monster",
    "admiral",
    "squalo",
    "seaspar",
    "pizzaboy",
    "tram",
    "artict2",
    "turismo",
    "speeder",
    "reefer",
    "tropic",
    "flatbed",
    "yankee",
    "caddy",
    "solair",
    "topfun",
    "skimmer",
    "pcj600",
    "faggio",
    "freeway",
    "rcbaron",
    "rcraider",
    "glendale",
    "oceanic",
    "sanchez",
    "sparrow",
    "patriot",
    "QUAD",
    "coastg",
    "dinghy",
    "hermes",
    "sabre",
    "rustler",
    "zr350",
    "walton",
    "regina",
    "comet",
    "bmx",
    "burrito",
    "camper",
    "marquis",
    "baggage",
    "dozer",
    "maverick",
    "vcnmav",
    "rancher",
    "fbiranch",
    "virgo",
    "greenwoo",
    "jetmax",
    "hotring",
    "sandking",
    "blistac",
    "polmav",
    "boxville",
    "benson",
    "mesa",
    "rcgoblin",
    "hotrina",
    "hotrinb",
    "bloodra",
    "rnchlure",
    "supergt",
    "elegant",
    "journey",
    "bike",
    "mtbike",
    "beagle",
    "cropdust",
    "stunt",
    "petro",
    "rdtrain",
    "nebula",
    "majestic",
    "buccanee",
    "shamal",
    "hydra",
    "fcr900",
    "nrg500",
    "copbike",
    "cement",
    "towtruck",
    "fortune",
    "cadrona",
    "fbitruck",
    "willard",
    "forklift",
    "tractor",
    "combine",
    "feltzer",
    "remingtn",
    "slamvan",
    "blade",
    "freight",
    "streak",
    "vortex",
    "vincent",
    "bullet",
    "clover",
    "sadler",
    "firela",
    "hustler",
    "intruder",
    "primo",
    "cargobob",
    "tampa",
    "sunrise",
    "merit",
    "utility",
    "nevada",
    "yosemite",
    "windsor",
    "monstera",
    "monsterb",
    "uranus",
    "jester",
    "sultan",
    "stratum",
    "elegy",
    "raindanc",
    "rctiger",
    "flash",
    "tahoma",
    "savanna",
    "bandito",
    "freiflat",
    "streakc",
    "kart",
    "mower",
    "duneride",
    "sweeper",
    "broadway",
    "tornado",
    "at400",
    "dft30",
    "huntley",
    "stafford",
    "bf400",
    "newsvan",
    "tug",
    "petrotr",
    "emperor",
    "wayfarer",
    "euros",
    "hotdog",
    "club",
    "freibox",
    "artict3",
    "androm",
    "dodo",
    "rccam",
    "launch",
    "copcarla",
    "copcarsf",
    "copcarvg",
    "copcarru",
    "picador",
    "swatvan",
    "alpha",
    "phoenix",
    "glenshit",
    "sadlshit",
    "bagboxa",
    "bagboxb",
    "tugstair",
    "boxburg",
    "farmtr1",
    "utiltr1"
};







#define POCKET_MONEY 500


// don't forget to change these
#define NUM_PSYCHOS 4
#define NUM_TERRORISTS 8
#define NUM_BODYGUARDS 6
#define NUM_COPS 10
#define NUM_CLASSES (NUM_PSYCHOS+NUM_TERRORISTS+1+NUM_BODYGUARDS+NUM_COPS)

new class_psycho1;
new class_psycho2;
new class_psycho3;
new class_psycho4;

new class_terrorist1;
new class_terrorist2;
new class_terrorist3;
new class_terrorist4;
new class_terrorist5;
new class_terrorist6;
new class_terrorist7;
new class_terrorist_medic;

new class_primeminister;
new class_bodyguard1;
new class_bodyguard2;
new class_bodyguard3;
new class_bodyguard4;
new class_bodyguard5;
new class_bodyguard_medic;

new class_cop1;
new class_cop2;
new class_cop3;
new class_cop4;
new class_cop5;
new class_cop6;
new class_cop7;
new class_cop8;
new class_cop9;
new class_cop_medic;

#define INVALID_CLASS (-1)

#define TEAM_PSYCHO 0
#define TEAM_TERRORIST 1
#define TEAM_PRIMEMINISTER 2
#define TEAM_BODYGUARD 3
#define TEAM_COP 4
#define NUM_TEAMS 5

#define NUM_SPAWNS 512
#define NUM_PICKUPS 1024
#define NUM_OBJS 256

new class_team[NUM_CLASSES];


/* THESE DO NOT CHANGE AS THE GAME PROGRESSES */

new Float:game_boundary_max_x =  10000.0;
new Float:game_boundary_min_x = -10000.0;
new Float:game_boundary_max_y =  10000.0;
new Float:game_boundary_min_y = -10000.0;

new Float:intel_north;
new Float:intel_south;
new Float:intel_east;
new Float:intel_west;

new safehouse_exists = 0;

new Float:safehouse_x;
new Float:safehouse_y;
new Float:safehouse_z;

new safehouse_exclusion;  // radius of hydra exclusion sphere

new intel_feature[256] = "the map";

new wardrobe_interior = 14;
new Float:wardrobe_player_x = 258.4893;
new Float:wardrobe_player_y = -41.4008;
new Float:wardrobe_player_z = 1002.0234;
new Float:wardrobe_player_orientation = 270.0;
new Float:wardrobe_camera_x = 256.0815;
new Float:wardrobe_camera_y = -43.0475;
new Float:wardrobe_camera_z = 1004.0234;

new cant_drive_vehicle[NUM_TEAMS][MAX_VEHICLES];

new cant_passenger_vehicle[NUM_TEAMS][MAX_VEHICLES];

new banned_cuboid = 0;
new Float:banned_cuboid_max_x;
new Float:banned_cuboid_min_x;
new Float:banned_cuboid_max_y;
new Float:banned_cuboid_min_y;
new Float:banned_cuboid_max_z;
new Float:banned_cuboid_min_z;
new Float:banned_cuboid_tele_x;
new Float:banned_cuboid_tele_y;
new Float:banned_cuboid_tele_z;
new Float:banned_cuboid_tele_a;
new banned_cuboid_message[256] = "~w~Not allowed there.";


/* PLAYER DATABASE */

new player_class[MAX_PLAYERS];
new player_class_requested[MAX_PLAYERS];

new player_watching[MAX_PLAYERS];

new player_pos_faked[MAX_PLAYERS];
new Float:player_old_x[MAX_PLAYERS];
new Float:player_old_y[MAX_PLAYERS];
new Float:player_old_z[MAX_PLAYERS];
new Float:player_pos_faked_distance[MAX_PLAYERS];

new player_teamkills[MAX_PLAYERS];
new player_teamkill_freeze_counter[MAX_PLAYERS];

new player_vehicle_passenger[MAX_PLAYERS];
new player_vehicle_driver[MAX_PLAYERS];

new player_op[MAX_PLAYERS];

new player_legal_minigun[MAX_PLAYERS];

new player_map[MAX_PLAYERS];

new player_pickup_when[MAX_PLAYERS][NUM_PICKUPS];
new player_pickup_squatting[MAX_PLAYERS];

new player_speed_watch[MAX_PLAYERS];

new player_last_speed_warning[MAX_PLAYERS];

new pm_radar_time = 0;


#define NUM_PLOTS 20
new Float:player_plot_x[MAX_PLAYERS][NUM_PLOTS];
new Float:player_plot_y[MAX_PLAYERS][NUM_PLOTS];
new Float:player_plot_z[MAX_PLAYERS][NUM_PLOTS];

new player_muted[MAX_PLAYERS];
new player_vote_muted[MAX_PLAYERS];

new player_query_target[MAX_PLAYERS];



new pickup_unauthorised[NUM_TEAMS][NUM_PICKUPS];





#define INVALID_MAP (-1)

/* PM INTEL STUFF */

new pm_old_location = -1;
new ticks_since_loc_update = 100;
new terrorists_in_airport = 0;





new round_timer;  // 1 second, does president health boost
new round_timer_counter;  // counts up to round_time then the round ends
new round_time = 15*60; // in seconds


new regular_task_timer; // 100ms, checks for things like players in the wrong cars
new regular_task_counter;

new obj_completed = 0;
new obj_time_left;
new obj_current;
new obj_required = 1;
new obj_was_in = 0;

new pm_initially_imprisoned = 0;
new Float:pm_prison_west;
new Float:pm_prison_east;
new Float:pm_prison_north;
new Float:pm_prison_south;
new pm_fresh; // 1 between spawn and entering first vehicle
new pm_can_drown = 0;
new pm_abandoned_health_penalty = 0;
new pm_health_bonus = 0;

new vote_timer;
new vote_victim = INVALID_PLAYER_ID;
new vote_initiator = INVALID_PLAYER_ID;
new vote_reason[256];
new votes_left = 0;
new player_already_voted[MAX_PLAYERS];



strvalfixed(str[])
{
	if (strlen(str)>=50) {
	    printf("Unfortunately, the SA:MP developers are completely incompetent strval(\"%s\")",str);
	    return 0;
	}
	return strval(str);
}



public Float:DistanceFromPlayerToPlayer(id1, id2) {

	new Float:px, Float:py, Float:pz;
	GetPlayerPos(id1,px,py,pz);

	new Float:mx, Float:my, Float:mz;
	GetPlayerPos(id2,mx,my,mz);

    return floatsqroot(floatpower(px-mx,2)+floatpower(py-my,2)+floatpower(pz-mz,2));
}


Float:atan(Float:y) {
	for (new Float:a = 0 ; a<=90 ; a++)
		if (floattan(a,degrees)>=y) return a;
	return 90.0;
}

main()
{
}


CarCol() {
	return random(126);
}


new pickup_counter = 0;
new pickup_id[NUM_PICKUPS];
new pickup_weaponid[NUM_PICKUPS];
new pickup_ammo[NUM_PICKUPS];
new Float: pickup_x[NUM_PICKUPS];
new Float: pickup_y[NUM_PICKUPS];
new Float: pickup_z[NUM_PICKUPS];
new pickup_respawn_time[NUM_PICKUPS];
new pickup_synced[NUM_PICKUPS];
new pickup_last_used_by[NUM_PICKUPS];

#define WP_NO_RESPAWN 0

#define WP_UNSYNCED 0
#define WP_SYNCED 1

AddWeaponPickup(pickupid, weaponid, ammo, Float:x, Float:y, Float:z, respawn_time=30, synced=WP_UNSYNCED)
{
	if (pickup_counter>=NUM_PICKUPS) {
		printf("Too many weapon pickups, pickup ignored %d,%d,%d,%f,%f,%f!",pickupid,weaponid,ammo,x,y,z);
		return 0;
	}
	pickup_id[pickup_counter] = pickupid;
	pickup_weaponid[pickup_counter] = weaponid;
	pickup_ammo[pickup_counter] = ammo;
	pickup_x[pickup_counter] = x;
	pickup_y[pickup_counter] = y;
	pickup_z[pickup_counter] = z;
	pickup_respawn_time[pickup_counter] = respawn_time;
	pickup_synced[pickup_counter] = synced;
	pickup_last_used_by[pickup_counter] = INVALID_PLAYER_ID;
	new pickuptype = 1; //respawn_time ? 1 : 19;
	// unfortunately pickuptype 19 doesnt respawn properly when you die, so we cant use it
	AddStaticPickup(pickupid, pickuptype, x, y, z);
	// return pickup_counter++ doesn't work -- suspect compiler bug
	new retval = pickup_counter++;
	return retval;
}


new vehicle_counter = 1;
new vehicle_modelid[MAX_VEHICLES];
new Float: vehicle_spawn_x[MAX_VEHICLES];
new Float: vehicle_spawn_y[MAX_VEHICLES];
new Float: vehicle_spawn_z[MAX_VEHICLES];
new Float: vehicle_z_angle[MAX_VEHICLES];
new vehicle_colour1[MAX_VEHICLES];
new vehicle_colour2[MAX_VEHICLES];
new vehicle_safehouse_excluded[MAX_VEHICLES];

AddStaticVehicle2(modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, color1, color2, safehouse_excluded = 0)
{
	if (vehicle_counter>MAX_VEHICLES) {
		printf("Too many vehicle spawns, ignoring vehicle %d,%f,%f,%f,%f,%d,%d!",modelid,spawn_x,spawn_y,spawn_z,z_angle,color1,color2);
		return 0;
	}
	vehicle_modelid[vehicle_counter] = modelid;
	vehicle_spawn_x[vehicle_counter] = spawn_x;
	vehicle_spawn_y[vehicle_counter] = spawn_y;
	vehicle_spawn_z[vehicle_counter] = spawn_z;
	vehicle_z_angle[vehicle_counter] = z_angle;
	vehicle_colour1[vehicle_counter] = color1;
	vehicle_colour2[vehicle_counter] = color2;
	vehicle_safehouse_excluded[vehicle_counter] = safehouse_excluded;
	AddStaticVehicle(modelid, spawn_x, spawn_y, spawn_z, z_angle, color1, color2);
	// return vehicle_counter++ doesn't work -- suspect compiler bug
	new retval = vehicle_counter++;
	return retval;
}


new obj_counter = 0;
new Float:obj_x[NUM_OBJS];
new Float:obj_y[NUM_OBJS];
new Float:obj_z[NUM_OBJS];
new Float:obj_size[NUM_OBJS];
new obj_time[NUM_OBJS];
new obj_desc[NUM_OBJS][256];

// objectives as invented by spark for LV
AddObjective(Float:x, Float:y, Float:z, desc[], Float:size, time = 30)
{
	if (obj_counter>=NUM_OBJS) {
		printf("Too many objectives!  Ignoring (%f,%f,%f) %f %d.",x,y,z,size,time);
		return 0;
	}
	obj_x[obj_counter] = x;
	obj_y[obj_counter] = y;
	obj_z[obj_counter] = z;
	obj_size[obj_counter] = size;
	obj_time[obj_counter] = time;
	//printf("Objective[%d] at (%f,%f,%f) (%f) %d",obj_counter,obj_x[obj_counter],obj_y[obj_counter],obj_z[obj_counter],obj_size[obj_counter],obj_time[obj_counter]);
	format(obj_desc[obj_counter],sizeof obj_desc[],"%s",desc);
	new retval = obj_counter++;
	return retval;
}

#define NUM_TASKS 10

#define TASK_BEER      0
#define TASK_SHIPPING  1
#define TASK_MOTEL     2
#define TASK_HIGHWAY   3
#define TASK_FARM      4
#define TASK_LAKE      5

new task_counter = 0;
new Float:task_x[NUM_TASKS];
new Float:task_y[NUM_TASKS];
new Float:task_z[NUM_TASKS];
new Float:task_size[NUM_TASKS];
new task_type[NUM_TASKS];
new task_time[NUM_TASKS];
// tasks as invented by r3mp for countryside
AddTask(Float:x, Float:y, Float:z, Float:size, type, time)
{
	if (task_counter>=NUM_TASKS) {
		printf("Too many tasks!  Ignoring (%f,%f,%f) %f %d %d.",x,y,z,size,type,time);
		return 0;
	}
	task_x[task_counter] = x;
	task_y[task_counter] = y;
	task_z[task_counter] = z;
	task_size[task_counter] = size;
	task_type[task_counter] = type;
	task_time[task_counter] = time;
	new retval = task_counter++;
	return retval;
}


new team_spawn_counter[NUM_TEAMS];
new Float:team_spawn_x[NUM_TEAMS][NUM_SPAWNS];
new Float:team_spawn_y[NUM_TEAMS][NUM_SPAWNS];
new Float:team_spawn_z[NUM_TEAMS][NUM_SPAWNS];
new Float:team_spawn_a[NUM_TEAMS][NUM_SPAWNS];
new team_spawn_interior[NUM_TEAMS][NUM_SPAWNS];

AddTeamSpawn(team, Float:x, Float:y, Float:z, Float:a, interior=0)
{
	if (team_spawn_counter[team]>=NUM_SPAWNS) {
		printf("Too many player spawns (team %d)!",team);
		return 0;
	}
	//printf("Spawn (team %d) at (%f,%f,%f) (%f)",team,x,y,z,a);
	team_spawn_x[team][team_spawn_counter[team]] = x;
	team_spawn_y[team][team_spawn_counter[team]] = y;
	team_spawn_z[team][team_spawn_counter[team]] = z;
	team_spawn_a[team][team_spawn_counter[team]] = a;
	team_spawn_interior[team][team_spawn_counter[team]] = interior;

	new retval = team_spawn_counter[team]++;
	return retval;
}

AddTeamLineSpawn(team, Float:x1, Float:y1, Float:z1, Float:x2, Float:y2, Float: z2, Float:separation = 1.0, interior=0)
{
	new Float:length = floatsqroot(floatpower(x2-x1,2)+floatpower(y2-y1,2)+floatpower(z2-z1,2));

	if (length<1.0) {
	    printf("AddTeamLineSpawn: This line is too short (%f,%f,%f) -> (%f,%f,%f)",x1,y1,z1,x2,y2,z2);
	    return;
	}

	new Float:xv = (x2-x1)/length;
	new Float:yv = (y2-y1)/length;
	new Float:zv = (z2-z1)/length;

	new Float: face_angle;
	new Float: grad = floatabs(yv/xv);

	if (xv>=0 && yv>=0) {
	    face_angle = 90-atan(grad);
	} else if (xv>=0 && yv<0) {
	    face_angle = 90+atan(grad);
	} else if (xv<0 && yv<0) {
	    face_angle = 270-atan(grad);
	} else if (xv<0 && yv>=0) {
	    face_angle = 270+atan(grad);
	}

	face_angle = face_angle + 90.0;
	if (face_angle >= 360.0) face_angle -= 360.0;

	for (new Float:i=0 ; i <= length ; i+=separation) {
	    AddTeamSpawn(team, x1+i*xv, y1+i*yv, z1+i*zv,360-face_angle, interior);
	}
}


new class_counter = 0;
new class_modelid[MAX_PLAYERS];
new class_weapon1[MAX_PLAYERS];
new class_weapon1_ammo[MAX_PLAYERS];
new class_weapon2[MAX_PLAYERS];
new class_weapon2_ammo[MAX_PLAYERS];
new class_weapon3[MAX_PLAYERS];
new class_weapon3_ammo[MAX_PLAYERS];
new class_initial_hp[MAX_PLAYERS];


AddPlayerClass2(modelid, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo, initial_hp = 100)
{
    class_modelid[class_counter] = modelid;
    class_weapon1[class_counter] = weapon1;
    class_weapon1_ammo[class_counter] = weapon1_ammo;
    class_weapon2[class_counter] = weapon2;
    class_weapon2_ammo[class_counter] = weapon2_ammo;
    class_weapon3[class_counter] = weapon3;
    class_weapon3_ammo[class_counter] = weapon3_ammo;
    class_initial_hp[class_counter] = initial_hp;
	AddPlayerClass(modelid, game_boundary_min_x+(game_boundary_max_x-game_boundary_min_x)/2,game_boundary_min_y+(game_boundary_max_y-game_boundary_min_y)/2,0,0, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	new retval = class_counter++;
	return retval;
}


#define NUM_MAPS 8

public PlayerMapVote(playerid, map[])
{
	if (streq(map,"ls")) {
		player_map[playerid] = 0;
	} else if (streq(map,"sf")) {
	    player_map[playerid] = 1;
	} else if (streq(map,"desert") || streq(map,"d")) {
	    player_map[playerid] = 2;
	} else if (streq(map,"area51") || streq(map,"a51")) {
	    player_map[playerid] = 3;
	} else if (streq(map,"lv")) {
	    player_map[playerid] = 4;
	} else if (streq(map,"air")) {
	    player_map[playerid] = 5;
	} else if (streq(map,"chiliad") || streq(map,"chilliad") || streq(map,"chill") || streq(map,"chil")) {
	    player_map[playerid] = 6;
	} else if (streq(map,"country") || streq(map,"cs")) {
	    player_map[playerid] = 7;
	} else
	    PlayerMapVoteHelp(playerid);

	PlayerMapVoteStatus(playerid);
}

public PlayerMapVoteHelp(playerid)
{
	SendClientMessage(playerid,COLOUR_PERSONAL,"Usage: /mapvote ls|sf|desert|a51|lv|air|chiliad|country");
}


public PlayerMapVoteStatus(playerid)
{
	new score[NUM_MAPS];
	for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i)) {
		if (player_map[i]!=INVALID_MAP) score[player_map[i]]++;
	}

	new text[256];
	format(text, sizeof text,"Current scores: ls:%d, sf:%d, desert:%d, a51:%d, lv:%d, air:%d chiliad:%d country:%d", score[0], score[1], score[2], score[3], score[4],score[5],score[6],score[7]);

	if (playerid==INVALID_PLAYER_ID)
		SendClientMessageToAll(COLOUR_PERSONAL,text);
	else
		SendClientMessage(playerid,COLOUR_PERSONAL,text);
}

public MapVoteDisplayNextMap()
{
	new map = MapVoteGetVotedMap();

	PlayerMapVoteStatus(INVALID_PLAYER_ID);

	switch (map) {
	    case 0 : SendClientMessageToAll(COLOUR_GLOBAL,"Next map: Los Santos!");
	    case 1 : SendClientMessageToAll(COLOUR_GLOBAL,"Next map: San Fierro!");
	    case 2 : SendClientMessageToAll(COLOUR_GLOBAL,"Next map: Desert!");
	    case 3 : SendClientMessageToAll(COLOUR_GLOBAL,"Next map: Area 51!");
	    case 4 : SendClientMessageToAll(COLOUR_GLOBAL,"Next map: Las Venturas!");
	    case 5 : SendClientMessageToAll(COLOUR_GLOBAL,"Next map: Air Assault!");
	    case 6 : SendClientMessageToAll(COLOUR_GLOBAL,"Next map: Mount Chiliad!");
		case 7 : SendClientMessageToAll(COLOUR_GLOBAL,"Next map: Countryside!");
	}
}

public MapVoteWinner() {
	new score[NUM_MAPS];
	for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i)) {
		if (player_map[i]!=INVALID_MAP) score[player_map[i]]++;
	}
	new max_score=0;
	for (new i=0 ; i<sizeof score ; i++) {
	    if (score[i]>max_score) max_score = score[i];
	}

	new map = INVALID_MAP;
	while (map==INVALID_MAP) {
	    new proposal = random(sizeof score);
	    if (score[proposal] == max_score) map = proposal;
	    //printf("score={%d,%d,%d} max_score=%d map=%d proposal=%d",score[0],score[1],score[2],max_score,map,proposal);
	}
	return map;

}


public MapVoteStore() {

	new filename[256] = "mapvote.txt";

	new File:mapvotefile = fopen(filename, io_write);
	if (!mapvotefile) {
		printf("ERROR: writing to mapvote file");
		return;
	}

	new line[256];
	format(line,sizeof line,"%d",MapVoteWinner());
	fwrite(mapvotefile, line);
	fclose(mapvotefile);

}

public MapVoteGetVotedMap() {
	new filename[256] = "mapvote.txt";

	new File:mapvotefile = fopen(filename, io_read);
	if (!mapvotefile) {
		printf("ERROR: reading from mapvote file");
		return MapVoteWinner(); // a random map since no votes are present when the map starts
	}

	new line[256];
	fread(mapvotefile, line);
	fclose(mapvotefile);

	return strvalfixed(line);
}


GetTextFromTeam(str[80], team)
{
	switch(team) {
		case TEAM_PSYCHO: str = "a psychopath";
		case TEAM_TERRORIST: str = "a terrorist";
		case TEAM_PRIMEMINISTER: str = "the Prime Minister";
		case TEAM_BODYGUARD: str = "a bodyguard";
		case TEAM_COP:str = "a cop";
	}
	return 1;
}

TeamColour(team)
{
	switch(team) {
		case TEAM_PSYCHO:		 return 0xFF7F0050;
		case TEAM_TERRORIST:	 return 0xFF00AF60;
		case TEAM_PRIMEMINISTER: return 0xFFFF40FF & (pm_radar_time>0 ? 0xFFFFFF00 : 0xFFFFFFFF);
		case TEAM_BODYGUARD:	 return 0x00800048;
		case TEAM_COP:		     return 0x5050CF50;
	}
	return 1;
}

ClassColour(class)
{
	if (class==INVALID_CLASS) return 0x00000000;

	if (class==class_terrorist_medic) {
		return 0xFF40CF60;
	} else if (class==class_bodyguard_medic) {
		return 0x50B05048;
	} else if (class==class_cop_medic) {
		return 0x8080EF50;
	} else {
	    return TeamColour(class_team[class]);
	}

	return 0x00000000;
}

ExplainRole(playerid)
{

	if (player_class[playerid]==INVALID_CLASS) return;

	new team = class_team[player_class[playerid]];

	switch(team) {
		case TEAM_PSYCHO: {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Nobody wants to be your friend.  So trust noone.  Kill them all.");
		}
		case TEAM_TERRORIST: {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Your role is to try and kill the Prime Minister(yellow) before the timer runs out.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"You must work with the other terrorists(pink) as a team. You must avoid the cops(blue)");
			SendClientMessage(playerid,COLOUR_PERSONAL,"as they will hunt you.  Beware of psychopaths(orange), they will kill anyone.");
			if (obj_counter>0) {
				SendClientMessage(playerid,COLOUR_PERSONAL,"The Prime Minister and his bodyguards will be visiting areas of the city.  These");
				SendClientMessage(playerid,COLOUR_PERSONAL,"are red on the radar.  You should try and ambush him on his way there, siege him");
				SendClientMessage(playerid,COLOUR_PERSONAL,"when he is there, and drive him away.  If the Prime Minister achieves his objectives");
				SendClientMessage(playerid,COLOUR_PERSONAL,"then you lose the game.");
			}
		}
		case TEAM_PRIMEMINISTER: {
			if (obj_counter==0) {
				SendClientMessage(playerid,COLOUR_PERSONAL,"Your role is to avoid being killed by terrorists(pink) or psychopaths(orange)");
				SendClientMessage(playerid,COLOUR_PERSONAL,"until the timer runs out.  Use /time to find out how long there is left.");
			} else {
				SendClientMessage(playerid,COLOUR_PERSONAL,"Your role is to visit and each of the objectives in order.  You must defend the objective");
				SendClientMessage(playerid,COLOUR_PERSONAL,"for the specified time before the next objective will be revealed.  Terrorists(pink) and");
				SendClientMessage(playerid,COLOUR_PERSONAL,"psychopaths(orange) will try to kill you.  If you die, the terrorists win.");
				SendClientMessage(playerid,COLOUR_PERSONAL,"THERE IS NO TIME LIMIT FOR THIS GAME!");
			}
			SendClientMessage(playerid,COLOUR_PERSONAL,"You must work with your loyal bodyguards(green), they will protect you.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"You are to co-operate with the local police(blue), who will hunt the terrorists.");
		}
		case TEAM_BODYGUARD: {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Your duty is to stay with the Prime Minister(yellow) and protect him from harm.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"Terrorists(pink) will soon try and murder him.  Also beware of psychopaths(orange).");
			SendClientMessage(playerid,COLOUR_PERSONAL,"You are to co-operate with the local police(blue), who will hunt the terrorists.");
			if (obj_counter>0) {
				SendClientMessage(playerid,COLOUR_PERSONAL,"The Prime Minister will be visiting areas of the city.  These are red on the radar.");
				SendClientMessage(playerid,COLOUR_PERSONAL,"The terrorists know where he needs to go, so you must prevent them from ambusing or");
				SendClientMessage(playerid,COLOUR_PERSONAL,"successfully sieging the Prime Minister.  If he is killed, you lose the game.");
			}
		}
		case TEAM_COP: {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Your orders are to kill the terrorists(pink) without harming the bodyguards(green) or");
			SendClientMessage(playerid,COLOUR_PERSONAL,"the Prime Minister(yellow).  Also beware of psychopaths(orange).  Protect the Prime Minister!");
			if (obj_counter>0) {
				SendClientMessage(playerid,COLOUR_PERSONAL,"The Prime Minister and his bodyguards will be visiting areas of the city.  These");
				SendClientMessage(playerid,COLOUR_PERSONAL,"are red on the radar.  You should focus your efforts there, clean out the terrorists");
				SendClientMessage(playerid,COLOUR_PERSONAL,"so that the prime minister can go in.  Then defend the area until he is done.");
			}
		}
	}
	if (player_class[playerid]==class_terrorist_medic ||
		player_class[playerid]==class_bodyguard_medic ||
		player_class[playerid]==class_cop_medic) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"You are a medic, you can heal people with /heal!");
	}

	if (safehouse_exists) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"Only terrorists and bodyguards may fly the hydra or seasparrow.");
		SendClientMessage(playerid,COLOUR_PERSONAL,"The Prime Minister's safehouse (red) is a hydra/seasparrow free zone.");
	}

}



public OnGameModeInit()
{
	SetGameModeText(mode_name);

	printf("\nLoaded \"%s\" mode.\n",mode_name);

	ShowPlayerMarkers(1);
	ShowNameTags(1);

	new hour,minute,second;
	gettime(hour,minute,second);
	SetWorldTime(hour);

	new map = MapVoteGetVotedMap();


	printf("Map: %d\n",map);

	if (map==0) {

		AddStaticVehicle2(V_HYDRA,1967,-2637.3569,14.1309,359.9997,43,0,true); // hydra west
		AddStaticVehicle2(V_HYDRA,1977,-2637.3569,14.1309,359.9997,43,0,true); // hydra east

		AddStaticVehicle2(V_STRETCH,1272.0273,-2052.5105,58.9108,268.6577,1,1); // pm limo
		AddStaticVehicle2(V_ENFORCER,1248.0804,-2041.6018,59.8980,269.1785,0,1); // pm swat van south
		AddStaticVehicle2(V_ENFORCER,1248.4545,-2029.4104,59.8854,269.3774,0,1); // pm swat van middle
		AddStaticVehicle2(V_ENFORCER,1247.5862,-2016.4684,59.9106,270.2272,0,1); // pm swat van north
		AddStaticVehicle2(V_COPCARLA,1258.5917,-2052.1367,59.2043,267.4406,0,1); // pm police car behind limo
		AddStaticVehicle2(V_COPCARLA,1283.4066,-2052.5417,58.5057,267.8666,0,1); // pm police car infront of limo
		AddStaticVehicle2(V_NEWSVAN,1307.8915,-2061.7043,58.2399,269.3047,CarCol(),CarCol()); // pm news van
		AddStaticVehicle2(V_NEWSVAN,1323.5018,-2061.6367,57.7726,270.4650,CarCol(),CarCol()); // pm news van
		AddStaticVehicle2(V_NEWSVAN,1275,-2013,59.1134,89.3634,CarCol(),CarCol()); // pm newsvan
		AddStaticVehicle2(V_FBIRANCH,1275,-2023,59.1450,88.3334,0,0); // pm fbiranch north
		AddStaticVehicle2(V_FBIRANCH,1275,-2028,59.1616,88.3310,0,0); // pm fbiranch south

		AddStaticVehicle2(V_STRETCH,1330.2595,-626.7542,108.9349,289.3475,0,0); // safe house limo
		AddStaticVehicle2(V_FBIRANCH,1339.3717,-623.1824,109.2619,289.7454,0,0); // safe house escort before limo
		AddStaticVehicle2(V_FBIRANCH,1320.3932,-630.0724,109.2656,286.9799,0,0); // safe house escort behind limo
		AddStaticVehicle2(V_COPCARLA,1356.0096,-610.3824,108.8543,105.9892,0,1); // safe house cop car north
		AddStaticVehicle2(V_COPCARLA,1357.4025,-614.4976,108.9018,106.5213,0,1); // safe house cop car middle
		AddStaticVehicle2(V_COPCARLA,1358.7394,-618.5698,108.9018,105.6476,0,1); // safe house cop car south
		AddStaticVehicle2(V_COPBIKE,1360.5815,-622.1605,108.7038,106.0725,0,0); // safe house cop bike next to cop cars

		AddStaticVehicle2(V_COPBIKE,1555,-1609,12.9486,180,0,0); // police station bike 1 (north)
		AddStaticVehicle2(V_COPBIKE,1560,-1609,12.9486,180,0,0); // police station bike 2
		AddStaticVehicle2(V_COPBIKE,1565,-1609,12.9474,180,0,0); // police station bike 3
		AddStaticVehicle2(V_COPBIKE,1570,-1609,12.9557,180,0,0); // police station bike 4
		AddStaticVehicle2(V_COPBIKE,1575,-1609,12.9540,180,0,0); // police station bike 5 (south)
		AddStaticVehicle2(V_ENFORCER,1601.7515,-1623.7999,13.6164,91.0440,0,1); // police station swat van 2
		AddStaticVehicle2(V_ENFORCER,1601.8759,-1629.7356,13.6197,88.7999,0,1); // police station swat van 1
		AddStaticVehicle2(V_SWATVAN,1534.5927,-1645.1713,5.6494,179.6766,1,1); // police station swat tank 1 (corner)
		AddStaticVehicle2(V_SWATVAN,1545.3734,-1655.2261,5.6494,270.4727,1,1); // police station swat tank 2
		AddStaticVehicle2(V_COPCARLA,1544.4673,-1667.9943,5.6599,269.0485,0,1); // police station cop car indoors
		AddStaticVehicle2(V_COPCARLA,1529.6506,-1683.7926,5.6578,91.2372,0,1); // police station cop car indoors
		AddStaticVehicle2(V_COPCARLA,1544.2897,-1684.2386,5.6589,90.3812,0,1); // police station cop car indoors
		AddStaticVehicle2(V_COPCARLA,1558.9119,-1709.6991,5.6586,181.0041,0,1); // police station cop car indoors
		AddStaticVehicle2(V_COPCARLA,1591.4161,-1711.0702,5.6598,0.3255,0,1); // police station cop car indoors
		AddStaticVehicle2(V_COPCARLA,1601.5614,-1700.2463,5.6598,89.8913,0,1); // police station cop car indoors
		AddStaticVehicle2(V_COPCARRU,1585.3955,-1671.6195,6.0846,269.2602,0,1); // police station ranger
		AddStaticVehicle2(V_COPCARRU,1584.6819,-1667.6851,6.0791,269.2272,0,1); // police station ranger
		AddStaticVehicle2(V_COPCARRU,1601.9421,-1684.0054,6.0797,89.9971,0,1); // police station ranger
		AddStaticVehicle2(V_COPCARRU,1602.3267,-1691.9391,6.1032,91.0921,0,1); // police station ranger
		AddStaticVehicle2(V_COPCARRU,1603.4213,-1614.9706,13.6899,86.7397,0,1); // police station ranger outdoors
		AddStaticVehicle2(V_COPCARRU,1603.1095,-1604.8138,13.6777,89.8504,0,1); // police station ranger outdoors

		AddStaticVehicle2(V_PCJ600,1767.4407,-1689.3885,12.9402,180.4357,CarCol(),CarCol()); // terrorist bike 1
		AddStaticVehicle2(V_PCJ600,1771.0730,-1688.7708,13.0141,181.8331,CarCol(),CarCol()); // terrorists bike 2
		AddStaticVehicle2(V_HUNTLEY,1808.7601,-1715.5109,13.4829,180.1130,CarCol(),CarCol()); // terrorists huntley
		AddStaticVehicle2(V_HUNTLEY,1808.7458,-1707.0656,13.4865,180.0818,CarCol(),CarCol()); // terrorists huntley north
		AddStaticVehicle2(V_WAYFARER,1774.7974,-1688.7113,12.9956,176.7240,CarCol(),CarCol()); // terrorists bike 3
		AddStaticVehicle2(V_WAYFARER,1778.2140,-1688.9255,12.9975,181.9484,CarCol(),CarCol()); // terrorists bike 4
		AddStaticVehicle2(V_BENSON,1795.7860,-1691.3322,13.4844,181.4520,CarCol(),CarCol()); // terrorists van
		AddStaticVehicle2(V_BENSON,1805.5522,-1690.5121,13.5993,152.4614,CarCol(),CarCol()); // terrorists van corner
		AddStaticVehicle2(V_RANCHER,1766.9115,-1695.8004,13.5906,91.9755,CarCol(),CarCol()); // terrorists 4x4
		AddStaticVehicle2(V_BURRITO,1767.4751,-1704.2063,13.6066,91.5783,CarCol(),CarCol()); // terrorists small van
		AddStaticVehicle2(V_GLENSHIT,1786.7887,-1689.5065,13.1861,89.9475,CarCol(),CarCol()); // terrorists old car
		AddStaticVehicle2(V_HUNTLEY,1808.7384,-1698.5176,13.4862,180.0169,-1,-1); //
		AddStaticVehicle2(V_HUNTLEY,1800.0474,-1690.5969,13.4410,178.3961,-1,-1); //
		AddStaticVehicle2(V_HUNTLEY,1787.1389,-1692.7755,13.3976,89.3455,-1,-1); //
		AddStaticVehicle2(V_PCJ600,1769.4333,-1688.9299,13.0055,184.8206,-1,-1); //
		AddStaticVehicle2(V_PCJ600,1773.4126,-1689.1147,13.0097,179.5487,-1,-1); //
		AddStaticVehicle2(V_WAYFARER,1776.5952,-1689.1486,12.9473,174.5531,-1,-1); //
		AddStaticVehicle2(V_WAYFARER,1779.6062,-1689.1764,12.9508,180.7781,-1,-1); //
		AddStaticVehicle2(V_WAYFARER,1781.3486,-1689.3826,12.9524,171.4159,-1,-1); //
		AddStaticVehicle2(V_BURRITO,1754.5945,-1712.3647,13.5771,180.9772,-1,-1); //
		AddStaticVehicle2(V_BURRITO,1735.4823,-1683.4484,13.6649,89.8953,-1,-1); //

		AddStaticVehicle2(V_POLMAV,1987,-2286.9893,15.1966,85.8866,0,1); //
		AddStaticVehicle2(V_POLMAV,1987,-2314.5679,13.6807,86.7669,0,1); //
		AddStaticVehicle2(V_POLMAV,1992,-2400,13.7241,90.2958,0,1); //
		AddStaticVehicle2(V_POLMAV,1992,-2375,13.7236,77.8665,0,1); // police mav
		AddStaticVehicle2(V_POLMAV,1992,-2350,13.7236,94.8186,0,1); // police mav 2
		AddStaticVehicle2(V_SEASPAR,2737.4866,-1760.1506,44.1182,224.5974,75,2,true); // sparrow1
		AddStaticVehicle2(V_SEASPAR,1568.8612,-1238.7914,277.8883,49.2131,75,2,true); // sparrow2


		AddStaticVehicle2(V_SHAMAL,1596.1857,-2450,14.4836,0.0000,1,1); // shamal
		AddStaticVehicle2(V_SHAMAL,1559.7833,-2450,14.4836,0.0000,1,1); // shamal
		AddStaticVehicle2(V_RUSTLER,1516.4668,-2455,14.2437,359.9142,7,6); // rustler
		AddStaticVehicle2(V_RUSTLER,1486.6560,-2455,14.2642,359.9445,1,6); // rustler
		AddStaticVehicle2(V_BEAGLE,1457.6503,-2446.1963,14.9146,0.0000,4,90); // beagle
		AddStaticVehicle2(V_BEAGLE,1442.9895,-2493.7166,14.9277,270.0598,7,68); // beagle runway
		AddStaticVehicle2(V_AT400,1470.1775,-2593.4873,13.4630,269.6879,8,7); // massive fucking plane
		AddStaticVehicle2(V_TUGSTAIR,1489.0352,-2590,13.2065,180.2330,1,76); // stairs for plane
		AddStaticVehicle2(V_BAGGAGE,1877.1975,-2419.0972,13.2110,117.3680,1,78); // baggage
		AddStaticVehicle2(V_BAGGAGE,1807.3389,-2449.4619,13.2110,129.6533,1,78); // baggage
		AddStaticVehicle2(V_BAGGAGE,1697.7036,-2434.6035,13.2111,116.7797,1,78); // baggage

		AddStaticVehicle2(V_ZR350,1465.7742,-899.0321,54.8603,3.2162,CarCol(),CarCol()); // posh house 1
		AddStaticVehicle2(V_CHEETAH,1527.2067,-886.2890,61.1146,254.2985,CarCol(),CarCol()); // roof top
		AddStaticVehicle2(V_BULLET,1535.1796,-841.1790,64.8940,94.3109,CarCol(),CarCol()); // posh 3
		AddStaticVehicle2(V_SUPERGT,1528.4613,-811.7554,71.8663,89.1012,CarCol(),CarCol()); // posh 4
		AddStaticVehicle2(V_CHEETAH,1025.5624,-800.0936,101.8734,20.1116,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_ZR350,920.5785,-786.9205,114.3464,68.2807,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_BULLET,855.9669,-815.3113,87.7593,19.6388,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_BULLET,684.5640,-1074.3420,49.5645,60.4335,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_CHEETAH,404.5968,-1155.5228,77.6275,143.8123,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_BULLET,289.7317,-1167.9216,80.9028,220.8520,CarCol(),CarCol()); // very posh
		AddStaticVehicle2(V_BULLET,292.9161,-1162.0803,80.9022,220.1603,CarCol(),CarCol()); // very posh
		AddStaticVehicle2(V_SUPERGT,288.0584,-1327.9247,53.5295,218.3855,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_BULLET,1241.8268,-749.5003,94.2435,18.4917,CarCol(),CarCol()); //
		AddStaticVehicle2(V_CHEETAH,872.4854,-872.3334,77.2855,200.1391,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_ZR350,833.5978,-926.3884,54.9567,246.7931,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_ZR350,842.0680,-896.1290,68.4778,232.5096,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_SUPERGT,1086.8040,-637.7476,112.9547,5.5657,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_HUNTLEY,1528.2061,-800.0825,73.0617,90.4437,CarCol(),CarCol()); // posh 4b (V_RANCHER)
		AddStaticVehicle2(V_NRG500,1018.2570,-777.7994,102.6511,90.7938,CarCol(),CarCol()); // posh bike
		AddStaticVehicle2(V_HUNTLEY,848.0241,-818.4172,87.0807,22.0264,CarCol(),CarCol()); // posh rancher
		AddStaticVehicle2(V_NRG500,718.9101,-1001.8113,52.4130,148.8447,CarCol(),CarCol()); // posh bike
		AddStaticVehicle2(V_NRG500,278.7959,-1257.6844,73.9157,215.0338,CarCol(),CarCol()); // posh bike
		AddStaticVehicle2(V_PCJ600,337.6167,-1308.5352,54.2161,209.8673,CarCol(),CarCol()); // sanchez
		AddStaticVehicle2(V_PCJ600,346.4070,-1300.6411,54.2168,206.8296,CarCol(),CarCol()); // sanchez
		AddStaticVehicle2(V_PATRIOT,914.0649,-665.7319,116.7606,241.1865,CarCol(),CarCol()); // patriot
		AddStaticVehicle2(V_MONSTERA,946.1701,-705.2098,121.9152,29.1216,CarCol(),CarCol()); // bandito
		AddStaticVehicle2(V_HUNTLEY,940.8948,-695.8306,121.1879,29.9158,CarCol(),CarCol()); // sand king
		AddStaticVehicle2(V_HUNTLEY,1097.4353,-642.2601,112.5732,267.1823,CarCol(),CarCol()); // huntley
		AddStaticVehicle2(V_RANCHER,1413.9097,-481.3066,42.9720,297.0425,CarCol(),CarCol()); // rancher

		AddStaticVehicle2(V_COMET,1659.2822,-1426.8878,13.3985,88.7621,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_BANSHEE,1590.5114,-1317.7780,17.2589,49.2585,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_STALLION,1809.2898,-1430.6573,13.1695,184.9688,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_WINDSOR,1725.2581,-1217.3599,19.0807,2.3763,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_COMET,1531.0547,-1066.9626,24.7978,90.4579,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_ZR350,1451.6792,-1146.7477,23.7968,133.4617,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_STALLION,1328.1886,-1188.7338,23.3185,176.1219,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_WINDSOR,1252.2759,-1430.6191,13.2775,183.7629,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_COMET,1357.4553,-1570.0588,13.2831,163.9771,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_BANSHEE,1677.5549,-1680.1785,13.2813,182.6165,CarCol(),CarCol()); // com

		AddStaticVehicle2(V_STALLION,1462.1278,-1356.1224,13.6903,0.6286,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_CHEETAH,1294.6667,-984.6381,32.8379,180.0905,CarCol(),CarCol()); // cheetah
		AddStaticVehicle2(V_STRATUM,1205.1552,-1070.0197,29.3908,178.9626,CarCol(),CarCol()); // res
		AddStaticVehicle2(V_CEMENT,1256.7892,-1261.7640,13.3957,272.3957,CarCol(),CarCol()); // ind
		AddStaticVehicle2(V_STALLION,1429.0876,-1408.5740,13.7150,179.6099,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_STALLION,1479.4669,-1415.0720,12.0265,125.8019,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_BLADE,1947.7089,-1055.4075,24.3895,261.2244,CarCol(),CarCol()); // low
		AddStaticVehicle2(V_WASHING,2149.6853,-1137.7899,25.6585,90.4148,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_ELEGY,2160.4878,-1192.2114,23.9636,272.4233,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_MERIT,2241.3850,-1317.9384,24.1282,269.8383,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_WASHING,2347.2151,-1274.0010,22.6479,272.8961,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_SAVANNA,2427.8301,-1241.7535,24.4136,273.2498,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(V_VOODOO,2413.4661,-1229.0675,24.5211,182.1959,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(V_PCJ600,2463.7815,-1424.0723,23.8932,83.3706,CarCol(),CarCol()); // slow bike
		AddStaticVehicle2(V_WASHING,2460.6946,-1551.0662,24.1444,273.1476,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_SAVANNA,2479.3372,-1748.7130,13.6900,180.5300,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(V_GLENSHIT,2393.3811,-1927.7556,13.5243,0.1380,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_BLADE,2390.0774,-1884.8796,13.6899,265.9858,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(V_GLENSHIT,2728.9060,-1970.3724,13.6880,269.7400,CarCol(),CarCol()); // saloon cheap

		AddStaticVehicle2(V_REGINA,976.4387,-1230.6876,17.0708,88.5852,41,41); // suv
		AddStaticVehicle2(V_FLATBED,834.1715,-1216.6764,17.0872,84.6204,41,41); // ind
		AddStaticVehicle2(V_TOWTRUCK,860.5280,-1285.6953,14.0937,182.9245,41,41); // ind
		AddStaticVehicle2(V_MERIT,920.2068,-1292.6371,13.8247,270.7137,41,41); // saloon
		AddStaticVehicle2(V_SOLAIR,1012.5267,-1346.8806,13.4797,267.5486,41,41); // suv
		AddStaticVehicle2(V_REGINA,1117.3052,-1378.9901,14.4011,89.1945,41,41); // suv
		AddStaticVehicle2(V_NRG500,1132.5653,-1614.6372,13.9194,85.6389,41,41); // fast bike in shopping centre
		AddStaticVehicle2(V_WINDSOR,1160.2629,-1770.1327,16.7116,359.6430,41,41); // com
		AddStaticVehicle2(V_BANSHEE,1284.9130,-1732.6017,13.6673,0.8082,41,41); // com

		AddStaticVehicle2(V_REGINA,974.6439,-1089.6545,24.2836,177.6930,CarCol(),CarCol()); // suv
		AddStaticVehicle2(V_ELEGY,785.2358,-1064.5126,24.9404,49.4555,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_COMET,922.8809,-996.1521,38.3117,97.5416,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_STRATUM,1140.2466,-927.7980,43.3007,271.3280,CarCol(),CarCol()); // suv
		AddStaticVehicle2(V_GLENSHIT,1337.9901,-901.7728,36.4426,180.8606,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_SWEEPER,1646.3864,-1062.6378,24.0274,155.3884,CarCol(),CarCol()); // sweeper
		AddStaticVehicle2(V_BENSON,1649.0890,-1111.7745,24.0429,267.8602,CarCol(),CarCol()); // van
		AddStaticVehicle2(V_BURRITO,1657.3999,-1134.4487,24.0332,180.5504,CarCol(),CarCol()); // smallvan
		AddStaticVehicle2(V_FLATBED,1564.0852,-1019.3521,24.0372,81.4864,CarCol(),CarCol()); // flatbed
		AddStaticVehicle2(V_NRG500,1518.3389,-1257.1481,14.6713,180.1029,CarCol(),CarCol()); // fastbike
		AddStaticVehicle2(V_MERIT,1999.5741,-1445.1320,13.6917,217.9478,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_BLADE,2086.8411,-1327.5076,24.1078,0.7111,CarCol(),CarCol()); // low
		AddStaticVehicle2(V_WASHING,1993.6346,-1276.0702,23.9460,357.9409,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_SWEEPER,1816.7452,-1133.7300,24.2091,273.6008,CarCol(),CarCol()); // sweeper
		AddStaticVehicle2(V_COACH,1775.9677,-1022.6566,24.0901,333.2864,CarCol(),CarCol()); // coach
		AddStaticVehicle2(V_ELEGY,2051.7642,-1121.0273,24.7394,176.2412,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_SAVANNA,2080.0862,-1284.8212,24.0993,178.8542,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(V_VOODOO,2143.8416,-1422.6912,25.2155,89.4439,CarCol(),CarCol()); // low
		AddStaticVehicle2(V_PCJ600,2199.1309,-1497.6111,24.1060,275.7724,CarCol(),CarCol()); // slowbike
		AddStaticVehicle2(V_SOLAIR,2200.7722,-1660.7334,15.1396,164.7502,CarCol(),CarCol()); // sub
		AddStaticVehicle2(V_WAYFARER,2321.2974,-1756.2679,13.6757,273.8248,CarCol(),CarCol()); // V_WAYFARER

		AddStaticVehicle2(V_STRETCH,1460.0215,-1025.5533,23.5681,90.6347,22,1); // limo bingo
		AddStaticVehicle2(V_STRETCH,1439.1008,-1025.7854,23.5682,90.6346,22,1); // limo bingo


		AddStaticVehicle2(V_COACH,1567.8092,-1891.4109,13.7520,356.6625,CarCol(),CarCol()); // coach
		AddStaticVehicle2(V_STRATUM,1370.2388,-1889.9265,13.7022,359.3041,CarCol(),CarCol()); // suv
		AddStaticVehicle2(V_GLENSHIT,1206.1053,-1829.6782,13.5963,92.9658,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_BANSHEE,1022.5290,-1832.1632,13.8703,62.2289,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_WINDSOR,860.6016,-1756.1599,13.7098,17.1219,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_CHEETAH,721.0599,-1809.3398,12.5489,71.5726,CarCol(),CarCol()); // posh
		AddStaticVehicle2(V_SOLAIR,479.5703,-1765.3434,5.7271,87.6614,CarCol(),CarCol()); // suv
		AddStaticVehicle2(V_REGINA,266.6155,-1746.7922,4.5722,91.5479,CarCol(),CarCol()); // suv
		AddStaticVehicle2(V_COMET,276.7425,-1594.9742,33.2880,348.6675,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_STALLION,425.1006,-1440.8821,31.4193,36.4924,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_STRATUM,551.6909,-1505.2357,14.7316,182.8906,CarCol(),CarCol()); // suv
		AddStaticVehicle2(V_MERIT,649.7829,-1620.6465,15.2105,112.6496,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_NRG500,682.0504,-1259.6924,13.7628,106.4779,CarCol(),CarCol()); // bikefast
		AddStaticVehicle2(V_WAYFARER,2175.6335,-993.5605,63.1809,169.8002,CarCol(),CarCol()); // V_WAYFARER
		AddStaticVehicle2(V_RANCHER,2453.6128,-1016.0901,59.8982,177.5543,CarCol(),CarCol()); // rancher
		AddStaticVehicle2(V_WASHING,2536.1904,-1104.8235,59.8875,180.5492,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_BLADE,2328.6465,-1407.3834,24.1766,178.8325,CarCol(),CarCol()); // low
		AddStaticVehicle2(V_MONSTERA,2492.1194,-1663.3529,13.5302,82.4906,CarCol(),CarCol()); // monster
		AddStaticVehicle2(V_GLENSHIT,2066.3311,-1694.5254,13.7310,268.5239,CarCol(),CarCol()); // V_GLENSHIT
		AddStaticVehicle2(V_CEMENT,2054.1970,-1767.7522,13.7393,181.0835,CarCol(),CarCol()); // cement
		AddStaticVehicle2(V_FLATBED,1939.3959,-1815.7340,13.7385,77.9876,CarCol(),CarCol()); // flatbed
		AddStaticVehicle2(V_TOWTRUCK,1937.9028,-1939.7325,13.7375,89.1628,CarCol(),CarCol()); // towtruck
		AddStaticVehicle2(V_PCJ600,1941.1481,-2140.8420,13.7440,175.4044,CarCol(),CarCol()); // V_PCJ600
		AddStaticVehicle2(V_SWEEPER,2125.8816,-2165.4050,13.7341,320.7342,CarCol(),CarCol()); // sweeper
		AddStaticVehicle2(V_PATRIOT,2076.9661,-1994.8885,13.7389,41.9139,CarCol(),CarCol()); // patriot

		AddStaticVehicle2(V_GLENSHIT,1502.1649,-2212.7788,13.3136,359.6183,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_STRATUM,1407.0730,-2261.8484,13.3164,180.3750,CarCol(),CarCol()); // suv
		AddStaticVehicle2(V_BANSHEE,1365.5696,-2365.7705,13.3159,90.6723,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_BENSON,1789.8521,-2180.6389,13.3187,270.2510,CarCol(),CarCol()); // van
		AddStaticVehicle2(V_WASHING,1922.5924,-1605.3048,13.1082,269.9615,118,118); // saloon
		AddStaticVehicle2(V_WAYFARER,2070.1260,-1591.6121,13.0664,182.2131,118,118); // V_WAYFARER
		AddStaticVehicle2(V_MERIT,2705.9854,-1844.6924,9.8701,340.3920,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_SOLAIR,2813.2185,-1671.5564,10.3166,2.8114,CarCol(),CarCol()); // suv
		AddStaticVehicle2(V_SAVANNA,2644.6707,-2023.4589,13.9219,1.6210,CarCol(),CarCol()); // low
		AddStaticVehicle2(V_CEMENT,2743.6338,-2138.0737,11.5750,94.0439,CarCol(),CarCol()); // cement
		AddStaticVehicle2(V_FLATBED,2300.8748,-2043.2729,13.9219,93.1316,CarCol(),CarCol()); // flatbed
		AddStaticVehicle2(V_ELEGY,2241.5413,-2111.0176,13.9195,134.0082,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_NRG500,2228.4226,-1811.8547,13.8943,269.9799,CarCol(),CarCol()); // V_NRG500
		AddStaticVehicle2(V_BLADE,2505.4697,-1235.4440,37.6099,356.9889,CarCol(),CarCol()); // lowr
		AddStaticVehicle2(V_BURRITO,2587.6326,-1322.8219,40.4727,91.7934,CarCol(),CarCol()); // smallvan
		AddStaticVehicle2(V_PCJ600,2527.5496,-1465.3361,24.3251,86.3631,CarCol(),CarCol()); // slowbike
		AddStaticVehicle2(V_MERIT,2698.6609,-1191.8911,69.7986,270.9197,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(V_RANCHER,2706.4719,-1274.8931,58.4590,135.3378,CarCol(),CarCol()); // rancher

		AddStaticVehicle2(V_BANSHEE,894.8080,-1518.4893,12.8387,9.3645,CarCol(),CarCol()); // com
		AddStaticVehicle2(V_RANCHER,1725.1200,-405.3828,45.0947,196.5883,CarCol(),CarCol()); // offroad
		AddStaticVehicle2(V_RANCHER,1970.6564,-813.4561,129.1876,281.6888,CarCol(),CarCol()); // rancher
		AddStaticVehicle2(V_RANCHER,2431.9832,-773.8238,113.2601,296.2740,CarCol(),CarCol()); // rancher
		AddStaticVehicle2(V_RANCHER,2662.3218,-438.5351,59.7808,318.4588,CarCol(),CarCol()); // rancher

		for (new i=0 ; i<vehicle_counter ; i++) {
		    if (vehicle_safehouse_excluded[i]) {
		        cant_drive_vehicle[TEAM_PSYCHO][i] = 1;
		        cant_drive_vehicle[TEAM_COP][i] = 1;
		        cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			}
		}

		game_boundary_max_x = 3023;
		game_boundary_min_x = -21;
		game_boundary_max_y = -300;
		game_boundary_min_y = -3135;


		for (new Float:y=0 ; y<16 ; y++) {
		    for (new x=0 ; x<16 ; x++) {
		    	AddTeamSpawn(TEAM_PSYCHO, 1060+(2060-1060)/16.0*x, -1130-(1855-1130)/16.0*y, 333, 0.0);
			}
		}

		AddTeamLineSpawn(TEAM_TERRORIST, 1806.8301,-1701.0436,13.5459, 1771.2782,-1703.0951,13.5106);
		AddTeamLineSpawn(TEAM_TERRORIST, 1771.1172,-1695.8336,13.4571, 1806.0181,-1694.7672,13.5443);

		AddTeamSpawn(TEAM_PRIMEMINISTER, 1125.7273,-2036.8785,69.8804,270);

		AddTeamLineSpawn(TEAM_BODYGUARD, 1133,-2006.7264,69.8804, 1133,-2066.7264,69.8804);

		AddTeamLineSpawn(TEAM_COP, 1585,-1674.1223,6.2252, 1585,-1692.6426,6.2252);
		AddTeamLineSpawn(TEAM_COP, 1610,-1719.8339,6.2188, 1610,-1666.3889,6.2188);


		safehouse_exists = 1;
		safehouse_x = 1330.2595;
		safehouse_y = -626.7542;
		safehouse_z = 50;
		safehouse_exclusion = 270;

		intel_north = -1390;
		intel_south = -1930;
		intel_west = 1130;
		intel_east = 1835;
		intel_feature = "Los Santos";

		wardrobe_interior = 0;
		wardrobe_player_x = 1526.7882;
		wardrobe_player_y = -1346.4575;
		wardrobe_player_z = 330;
		wardrobe_player_orientation = 63;
		wardrobe_camera_x = 1517;
		wardrobe_camera_y = -1342;
		wardrobe_camera_z = 333;

//		AddStaticPickup(PICKUP_PARACHUTE,2,1529.0437,-1364.1820,327.8988); // parachute


		class_psycho1 = AddPlayerClass2(230,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_psycho2 = AddPlayerClass2(212,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_psycho3 = AddPlayerClass2(200,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);
		class_psycho4 = AddPlayerClass2(137,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);

		class_terrorist1 = AddPlayerClass2(181, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist2 = AddPlayerClass2(183, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist3 = AddPlayerClass2(179, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist4 = AddPlayerClass2(191, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist5 = AddPlayerClass2(111, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist6 = AddPlayerClass2(73,  WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist7 = AddPlayerClass2(100, WEAPON_SILENCED,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist_medic = AddPlayerClass2(274, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);

		class_primeminister = AddPlayerClass2(147,WEAPON_CANE,-1,WEAPON_SPRAYCAN,1000, WEAPON_PARACHUTE,-1);

		class_bodyguard1 = AddPlayerClass2(163,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard2 = AddPlayerClass2(164,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard3 = AddPlayerClass2(165,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard4 = AddPlayerClass2(166,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard5 = AddPlayerClass2(141,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard_medic = AddPlayerClass2(276, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);


		class_cop1  = AddPlayerClass2(280, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop2  = AddPlayerClass2(281, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop3  = AddPlayerClass2(282, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop4  = AddPlayerClass2(283, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop5  = AddPlayerClass2(284, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop6  = AddPlayerClass2(285, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop7  = AddPlayerClass2(286, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop8  = AddPlayerClass2(288, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop9  = AddPlayerClass2(246, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop_medic  = AddPlayerClass2(275, WEAPON_PARACHUTE,-1,WEAPON_DEAGLE,100,WEAPON_SPRAYCAN,300);

		pm_health_bonus = 1;

		class_team[class_psycho1] = TEAM_PSYCHO;
		class_team[class_psycho2] = TEAM_PSYCHO;
		class_team[class_psycho3] = TEAM_PSYCHO;
		class_team[class_psycho4] = TEAM_PSYCHO;

		class_team[class_terrorist1] = TEAM_TERRORIST;
		class_team[class_terrorist2] = TEAM_TERRORIST;
		class_team[class_terrorist3] = TEAM_TERRORIST;
		class_team[class_terrorist4] = TEAM_TERRORIST;
		class_team[class_terrorist5] = TEAM_TERRORIST;
		class_team[class_terrorist6] = TEAM_TERRORIST;
		class_team[class_terrorist7] = TEAM_TERRORIST;
		class_team[class_terrorist_medic] = TEAM_TERRORIST;

		class_team[class_primeminister] = TEAM_PRIMEMINISTER;
		class_team[class_bodyguard1] = TEAM_BODYGUARD;
		class_team[class_bodyguard2] = TEAM_BODYGUARD;
		class_team[class_bodyguard3] = TEAM_BODYGUARD;
		class_team[class_bodyguard4] = TEAM_BODYGUARD;
		class_team[class_bodyguard5] = TEAM_BODYGUARD;
		class_team[class_bodyguard_medic] = TEAM_BODYGUARD;

		class_team[class_cop1] = TEAM_COP;
		class_team[class_cop2] = TEAM_COP;
		class_team[class_cop3] = TEAM_COP;
		class_team[class_cop4] = TEAM_COP;
		class_team[class_cop5] = TEAM_COP;
		class_team[class_cop6] = TEAM_COP;
		class_team[class_cop7] = TEAM_COP;
		class_team[class_cop8] = TEAM_COP;
		class_team[class_cop9] = TEAM_COP;
		class_team[class_cop_medic] = TEAM_COP;

	} else if (map==1) {

        AddStaticVehicle2(V_ELEGY, -2118.9319,194.8274,35.7567,2.7513,-1,-1);
        AddStaticVehicle2(V_ELEGY, -2036.5212,305.6321,35.9090,359.8144,-1,-1);
        AddStaticVehicle2(V_BENSON,     -2087.8369,255.6416,37.0341,357.9168,-1,-1);
        AddStaticVehicle2(V_CADDY,   -2652.9031,-297.2605,8.0617,315.6009,-1,-1);
        AddStaticVehicle2(V_CADDY,   -2659.7441,-289.6562,8.0920,313.6239,-1,-1);
        AddStaticVehicle2(V_CADDY,   -2642.9949,-301.7552,8.0090,47.6567,-1,-1);
        AddStaticVehicle2(V_STRATUM,    -2618.9480,1376.7870,7.7322,181.1998,-1,-1);
        AddStaticVehicle2(V_SUPERGT,   -2645.5964,1376.7522,7.8935,267.8349,-1,-1);
        AddStaticVehicle2(V_STRETCH, -2628.6924,1377.4845,7.9350,180.7913,-1,-1);
        AddStaticVehicle2(V_STRETCH, -2633.1638,1332.7010,7.9953,269.6430,-1,-1);
        AddStaticVehicle2(V_GLENSHIT, -2126.2573,650.7344,53.2421,88.8335,-1,-1);
        AddStaticVehicle2(V_GLENSHIT, -2125.8604,658.0598,53.3040,92.1547,-1,-1);
        AddStaticVehicle2(V_MERIT, -2158.0305,657.3961,53.2440,272.5298,-1,-1);
        AddStaticVehicle2(V_NRG500,-2151.1257,629.7889,52.8293,180.7068,-1,-1);
        AddStaticVehicle2(V_MERIT, -2156.6838,942.3219,80.8784,269.6746,-1,-1);
        AddStaticVehicle2(V_COMET,   -2223.2629,1083.2794,80.7819,359.6700,-1,-1);
        AddStaticVehicle2(V_MONSTERA,-2517.2996,1229.3512,38.7999,209.3221,-1,-1);
        AddStaticVehicle2(V_NRG500,-1654.1005,1211.9901,14.2380,315.9562,-1,-1);
        AddStaticVehicle2(V_CHEETAH,-1660.4161,1213.3704,8.0209,295.4768,-1,-1);
        AddStaticVehicle2(V_CHEETAH,-1553.3494,1089.8568,7.9584,89.1789,-1,-1);
        AddStaticVehicle2(V_TAXI,-1497.4607,845.8477,7.9671,88.5197,-1,-1);
        AddStaticVehicle2(V_WASHING,-1699.4597,1035.9624,46.0932,91.6588,-1,-1);
        AddStaticVehicle2(V_ZR350,-1786.6871,1206.5266,25.7813,178.8742,-1,-1);
        AddStaticVehicle2(V_ZR350,-1703.9169,1339.6957,7.8358,133.6003,-1,-1);
        AddStaticVehicle2(V_WASHING,-2438.0117,1340.9783,8.7316,86.7979,-1,-1);
        AddStaticVehicle2(V_SUPERGT,-2168.5137,1251.3845,27.4573,358.0133,-1,-1);
        AddStaticVehicle2(V_SUPERGT,-2636.3838,932.3286,72.5378,187.1212,-1,-1);
        AddStaticVehicle2(V_PCJ600,-2566.5906,989.6594,78.8568,358.1472,-1,-1);
        AddStaticVehicle2(V_PCJ600,-2464.8860,896.7036,63.6223,0.6326,-1,-1);
        AddStaticVehicle2(V_MERIT,-2273.8679,921.3689,67.3102,359.9958,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2459.9055,786.4501,36.2643,89.8722,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2673.5830,802.1517,51.0693,0.3607,-1,-1);
        AddStaticVehicle2(V_MONSTERA,-2902.7820,342.5712,6.3723,138.7612,-1,-1);
        AddStaticVehicle2(V_MONSTERA,-2876.3977,26.3173,7.2123,118.5961,-1,-1);
        AddStaticVehicle2(V_PATRIOT,-1382.4279,455.8060,7.1838,359.9849,-1,-1);
        AddStaticVehicle2(V_PATRIOT,-1439.3396,455.1034,7.1739,0.1531,-1,-1);
        AddStaticVehicle2(V_MERIT,-1465.0304,455.6730,7.9280,358.9676,-1,-1);
        AddStaticVehicle2(V_KART,-1677.1865,438.8195,7.4635,227.1910,-1,-1);
        AddStaticVehicle2(V_SAVANNA,-1872.5575,-820.7949,32.8273,90.7921,-1,-1);
        AddStaticVehicle2(V_MONSTERA,-1898.3019,-915.5814,33.3947,91.2857,-1,-1);
        AddStaticVehicle2(V_ELEGY,-2124.4800,-929.0856,32.7397,269.1853,-1,-1);
        AddStaticVehicle2(V_ELEGY,-2133.3015,-847.1439,32.7396,88.8312,-1,-1);
        AddStaticVehicle2(V_GLENSHIT,-2134.1038,-775.5048,32.8568,91.5838,-1,-1);
        AddStaticVehicle2(V_GLENSHIT,-2134.1428,-453.9576,36.1699,95.0875,-1,-1);
        AddStaticVehicle2(V_BULLET,-2035.6851,170.2529,29.4610,268.9087,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2219.7209,-83.2318,36.4367,2.0481,-1,-1);
        AddStaticVehicle2(V_BULLET,-2018.4379,-98.9675,35.7890,358.5420,-1,-1);
        AddStaticVehicle2(V_BULLET,-2352.0959,-126.8848,35.9374,179.5324,-1,-1);
        AddStaticVehicle2(V_GLENSHIT,-2180.1277,41.8536,36.1953,269.9865,-1,-1);
        AddStaticVehicle2(V_NRG500,-2269.4526,69.5823,35.7279,89.6104,-1,-1);
        AddStaticVehicle2(V_NRG500,-2266.0090,145.0206,35.7322,92.0045,-1,-1);
        AddStaticVehicle2(V_SAVANNA,-2129.2864,787.6249,70.3666,87.1679,-1,-1);
        AddStaticVehicle2(V_SAVANNA,-2424.9958,740.8871,35.8205,177.6701,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2684.7639,636.4294,14.5454,179.2696,-1,-1);
        AddStaticVehicle2(V_ELEGY,-2545.7666,627.5895,15.1684,89.1952,-1,-1);
        AddStaticVehicle2(V_ELEGY,-2428.7107,514.7900,30.6451,207.9893,-1,-1);
        AddStaticVehicle2(V_BANSHEE,-2498.4822,357.5526,35.7969,58.0823,-1,-1);
        AddStaticVehicle2(V_BANSHEE,-2664.9673,268.9968,5.0156,357.6026,-1,-1);
        AddStaticVehicle2(V_TAXI,-2626.5276,-53.6779,5.1144,357.7703,-1,-1);
        AddStaticVehicle2(V_COMET,-2718.5354,-124.4790,5.3071,269.1429,-1,-1);
        AddStaticVehicle2(V_COMET,-2487.5295,-125.3075,26.5715,90.9363,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2486.0298,51.5018,27.7954,177.2178,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2574.9736,146.5981,5.4279,1.8790,-1,-1);
        AddStaticVehicle2(V_ZR350,-2800.0251,205.2155,7.8399,92.2606,-1,-1);
        AddStaticVehicle2(V_ELEGY,-1741.0009,811.0599,25.5879,270.6703,-1,-1);
        AddStaticVehicle2(V_ELEGY,-1920.7559,875.2713,36.1113,270.0973,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2040.4465,1107.7076,54.4032,89.8491,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-1968.8488,465.6065,36.2766,89.3124,-1,-1);
        AddStaticVehicle2(V_ELEGY,-1938.2876,584.4863,35.9137,1.1244,-1,-1);
        AddStaticVehicle2(V_ELEGY,-1825.2035,-0.4858,15.8965,270.0104,-1,-1);
        AddStaticVehicle2(V_HUNTLEY,-1820.0182,-175.9391,10.3323,87.9147,-1,-1);
        AddStaticVehicle2(V_BANSHEE,-1687.9076,1003.5587,18.2656,91.3972,-1,-1);
        AddStaticVehicle2(V_STALLION,-1704.8613,1058.0004,18.4810,182.3475,-1,-1);
        AddStaticVehicle2(V_HUNTLEY,-1702.2262,1028.7677,18.5187,270.2923,-1,-1);
        AddStaticVehicle2(V_COMET,-1735.9534,1016.0621,18.3580,268.5771,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2782.3508,442.1533,5.5383,57.1401,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2836.3665,865.6495,44.1470,268.7662,-1,-1);
        AddStaticVehicle2(V_CHEETAH,-2899.3823,1112.4786,27.3954,268.9744,-1,-1);
        AddStaticVehicle2(V_GLENSHIT,-2654.5662,615.2198,15.2873,0.1598,-1,-1);
        AddStaticVehicle2(V_AMBULAN,-2618.7363,627.2617,15.6024,179.6464,-1,-1);
        AddStaticVehicle2(V_ELEGY,-1968.8031,-400.9335,35.1227,88.2282,-1,-1);
        AddStaticVehicle2(V_GLENSHIT,-1904.3373,-599.6174,24.4277,344.2378,-1,-1);
        AddStaticVehicle2(V_SAVANNA,-1639.3912,-567.4948,13.9482,80.1914,-1,-1);
        AddStaticVehicle2(V_SAVANNA,-1405.5500,-309.2615,13.9504,174.9827,-1,-1);
        AddStaticVehicle2(V_SAVANNA,-2132.1143,160.2086,35.1341,270.0023,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2151.4924,428.9210,35.1902,176.6156,-1,-1);
        AddStaticVehicle2(V_SOLAIR,-2304.8279,360.0154,35.2835,201.6184,-1,-1);
        AddStaticVehicle2(V_NRG500,-1696.7413,977.0867,17.1574,7.0263,-1,-1);
        AddStaticVehicle2(V_BANSHEE,-2641.7395,1333.0645,6.8700,356.7557,-1,-1);
        AddStaticVehicle2(V_CADDY,-2650.6292,-280.5106,7.0874,132.0127,-1,-1);
        AddStaticVehicle2(V_WASHING,-1409.6693,456.0711,7.0672,3.2988,-1,-1);
        AddStaticVehicle2(V_PHOENIX,-2617.2964,1349.0765,7.0217,358.1852,-1,-1); //
        AddStaticVehicle2(V_SAVANNA,-2129.8242,288.0418,34.9864,269.9582,-1,-1); //
        AddStaticVehicle2(V_COPBIKE,-1628.6875,652.5107,6.9568,0.9097,-1,-1); //
        AddStaticVehicle2(V_COPBIKE,-1616.7957,652.5980,6.9551,0.6199,-1,-1); //
        AddStaticVehicle2(V_COPBIKE,-1594.2644,672.5858,6.9564,176.7420,-1,-1); //
        AddStaticVehicle2(V_COPBIKE,-1593.5823,652.3891,6.9567,1.3142,0,1); //
        AddStaticVehicle2(V_COPCARSF,-1611.9730,673.5499,6.9567,181.6088,0,1); //

		AddStaticVehicle2(V_REGINA,-2553.0054,626.6677,27.6950,358.6974,-1,-1); // suv
		AddStaticVehicle2(V_PCJ600,-2242.9187,765.5427,49.3059,1.6011,-1,-1); // V_PCJ600
		AddStaticVehicle2(V_KART,-1965.3051,720.0149,45.3278,268.9010,-1,-1); // V_KART
		AddStaticVehicle2(V_PCJ600,-1787.6517,745.9218,36.2055,272.1465,-1,-1); // V_PCJ600

		AddStaticVehicle2(V_COMET,-2391.2390,1125.9204,55.8569,339.7648,-1,-1); // conv
		AddStaticVehicle2(V_REGINA,-2421.8684,1133.9849,55.8559,345.8843,-1,-1); // suv
		AddStaticVehicle2(V_BANSHEE,-2485.5100,1137.4042,55.8537,359.9205,-1,-1); // conv
		AddStaticVehicle2(V_PCJ600,-2561.9558,1146.1674,55.8537,281.0753,-1,-1); // slowbike

		// PM SPAWN POINT
		AddStaticVehicle2(V_CADDY,-2615.2432,-296.0932,22.3635,44.6924,34,1);
		AddStaticVehicle2(V_CADDY,-2622.9700,-310.6605,22.1746,14.7554,34,1);
		AddStaticVehicle2(V_CADDY,-2623.6943,-301.5168,21.9019,4.1876,34,1);
		AddStaticVehicle2(V_FBIRANCH,-2696.1272,-282.0655,6.6658,315.9437,0,0);
		AddStaticVehicle2(V_WASHING,-2688.7402,-274.1584,6.9215,315.4178,0,0); // washington
		AddStaticVehicle2(V_FBIRANCH,-2679.0486,-264.3250,6.8715,315.4175,0,0);
		AddStaticVehicle2(V_CADDY,-2617.6021,-300.3896,22.2979,65.0813,34,1); // another caddy
		AddStaticVehicle2(V_NEWSVAN,-2682.7249,-251.1302,6.5105,319.0648,-1,-1); // newsvan
		AddStaticVehicle2(V_NEWSVAN,-2708.5098,-277.6510,6.7756,316.4557,-1,-1); // newsvan
		AddStaticVehicle2(V_WAYFARER,-2709.3982,-259.5328,6.6492,353.2961,-1,-1); // V_WAYFARER

		AddStaticVehicle2(V_SWATVAN,-1639.3496,678.0804,-5.5212,270.5469,0,1); // swat tank1
		AddStaticVehicle2(V_SWATVAN,-1639.0546,670.0349,-5.5225,270.1779,0,1); // swat tank 2
		AddStaticVehicle2(V_COPCARSF,-1612.4198,691.3272,-5.5208,178.9291,0,1); // cop car
		AddStaticVehicle2(V_COPCARSF,-1572.7882,726.3871,-5.5206,89.3208,0,1); // cop car
		AddStaticVehicle2(V_COPCARSF,-1588.2332,749.4512,-5.5218,359.9219,0,1); // cop car
		AddStaticVehicle2(V_COPCARRU,-1612.4628,749.3665,-5.5211,178.7688,0,1); // cop 4x4
		AddStaticVehicle2(V_COPCARRU,-1612.2714,733.6174,-5.5221,359.8494,0,1); // cop 4x4
		AddStaticVehicle2(V_COPCARRU,-1616.9042,733.5754,-5.5214,1.2638,0,1); // cop 4x4
		AddStaticVehicle2(V_COPBIKE,-1574.5774,748.6456,-5.5200,142.5166,0,1); // cop bike
		AddStaticVehicle2(V_ENFORCER,-1637.4391,662.2834,6.9071,270.4799,0,1); // swat van
		AddStaticVehicle2(V_ENFORCER,-1637.2936,672.0524,6.9071,273.6113,0,1); // swat van
		AddStaticVehicle2(V_ENFORCER,-1637.9066,658.2620,6.9066,267.4762,0,1); // swat van
		AddStaticVehicle2(V_COPCARRU,-1588.5615,673.4885,6.9084,178.4371,0,1); // police 4x4

		// near pm start
        AddStaticVehicle2(V_VORTEX,-2952.4602,495.9247,1.9517,0.4375,-1,-1);
        AddStaticVehicle2(V_SQUALO,-2970.6746,497.2838,1.3557,4.0073,-1,1);

        AddStaticVehicle2(V_MARQUIS,   -1476.5386,700.1740,1.1248,355.3123,-1,-1);
		AddStaticVehicle2(V_MARQUIS,-1572.3998,1370.7104,0.2841,252.0055,79,74); // V_MARQUIS
		AddStaticVehicle2(V_MARQUIS,-1503.8254,1300.6124,0.6895,273.7650,79,74); // V_MARQUIS

        AddStaticVehicle2(V_SQUALO,-1571.3143,1263.2914,1.2879,269.1020,-1,-1);
        AddStaticVehicle2(V_SQUALO,-1720.0265,1436.3821,1.4272,3.3108,-1,-1);
		AddStaticVehicle2(V_SQUALO,-1464.9600,1023.3726,-0.6029,270.2424,1,5);

        AddStaticVehicle2(V_VORTEX,-2441.2109,1414.1995,1.4429,86.1079,-1,-1);
        AddStaticVehicle2(V_VORTEX,-1835.1257,1425.9342,1.5476,184.1130,-1,-1);

		AddStaticVehicle2(V_VORTEX,-2587.4680,1444.1047,0.3254,4.6667,79,74); // vortex
		AddStaticVehicle2(V_VORTEX,-1891.6384,1396.1394,0.7461,271.1545,79,74); // another vortex


		// near psychos
		AddStaticVehicle2(V_KART,-2451.3318,556.0181,22.6719,267.4335,-1,-1); // V_KART
		AddStaticVehicle2(V_VORTEX,-2377.0471,649.9578,35.3007,359.7591,-1,-1); // vortex


		//terrorist spawn point
		AddStaticVehicle2(V_BENSON,-2065.8750,1346.3484,7.2452,179.4297,-1,-1); // van
		AddStaticVehicle2(V_TOWTRUCK,-2094.1772,1345.9810,7.3105,88.1415,-1,-1); // van
		AddStaticVehicle2(V_BURRITO,-2063.2434,1398.5623,7.2271,178.7124,-1,-1); // smallvan
		AddStaticVehicle2(V_PCJ600,-2073.9851,1374.2258,7.2329,172.5076,-1,-1); // V_PCJ600
		AddStaticVehicle2(V_NRG500,-2079.8274,1371.4542,7.2302,180.3891,-1,-1); // V_PCJ600
		AddStaticVehicle2(V_WAYFARER,-2088.0586,1371.1990,7.2287,179.4680,-1,-1); // V_WAYFARER
		AddStaticVehicle2(V_WAYFARER,-2087.9033,1387.9725,7.2257,179.4678,-1,-1); // V_WAYFARER
		AddStaticVehicle2(V_HUNTLEY,-2087.6611,1413.9387,7.2278,179.4678,-1,-1); // huntley
		AddStaticVehicle2(V_HUNTLEY,-2082.3779,1414.4132,7.2291,180.7033,-1,-1); // huntley
		AddStaticVehicle2(V_PCJ600,-2068.6760,1369.5734,6.6863,178.4523,-1,-1); // fast bike
		AddStaticVehicle2(V_PCJ600,-2068.3259,1382.5973,6.6855,178.4524,-1,-1); // slowbike
		AddStaticVehicle2(V_WAYFARER,-2084.0664,1371.8256,6.6868,181.7741,-1,-1); // bigbike
		AddStaticVehicle2(V_WAYFARER,-2088.7297,1362.1067,6.6868,181.7492,-1,-1); // bigbike
		AddStaticVehicle2(V_PCJ600,-2073.7957,1384.0508,6.6907,177.6445,79,1); //
		AddStaticVehicle2(V_PCJ600,-2073.4456,1392.5313,6.6856,177.6445,79,1); //
		AddStaticVehicle2(V_HUNTLEY,-2077.5728,1413.7444,7.0339,179.4285,53,53); //
		AddStaticVehicle2(V_WAYFARER,-2084.2048,1361.7908,6.6211,203.1954,32,1); //

		AddStaticVehicle2(V_SQUALO,-1782.7452,1550.7842,0.2427,298.0088,-1,-1); // fastboat
		AddStaticVehicle2(V_SQUALO,-1617.7899,1433.6151,0.1265,241.6499,-1,-1); // fastboat
		AddStaticVehicle2(V_SQUALO,-1476.5730,1201.7140,0.3884,187.7503,-1,-1); // fastboat
		AddStaticVehicle2(V_VORTEX,-2571.3198,1386.4089,6.5449,351.2159,-1,-1); // new hover
		AddStaticVehicle2(V_VORTEX,-2467.5503,1388.8195,6.5475,271.6523,-1,-1); // hover
        AddStaticVehicle2(V_VORTEX,-2335.7229,1397.4176,7.0563,249.1124,-1,-1); // hover

		AddStaticVehicle2(V_VORTEX,-2121.6143,1351.7623,6.7545,88.0823,75,1); // hover
		AddStaticVehicle2(V_VORTEX,-2217.0090,1351.9673,6.7745,88.6992,75,1); // hover
		AddStaticVehicle2(V_VORTEX,-2192.4121,1351.1522,6.7707,284.6617,75,1); // hover
		AddStaticVehicle2(V_SQUALO,-1476.0929,786.0922,-0.6458,182.0836,1,5); // boatfast
		AddStaticVehicle2(V_SQUALO,-1427.3295,1502.5604,-0.8800,89.7601,1,5); // containership boat
		AddStaticVehicle2(V_SQUALO,-1847.7698,1423.7585,-0.5177,359.4388,1,5); // fastboat alcove

		for (new i=0 ; i<vehicle_counter ; i++) {
		    if (vehicle_modelid[i]==V_NRG500 || vehicle_modelid[i]==V_PCJ600) {
		        cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			}
		}


		game_boundary_max_x = -910;
		game_boundary_min_x = -3000;
		game_boundary_max_y = 1750;
		game_boundary_min_y = -700;



		for (new Float:y=0 ; y<16 ; y++) {
		    for (new x=0 ; x<16 ; x++) {
		    	AddTeamSpawn(TEAM_PSYCHO, -2797+(2797-1710)/16.0*x, -220+(1279+220)/16.0*y, 333, 0.0);
			}
		}

		AddTeamLineSpawn(TEAM_TERRORIST, -2093,1434,7.1016,-2062,1434,7.1016);

		AddTeamSpawn(TEAM_PRIMEMINISTER, -2604.2786,-304.8785,23.2305,112.7947);
		AddTeamLineSpawn(TEAM_BODYGUARD, -2616.1018,-318.4776,23.1227, -2601.2432,-293.0693,23.1227);


		AddTeamLineSpawn(TEAM_COP,-1590.5117,733.6737,-4.9063, -1610.3680,733.6467,-4.9063);
		AddTeamLineSpawn(TEAM_COP,-1618.2246,757.4536,-4.9063, -1562.6666,757.6099,-4.9063);




		intel_north = 475;
		intel_south = -200;
		intel_west = -2400;
		intel_east = -1800;
		intel_feature = "San Fierro";


		AddStaticPickup(PICKUP_PARACHUTE,2,-1753.7321,885.4072,295.8750); // parachute
		AddStaticPickup(PICKUP_ARMOR,2,-2618.1980,-306.6282,22.6980); // armour

		wardrobe_interior = 0;
		wardrobe_player_x = -1397;
		wardrobe_player_y = 1482;
		wardrobe_player_z = 11.8084;
		wardrobe_player_orientation = 70.0;
		wardrobe_camera_x = -1402;
		wardrobe_camera_y = 1479;
		wardrobe_camera_z = 12;


		class_psycho1 = AddPlayerClass2(230,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_psycho2 = AddPlayerClass2(212,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_psycho3 = AddPlayerClass2(200,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);
		class_psycho4 = AddPlayerClass2(137,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);

		class_terrorist1 = AddPlayerClass2(181, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist2 = AddPlayerClass2(183, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist3 = AddPlayerClass2(179, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist4 = AddPlayerClass2(191, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist5 = AddPlayerClass2(111, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist6 = AddPlayerClass2(73,  WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist7 = AddPlayerClass2(100, WEAPON_SILENCED,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist_medic = AddPlayerClass2(274, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);

		class_primeminister = AddPlayerClass2(147,WEAPON_CANE,-1,WEAPON_SPRAYCAN,1000, WEAPON_PARACHUTE,-1);

		class_bodyguard1 = AddPlayerClass2(163,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard2 = AddPlayerClass2(164,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard3 = AddPlayerClass2(165,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard4 = AddPlayerClass2(166,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard5 = AddPlayerClass2(141,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard_medic = AddPlayerClass2(276, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);


		class_cop1  = AddPlayerClass2(280, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop2  = AddPlayerClass2(281, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop3  = AddPlayerClass2(282, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop4  = AddPlayerClass2(283, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop5  = AddPlayerClass2(284, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop6  = AddPlayerClass2(285, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop7  = AddPlayerClass2(286, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop8  = AddPlayerClass2(288, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop9  = AddPlayerClass2(246, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop_medic  = AddPlayerClass2(275, WEAPON_PARACHUTE,-1,WEAPON_DEAGLE,100,WEAPON_SPRAYCAN,300);

		class_team[class_psycho1] = TEAM_PSYCHO;
		class_team[class_psycho2] = TEAM_PSYCHO;
		class_team[class_psycho3] = TEAM_PSYCHO;
		class_team[class_psycho4] = TEAM_PSYCHO;

		class_team[class_terrorist1] = TEAM_TERRORIST;
		class_team[class_terrorist2] = TEAM_TERRORIST;
		class_team[class_terrorist3] = TEAM_TERRORIST;
		class_team[class_terrorist4] = TEAM_TERRORIST;
		class_team[class_terrorist5] = TEAM_TERRORIST;
		class_team[class_terrorist6] = TEAM_TERRORIST;
		class_team[class_terrorist7] = TEAM_TERRORIST;
		class_team[class_terrorist_medic] = TEAM_TERRORIST;

		class_team[class_primeminister] = TEAM_PRIMEMINISTER;
		class_team[class_bodyguard1] = TEAM_BODYGUARD;
		class_team[class_bodyguard2] = TEAM_BODYGUARD;
		class_team[class_bodyguard3] = TEAM_BODYGUARD;
		class_team[class_bodyguard4] = TEAM_BODYGUARD;
		class_team[class_bodyguard5] = TEAM_BODYGUARD;
		class_team[class_bodyguard_medic] = TEAM_BODYGUARD;

		class_team[class_cop1] = TEAM_COP;
		class_team[class_cop2] = TEAM_COP;
		class_team[class_cop3] = TEAM_COP;
		class_team[class_cop4] = TEAM_COP;
		class_team[class_cop5] = TEAM_COP;
		class_team[class_cop6] = TEAM_COP;
		class_team[class_cop7] = TEAM_COP;
		class_team[class_cop8] = TEAM_COP;
		class_team[class_cop9] = TEAM_COP;
		class_team[class_cop_medic] = TEAM_COP;

		banned_cuboid = 1;

		banned_cuboid_max_x = -2328;
		banned_cuboid_min_x = -2330;
		banned_cuboid_max_y = 1530;
		banned_cuboid_min_y = 1528;
		banned_cuboid_max_z = 1;
		banned_cuboid_min_z = -1;

		banned_cuboid_tele_x = -2301.4436;
		banned_cuboid_tele_y = 1545.0177;
		banned_cuboid_tele_z = 18.7734;
		banned_cuboid_tele_a = 90;

        banned_cuboid_message = "";

        AddStaticPickup(1318,1,-2329,1529,1.3);

		pm_health_bonus = 1;

	} else if (map==2) {



		AddStaticVehicle2(V_COPCARRU,-373.4946,2229.2224,42.6745,103.8068,-1,-1); // Cop
		AddStaticVehicle2(V_COPCARRU,-372.0769,2223.4812,42.6760,103.3467,-1,-1); // Cop
		AddStaticVehicle2(V_COPCARRU,-370.6270,2217.8696,42.6781,102.8179,-1,-1); // Cop
		AddStaticVehicle2(V_COPCARRU,-369.5875,2212.5266,42.6767,104.3322,-1,-1); // Cop
		AddStaticVehicle2(V_GLENSHIT,-392.1177,2234.2717,42.1881,286.7657,-1,-1); // Car
		AddStaticVehicle2(V_SADLSHIT,-393.1129,2239.7837,42.2510,286.0437,-1,-1); // Car
		AddStaticVehicle2(V_GLENSHIT,-378.9341,2252.8047,42.2196,103.4142,-1,-1); // Vehicle

		AddStaticVehicle2(V_QUAD,-333.4667,1513.3398,74.8400,179.6975,-1,-1); // Terrorororor
		AddStaticVehicle2(V_JOURNEY,-315.4058,1515.2224,75.7326,179.3794,-1,-1); // Terror RV
		AddStaticVehicle2(V_MTBIKE,-320.9330,1513.6566,74.9672,184.2828,-1,-1); // Terror
		AddStaticVehicle2(V_MTBIKE,-324.0143,1514.1841,74.9702,192.7250,-1,-1); // Terror Bike
		AddStaticVehicle2(V_BANDITO,-327.4584,1514.8817,75.2251,177.9374,-1,-1); // Terror
		AddStaticVehicle2(V_BANDITO,-330.8202,1515.2344,75.2245,178.2083,-1,-1); // Terror
		AddStaticVehicle2(V_BANDITO,-287.6006,1519.2936,75.2256,223.3827,-1,-1); // Terr or
		AddStaticVehicle2(V_SANCHEZ,-306.1739,1535.9799,75.2306,276.8695,-1,-1); // Dirtyt
		AddStaticVehicle2(V_SANCHEZ,-313.9410,1538.3921,75.2314,182.0586,-1,-1); // No
		AddStaticVehicle2(V_SANCHEZ,-344.7124,1521.8835,75.0285,280.9128,-1,-1); // Molll
		AddStaticVehicle2(V_SANCHEZ,-345.1044,1519.1165,75.0279,288.5814,-1,-1); // Bike

		AddStaticVehicle2(V_RUSTLER,291.1415,2541.4473,17.5427,179.1035,-1,-1); // Muster
		AddStaticVehicle2(V_RUSTLER,325.2618,2538.6426,17.5348,175.0817,-1,-1); // Muster
		AddStaticVehicle2(V_RUSTLER,344.1243,2541,17.4814,180,-1,-1); // rustler1
		AddStaticVehicle2(V_RUSTLER,358.3794,2541,17.3897,180,-1,-1); // rustler2
		AddStaticVehicle2(V_RUSTLER,372.5980,2541,17.2544,180,-1,-1); // rustler3
		AddStaticVehicle2(V_RUSTLER,425,2484,17.1988,90,-1,-1); // rustler1 runway east
		AddStaticVehicle2(V_RUSTLER,425,2500,17.2057,90,-1,-1); // rustler2 runway east
		AddStaticVehicle2(V_RUSTLER,425,2516,17.1910,90,-1,-1); // rustler3 runway east
		AddStaticVehicle2(V_RUSTLER,-68,2484,17.1994,270,-1,-1); // rustler1 runway west
		AddStaticVehicle2(V_RUSTLER,-68,2500,17.1977,270,-1,-1); // rustler2 runway west
		AddStaticVehicle2(V_RUSTLER,-68,2516,17.1944,270,-1,-1); // rustler3 runway west
		AddStaticVehicle2(V_GLENSHIT,343.1581,2468.4836,16.2259,349.2015,-1,-1); // Glendale

		AddStaticVehicle2(478,512.5175,2375.1328,30.2694,142.5418,-1,-1); // Truck
		AddStaticVehicle2(V_TAHOMA,528.4246,2364.9326,30.2506,147.6309,-1,-1); // Car
		AddStaticVehicle2(V_SADLSHIT,-97.8073,1340.7292,10.1658,6.0542,-1,-1); // Sadde
		AddStaticVehicle2(V_SADLSHIT,-91.7327,1341.2476,10.3388,10.7399,-1,-1); // Sadler
		AddStaticVehicle2(V_GLENSHIT,-85.6100,1340.5928,10.4864,7.9968,-1,-1); // Vsel
		AddStaticVehicle2(V_GLENSHIT,-79.2864,1341.6671,10.7181,9.1289,-1,-1); // Vehicle
		AddStaticVehicle2(V_GLENSHIT,-7.1971,1366.4293,8.9140,147.0334,-1,-1); // Vehicke

		AddStaticVehicle2(V_PATRIOT,128.4070,1935.4491,19.2591,177.1867,-1,-1); // Patrio
		AddStaticVehicle2(V_PATRIOT,135.0211,1936.2513,19.2640,176.6158,-1,-1); // Partio
		AddStaticVehicle2(V_PATRIOT,141.6795,1935.5112,19.2536,178.8926,-1,-1); // Patrrr
		AddStaticVehicle2(V_PATRIOT,177.6861,1934.6136,18.0750,181.7777,-1,-1); // Pattt
		AddStaticVehicle2(V_PATRIOT,160.9952,1905.5656,18.7018,354.6314,-1,-1); // Patrrr
		AddStaticVehicle2(512,226.0780,1912.1439,17.9237,88.5602,-1,-1); // Croppy
		AddStaticVehicle2(V_SADLSHIT,-306.4304,1321.1613,54.0393,71.6058,-1,-1); // Vejoc
		AddStaticVehicle2(V_GLENSHIT,-308.1725,1313.7946,53.7000,56.4391,-1,-1); // Vee
		AddStaticVehicle2(V_GLENSHIT,-302.0185,1763.0840,42.4293,267.4570,-1,-1); // Car0r
		AddStaticVehicle2(V_SADLSHIT,-290.8565,1757.5781,42.5049,93.9924,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,-302.7458,1749.1565,42.4293,269.6189,-1,-1);

		AddStaticVehicle2(V_SADLSHIT,265.3379,1385.5450,10.7759,355.3102,-1,-1); // Vehicle Sadlshit
		AddStaticVehicle2(V_SADLSHIT,278.3898,1394.5453,10.7750,3.6282,-1,-1); // Sadlshit

		AddStaticVehicle2(V_GLENSHIT,-37.5037,2343.7458,23.9176,186.5129,-1,-1); // Glenshit
		AddStaticVehicle2(V_GLENSHIT,-29.4181,2342.6941,23.9203,179.2358,-1,-1); // Glenshit

		AddStaticVehicle2(V_MTBIKE,-436.9597,1528.6982,35.0200,78.4875,-1,-1); // Mountain Bike
		AddStaticVehicle2(V_MTBIKE,-437.1234,1523.3080,34.8416,89.7792,-1,-1); // Mountain Bike
		AddStaticVehicle2(V_SADLSHIT,-461.2624,1840.4432,79.8521,5.2061,-1,-1); // Sadlshit
		AddStaticVehicle2(V_MONSTERA,-650.4379,2064.0884,60.0519,254.1844,-1,-1); // Monster Truck
		AddStaticVehicle2(V_QUAD,-639.3491,2044.7014,60.0518,306.4698,-1,-1); // QUAD
		AddStaticVehicle2(V_QUAD,-651.7520,2049.6462,60.0528,318.2614,-1,-1); // QUAD
		AddStaticVehicle2(V_GLENSHIT,-56.6189,2071.8889,17.3831,272.0660,-1,-1); // Glenshit
		AddStaticVehicle2(V_TOWTRUCK,-42.8314,2072.4724,17.3776,272.8621,-1,-1); // Towtruck
		AddStaticVehicle2(V_COACH,139.1421,2402.3652,16.3514,183.3682,-1,-1); // Bus
		AddStaticVehicle2(V_SADLSHIT,546.0180,2273.2808,34.6324,163.6258,-1,-1); // Sadlshit
		AddStaticVehicle2(V_RANCHER,613.8723,1695.1948,6.7766,126.8590,-1,-1); // Rancher
		AddStaticVehicle2(V_SADLSHIT,579.9173,1694.9648,6.7756,125.5006,-1,-1); // Sadlshit
		AddStaticVehicle2(V_RANCHER,441.1465,1452.1217,6.6511,180.1733,-1,-1); // Rancher
		AddStaticVehicle2(V_SANCHEZ,419.9347,1396.7889,7.3782,275.6075,-1,-1); // Sanchez
		AddStaticVehicle2(V_BANDITO,158.9563,1289.6885,20.7672,119.3067,-1,-1); // Bandito
		AddStaticVehicle2(V_JOURNEY,-28.1202,1392.3749,8.9534,115.3400,-1,-1); // Camper
		AddStaticVehicle2(V_GLENSHIT,-105.6378,1657.1228,18.7260,1.5408,-1,-1); // Glenshit
		AddStaticVehicle2(V_TOWTRUCK,-103.1216,1680.6563,19.3278,353.2779,-1,-1); // Towtruck
		AddStaticVehicle2(V_SANCHEZ,-307.9980,2278.7800,69.6654,118.5181,-1,-1); // Sanchez
		AddStaticVehicle2(V_COACH,-511.9582,2342.5620,68.8873,42.4001,-1,-1); // Bus
		AddStaticVehicle2(V_TAHOMA,-653.6816,2453.1689,108.5600,235.7774,-1,-1); // Tahoma
		AddStaticVehicle2(V_JOURNEY,-520.7234,2559.4729,53.1944,273.0922,-1,-1); // Camper
		AddStaticVehicle2(V_SADLSHIT,-270.1139,2528.6023,33.6351,180.0996,-1,-1); // Sadlshit
		AddStaticVehicle2(V_MTBIKE,9.6867,2566.6843,16.2201,275.5639,-1,-1); // Mountain Bike
		AddStaticVehicle2(V_SUPERGT,405.6807,2451.9543,16.2418,0.2241,-1,-1); // Super GT
		AddStaticVehicle2(V_GLENSHIT,-137.3023,1495.3257,20.8097,185.5890,-1,-1); // Glenshit
		AddStaticVehicle2(V_SADLSHIT,307.2332,2224.7744,34.5744,279.0383,-1,-1); // Sadlshit
		AddStaticVehicle2(V_PACKER,159.0350,1794.4323,17.6331,267.3149,-1,-1); // Packer
		AddStaticVehicle2(V_PACKER,217.6115,1794.5244,17.6330,90.9282,-1,-1); // Packer
		AddStaticVehicle2(V_TAHOMA,185.3955,1779.2295,17.6334,38.4860,0,0); // Tahoma

		AddStaticVehicle2(V_JOURNEY,-305.7203,1582.0869,75.7340,314.6775,-1,-1); // Camper
		AddStaticVehicle2(V_BANDITO,-298.0320,1577.2061,75.2261,314.9534,-1,-1); // Bandito
		AddStaticVehicle2(V_BANDITO,-294.2787,1570.9336,75.2273,315.6023,-1,-1); // Bandito
		AddStaticVehicle2(V_SANCHEZ,-289.3582,1565.8213,75.2249,311.6503,-1,-1); // Sancher
		AddStaticVehicle2(V_SANCHEZ,-283.7643,1561.8212,75.2252,311.5244,-1,-1); // Sanchez

		AddStaticVehicle2(V_SADLSHIT,-169.6647,2530.4236,26.4566,172.2570,-1,-1); // Sadlshit
		AddStaticVehicle2(V_SADLSHIT,-179.5176,2523.3569,26.8471,270.6300,-1,-1); // Sadlshit
		AddStaticVehicle2(V_SADLSHIT,-95.7158,1578.8989,18.4041,316.8269,-1,-1); // Sadlshit
		AddStaticVehicle2(V_SADLSHIT,-88.9240,1587.0151,19.6654,148.3202,-1,-1); // Sadlshit
		AddStaticVehicle2(V_QUAD,159.6595,1503.9028,9.9643,260.0487,-1,-1); // QUAD
		AddStaticVehicle2(V_NRG500,-329.8607,1996.8251,131.0137,353.8627,-1,-1); // NRG-500
		AddStaticVehicle2(V_SANCHEZ,-323.8958,1994.4108,131.0051,267.4394,-1,-1); // Sanchez (new new)

		AddStaticVehicle2(V_SANCHEZ,-102.9670,1409.7643,8.7564,11.1346,-1,-1); // sanchez
		AddStaticVehicle2(V_MTBIKE,-95.2224,1387.8547,9.8821,284.0279,-1,-1); // mtbike
		AddStaticVehicle2(V_QUAD,-336.6664,1513.8232,74.8424,178.8342,-1,-1); // QUAD
		AddStaticVehicle2(V_QUAD,-339.6753,1513.9998,74.8419,179.2734,-1,-1); // QUAD
		AddStaticVehicle2(V_SANCHEZ,-345.4217,1515.9220,75.0287,107.6245,-1,-1); // sanchez
		AddStaticVehicle2(V_SANCHEZ,-346.7638,1505.9716,75.2014,177.2721,-1,-1); // sanchez
		AddStaticVehicle2(V_SANCHEZ,-287.3348,1563.5139,75.0287,320.7873,-1,-1); // sanchez
		AddStaticVehicle2(V_BANDITO,-301.5450,1579.9359,75.2271,316.1707,-1,-1); // bandito
		AddStaticVehicle2(V_JOURNEY,-265.3403,1542.6632,75.7345,314.8934,-1,-1); // journey
		AddStaticVehicle2(V_JOURNEY,-270.2007,1547.4906,75.7341,315.5843,-1,-1); // journey (last of the t spawns)
		AddStaticVehicle2(V_COPCARRU,-392.1603,2195.9368,42.6069,281.4015,-1,-1); // copcar
		AddStaticVehicle2(V_COPCARRU,-388.5154,2190.1953,42.6066,278.1221,-1,-1); // copcar
		AddStaticVehicle2(V_COPCARRU,-392.4467,2221.1265,42.6202,285.0713,-1,-1); // copcar
		AddStaticVehicle2(V_COPCARRU,-381.2379,2262.0291,42.5836,185.7649,-1,-1); // copcar
		AddStaticVehicle2(V_GLENSHIT,-411.5871,2261.4980,42.0659,284.0798,-1,-1); // glenshit
		AddStaticVehicle2(V_GLENSHIT,-437.5620,2245.5037,42.1707,178.6818,-1,-1); // glenshit
		AddStaticVehicle2(V_GLENSHIT,-415.2881,2221.1184,42.0702,272.4201,-1,-1); // glenshit
		AddStaticVehicle2(V_SADLSHIT,-406.4722,2227.7639,42.1847,335.6204,-1,-1); // sadlshit
		AddStaticVehicle2(V_PATRIOT,172.7931,1934.1707,18.2634,181.9308,-1,-1); // patriot
		AddStaticVehicle2(V_PATRIOT,183.1861,1934.7625,17.8627,180.3658,-1,-1); // patriot
		AddStaticVehicle2(V_PATRIOT,204.4802,1873.1158,13.1361,269.8959,-1,-1); // patriot
		AddStaticVehicle2(V_PATRIOT,190.9326,1871.0653,17.6315,1.4515,-1,-1); // patriot
		AddStaticVehicle2(V_BARRACKS,190.6840,1880.8751,17.6280,1.4526,-1,-1); // army truck
		AddStaticVehicle2(V_BARRACKS,190.4281,1890.9606,17.6272,1.4538,-1,-1); // armytruck
		AddStaticVehicle2(V_PATRIOT,190.1387,1902.3572,17.6368,1.4542,-1,-1); // patriot
		AddStaticVehicle2(V_CROPDUST,222.9974,1877.2621,17.9276,349.3912,-1,-1); // duster
		AddStaticVehicle2(V_CROPDUST,225.3865,1890.0095,17.9222,349.4016,-1,-1); // duster


		AddStaticVehicle2(V_SANCHEZ,-210.1860,1910.3212,39.0504,148.5330,-1,-1); // sanchez
		AddStaticVehicle2(V_SANCHEZ,392.0377,2078.8513,17.3098,1.7270,-1,-1); // sanchez
		AddStaticVehicle2(V_SANCHEZ,343.2761,1800.8895,17.9775,318.2888,-1,-1); // sanchez
		AddStaticVehicle2(V_SANCHEZ,15.4727,1736.3965,21.8593,285.8096,-1,-1); // sanchez


		AddStaticVehicle2(V_PACKER,414.7962,955.8672,30.4635,241.2664,-1,-1); // Packer
		AddStaticVehicle2(V_GLENSHIT,838.2132,2465.1345,29.8546,117.3449,-1,-1); //
		AddStaticVehicle2(V_SADLSHIT,795.1725,2413.9941,15.5269,183.1105,-1,-1); //
		AddStaticVehicle2(V_TAHOMA,769.8999,2340.4568,12.2173,180.9902,-1,-1); //
		AddStaticVehicle2(V_JOURNEY,901.7408,2328.5530,11.1176,180.3398,-1,-1); //
		AddStaticVehicle2(400,902.0013,2232.7798,10.5237,181.8236,-1,-1); //landstal
		AddStaticVehicle(V_BFINJECT,900.8930,2143.1997,10.6032,182.6698,-1,-1); //
		AddStaticVehicle2(V_WALTON,757.0711,2102.5811,8.3406,358.1468,-1,-1); //
		AddStaticVehicle2(V_QUAD,681.3440,1951.3121,5.0207,181.1861,-1,-1); // train
		AddStaticVehicle2(V_SANCHEZ,685.1196,1951.0209,5.2082,180.4845,-1,-1); // train
		AddStaticVehicle2(V_SANCHEZ,688.0167,1951.0138,5.2077,181.9976,-1,-1); // train
		AddStaticVehicle2(V_QUAD,690.9780,1951.3625,5.0213,183.3431,-1,-1); // train
		AddStaticVehicle2(V_PACKER,729.9453,1869.5992,6.2312,205.5516,-1,-1); // train
		AddStaticVehicle2(V_PACKER,728.1098,1864.0717,6.3122,206.6182,-1,-1); // train
		AddStaticVehicle2(V_FREEWAY,614.8901,1689.1740,12.0043,215.8332,-1,-1); // hidebike
		AddStaticVehicle2(V_COPCARRU,-652.0114,1193.4659,14.3920,287.1533,-1,-1); // terminus
		AddStaticVehicle2(V_COPCARRU,-656.6796,1198.3301,13.8911,292.0036,-1,-1); // terminus
		AddStaticVehicle2(V_PATRIOT,-639.3463,1162.0695,14.0132,229.2976,-1,-1); // terminus
		AddStaticVehicle2(V_PATRIOT,-640.6520,1153.1771,13.9554,240.7832,-1,-1); // terminus
		AddStaticVehicle2(516,678.9440,2196.0518,23.0729,181.7497,-1,-1); // nebula
		AddStaticVehicle2(579,812.5190,1992.6683,8.8760,173.1010,-1,-1); //huntley
		AddStaticVehicle2(568,701.6065,1948.9017,5.4035,183.0978,-1,-1); // bandito
		AddStaticVehicle2(470,780.0374,1877.6465,4.9285,269.2345,-1,-1); // patriot
		AddStaticVehicle2(458,902.0481,1877.3051,10.5767,179.7795,-1,-1); // solair
		AddStaticVehicle2(551,676.4182,1729.2784,6.7341,310.8552,-1,-1); // merit
		AddStaticVehicle2(489,798.0359,1695.3804,5.4254,265.5924,-1,-1); // rancher
		AddStaticVehicle2(467,789.6333,1678.0112,5.1154,89.1847,-1,-1); // oceanic
		AddStaticVehicle2(V_SQUALO,-80.0669,487.7204,-0.5299,98.9804,-1,-1); //
		AddStaticVehicle2(468,798.0046,2240.2544,9.2807,209.5868,-1,-1); // sanchez
		AddStaticVehicle2(525,673.1003,1594.6523,5.2698,170.4411,-1,-1); // towtruck
		AddStaticVehicle2(604,776.2334,1557.4261,6.2894,303.0466,-1,-1); // glen
		AddStaticVehicle2(605,682.3124,1412.2334,12.9886,13.4228,-1,-1); // sadlshit
		AddStaticVehicle2(478,777.9928,1397.0499,20.2656,181.4007,-1,-1); // walton
		AddStaticVehicle2(566,825.2336,1217.8518,27.5150,187.8956,-1,-1); // taloma
		AddStaticVehicle2(489,576.2413,1246.0880,11.9132,28.5967,-1,-1); // rancher
		AddStaticVehicle2(585,708.8505,1203.0743,13.5405,85.1022,-1,-1); // emperor
		AddStaticVehicle2(458,507.0561,1112.0461,14.7187,356.1344,-1,-1); // solair
		AddStaticVehicle2(424,494.6823,1119.0626,14.3451,355.9106,-1,-1); // bfinj
		AddStaticVehicle2(506,414.7903,1164.1646,7.6023,356.7451,-1,-1); // supergt
		AddStaticVehicle2(516,400.3200,1149.5994,8.1719,268.8035,-1,-1); // nebula
		AddStaticVehicle2(508,315.0280,1152.3732,8.9645,85.2887,-1,-1); // journey
		AddStaticVehicle2(419,295.8253,1147.3025,8.3278,269.8992,-1,-1); // esperanto
		AddStaticVehicle2(468,634.7539,1228.6328,11.3805,122.3248,-1,-1); // sanchez
		AddStaticVehicle2(448,174.9599,1173.5681,14.3579,142.6513,-1,-1); // pizzaboy
		AddStaticVehicle2(424,178.0229,1170.6807,14.5394,145.0482,-1,-1); // bfinj
		AddStaticVehicle2(495,531.3890,668.0421,3.8471,329.5020,-1,-1); // sandking
		AddStaticVehicle2(400,521.3588,673.8175,3.8521,328.8015,-1,-1); // landstal
		AddStaticVehicle2(554,343.6065,747.8186,6.2081,92.6852,-1,-1); // yosemite
		AddStaticVehicle2(579,128.6116,718.1661,5.9189,122.3895,-1,-1); // huntley
		AddStaticVehicle2(551,-139.7703,583.8871,2.3102,16.3734,-1,-1); // merit
		AddStaticVehicle2(525,782.5097,695.8967,11.3015,103.7606,-1,-1); // towtruck
		AddStaticVehicle2(605,-407.6429,623.2076,16.0364,264.7849,-1,-1); // sadlshit
		AddStaticVehicle2(566,-283.6242,680.6658,18.1536,309.0658,-1,-1); // taloma
		AddStaticVehicle2(508,-122.8863,768.9604,21.5292,330.0441,-1,-1); // journey
		AddStaticVehicle2(489,85.2580,807.2419,33.9690,301.7183,-1,-1); // rancher
		AddStaticVehicle2(500,290.9921,802.0983,15.0091,23.7794,-1,-1); // mesa
		AddStaticVehicle2(604,-385.4826,750.0555,24.9052,329.7118,-1,-1); // glen
		AddStaticVehicle2(470,-318.2691,844.3259,14.2341,272.0210,-1,-1); // patriot
		AddStaticVehicle2(554,-312.7302,824.4495,14.3285,273.0023,-1,-1); // yosemite
		AddStaticVehicle2(605,-391.4470,1012.1808,10.6735,54.3129,-1,-1); // sad
		AddStaticVehicle2(478,138.9227,899.3122,20.9006,288.5594,-1,-1); // walton
		AddStaticVehicle2(556,212.1735,974.6084,28.8503,333.7029,CarCol(),CarCol()); // monstera
		AddStaticVehicle2(470,113.4447,1067.7861,13.6008,177.5960,-1,-1); // patriot
		AddStaticVehicle2(468,-19.4109,706.7399,20.7024,121.5846,-1,-1); // sanchez
		AddStaticVehicle2(556,761.5104,1040.3561,30.8594,231.0159,CarCol(),CarCol()); // monster
		AddStaticVehicle(448,178.6630,1170.8038,14.3573,142.0272,-1,-1); // pizzaboy

		//vehicules in little village:
		AddStaticVehicle2(434,-276.6193,985.6359,20.1259,270.9423,-1,-1); //hotknife
		AddStaticVehicle2(599,-210.8648,999.4500,19.8503,89.7964,0,1); // copcarru
		AddStaticVehicle2(599,-210.9043,995.1942,19.7623,89.5294,0,1); // copcarru
		AddStaticVehicle2(599,-211.0630,990.9757,19.6799,89.4680,0,1); // copcarru
		AddStaticVehicle2(599,-227.4120,992.8058,19.7287,269.8940,0,1); // copcarru
		AddStaticVehicle2(599,-227.4198,997.4986,19.7670,268.9711,0,1); // copcarru
		AddStaticVehicle2(424,26.1608,973.0208,19.4093,260.4325,-1,-1); // bfinj
		AddStaticVehicle2(525,-53.6380,923.9610,21.8058,94.1115,-1,-1); // towtruck
		AddStaticVehicle2(495,-100.8763,976.8270,20.1774,359.1267,-1,-1); // sandking
		AddStaticVehicle2(458,3.6329,1083.5742,19.6261,90.1482,-1,-1); // solair
		AddStaticVehicle2(419,-83.8296,1077.0717,19.5396,0.2300,-1,-1); // esperanto
		AddStaticVehicle2(439,-77.4747,1077.5347,19.6381,1.0599,-1,-1); // stallion
		AddStaticVehicle2(551,-165.4307,1085.1846,19.5429,2.5791,-1,-1); // merit
		AddStaticVehicle2(585,-231.7890,1084.1042,19.3288,1.4741,-1,-1); // emperor
		AddStaticVehicle2(416,-303.8193,1036.0305,19.7445,269.1934,-1,-1); // ambul
		AddStaticVehicle2(416,-316.2111,1057.2214,19.8893,267.8399,-1,-1); // ambul
		AddStaticVehicle2(554,-359.1689,1128.5206,19.7869,268.4344,-1,-1); // yosemite
		AddStaticVehicle2(475,-260.7447,1158.8090,19.5521,89.3095,-1,-1); // sabre
		AddStaticVehicle2(579,-172.7996,1142.1024,19.6702,271.3307,-1,-1); // huntley
		AddStaticVehicle2(504,-128.4020,1135.3990,19.5346,1.3775,-1,-1); // bloodra
		AddStaticVehicle2(400,-52.2261,1167.4504,19.7090,179.1451,-1,-1); // landstal
		AddStaticVehicle2(542,-30.4338,1166.6561,19.1463,359.9251,-1,-1); // clover
		AddStaticVehicle2(467,66.9436,1193.1268,18.4392,89.9775,-1,-1); // oceanic
		AddStaticVehicle2(504,-15.2056,1204.7896,19.1518,89.0830,-1,-1); // bloodra
		AddStaticVehicle2(500,-77.1586,1222.3790,19.8508,181.5723,-1,-1); // mesa
		AddStaticVehicle2(400,-84.5881,1222.0951,19.8345,181.2472,-1,-1); // landstal
		AddStaticVehicle2(424,-176.7979,1217.2242,19.5224,269.2904,-1,-1); // bf inj
		AddStaticVehicle2(516,-214.6400,1214.5306,19.5762,181.9335,-1,-1); // nebula
		AddStaticVehicle(437,-290.7144,1143.0774,19.7981,90.7188,-1,-1); // coach

		//in the quarry:
		AddStaticVehicle(406,824.6457,832.2698,12.7670,18.8625,1,1); // dumper
		AddStaticVehicle(486,833.1371,832.9565,12.2192,18.6695,1,1); // dozer
		AddStaticVehicle(455,833.4152,869.2450,13.3654,203.8206,32,74); // flatbed
		AddStaticVehicle(406,745.3128,780.1634,-5.8927,323.2658,1,1); // dum
		AddStaticVehicle(455,702.4598,734.1238,-6.3510,339.9949,32,74); // flat
		AddStaticVehicle(486,709.8955,736.0938,-6.5562,350.4632,1,1); // doz
		AddStaticVehicle(486,735.5754,950.4409,-7.2237,243.4660,1,1); // doz
		AddStaticVehicle(406,745.3817,934.8342,-5.9662,37.8115,1,1); // dum
		AddStaticVehicle(406,522.0106,993.4375,-8.0148,220.1714,1,1); // dum
		AddStaticVehicle(455,530.4317,996.5425,-7.7196,222.0809,32,74); // flat
		AddStaticVehicle(486,735.5754,950.4409,-7.2237,243.4660,1,1); // doz
		AddStaticVehicle(406,745.3817,934.8342,-5.9662,37.8115,1,1); // dum
		AddStaticVehicle(406,522.0106,993.4375,-8.0148,220.1714,1,1); // dum
		AddStaticVehicle(455,530.4317,996.5425,-7.7196,222.0809,32,74); // flat
		AddStaticVehicle(406,708.8864,928.8096,-17.1406,209.9132,1,1); // dum
		AddStaticVehicle(486,686.6681,985.3293,-12.5585,343.8343,1,1); // doz
		AddStaticVehicle(406,736.5869,805.5381,-17.1945,350.5965,1,1); // dum
		AddStaticVehicle(455,672.4702,764.0448,-18.2787,293.5681,32,74); // flat
		AddStaticVehicle(406,516.4689,969.8781,-22.6862,228.3357,1,1); // dum
		AddStaticVehicle(406,471.9847,872.6871,-27.6200,289.6999,1,1); // dum
		AddStaticVehicle(486,471.3339,881.1882,-29.1899,286.1142,1,1); // doz
		AddStaticVehicle(455,546.6434,822.3059,-28.8304,136.3987,32,74); // flat
		AddStaticVehicle(455,595.2134,752.1271,-14.8622,63.8993,32,74); // flat
		AddStaticVehicle(406,695.3762,828.2486,-28.6617,238.9176,1,1); // dum
		AddStaticVehicle(455,579.7333,911.5330,-42.7799,202.9857,32,74); // flat
		AddStaticVehicle(486,669.2810,890.5291,-40.1415,271.1826,1,1); // doz
		AddStaticVehicle(406,628.9632,832.8386,-41.4356,35.8965,1,1); // dum
		AddStaticVehicle(486,623.9670,879.6955,-42.7406,297.1092,1,1); // doz
		AddStaticVehicle(455,353.5844,851.6229,20.6398,221.0450,32,74); // flat
		AddStaticVehicle(455,334.0802,863.1279,20.8427,120.3726,32,74); // flat
		AddStaticVehicle(455,327.0934,883.2712,20.8392,94.8575,32,74); // flat

		AddWeaponPickup(PICKUP_SHOVEL,WEAPON_SHOVEL,-1,-140.2877,1496.0981,21.3760,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_SHOVEL,WEAPON_SHOVEL,-1,-137.3183,1500.3707,20.3800,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_CHAINSAW,WEAPON_CHAINSAW,-1,-102.5674,1368.8951,10.2734,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_DILDO,WEAPON_DILDO,-1,540.9449,2358.8433,30.9870,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_FLOWER,WEAPON_FLOWER,-1,553.3507,2274.7832,34.4340,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_POOLSTICK,WEAPON_POOLSTICK,-1,23.6597,1363.0038,9.1719,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_BAT,WEAPON_BAT,-1,6.1200,1382.3802,9.1781,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_DILDO2,WEAPON_DILDO2,-1,-21.2242,1390.1115,9.1719,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_CHAINSAW,WEAPON_CHAINSAW,-1,-171.3368,2526.1011,26.2891,WP_NO_RESPAWN); // Chainsaw
		//AddWeaponPickup(PICKUP_KATANA,WEAPON_KATANA,-1,-597.6247,2022.2175,60.3818,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_SHOVEL,WEAPON_SHOVEL,-1,-168.2105,2521.9858,25.3978,WP_NO_RESPAWN); // Shovel
		AddWeaponPickup(PICKUP_CHAINSAW,WEAPON_CHAINSAW,-1,-88.1425,1579.7565,19.9543,WP_NO_RESPAWN); // Chainsaw
		AddWeaponPickup(PICKUP_SHOVEL,WEAPON_SHOVEL,-1,-93.6178,1586.4666,19.5323,WP_NO_RESPAWN); // Shovel
		AddWeaponPickup(PICKUP_FIREEXTINGUISHER,WEAPON_FIREEXTINGUISHER,-1,431.8049,2537.3123,16.2685,WP_NO_RESPAWN); // Fire Extinguisher
		AddWeaponPickup(PICKUP_SHOVEL,WEAPON_SHOVEL,-1,-333.0277,2219.3123,42.4885,WP_NO_RESPAWN); // Shovel
		AddWeaponPickup(PICKUP_FLOWER,WEAPON_FLOWER,-1,-335.9626,2225.1255,42.4871,WP_NO_RESPAWN); // Flowers
		AddWeaponPickup(PICKUP_SHOVEL,WEAPON_SHOVEL,-1,304.1429,2228.8489,34.7733,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_SPRAYCAN,WEAPON_SPRAYCAN,-1,314.1726,2222.2141,35.7107,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_BAT,WEAPON_BAT,-1,-590.3543,2018.4451,60.3828,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_NITESTICK,WEAPON_NITESTICK,-1,-377.7772,2243.2141,42.6185,WP_NO_RESPAWN); // Nightstick (cop weapon)

		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,150,102.0130,1900.9927,33.8984,WP_NO_RESPAWN); // Uzis
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,150,162.0741,1934.7688,33.8984,WP_NO_RESPAWN); // Uzis

		AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,300,-329.5251,1860.5280,44.5668,30,WP_SYNCED); // MP5
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,-220.5080,1801.8065,103.7095,30,WP_SYNCED); // SMG
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,-98.1209,2270.3389,122.4016,WP_NO_RESPAWN,WP_SYNCED); // Flamethrower (pm spawn?)
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-83.6319,1525.7402,17.2205,30,WP_SYNCED); // Dessert Eagle on top of lonely shack
		AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,300,-127.1452,2258.0967,28.3973,10,WP_SYNCED); // MP5 (campfire)
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,278.0169,2023.8375,17.6406,30,WP_SYNCED); // SMG
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,246.4423,1411.0696,23.3703,30,WP_SYNCED); // Flamethrower
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,246.7062,1385.9924,23.3750,30,WP_SYNCED); // Flamethrower
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,215.0238,1468.0563,23.7344,30,WP_SYNCED); // Flamethrower
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,487.3661,1535.1282,1.0032,30,WP_SYNCED); // DesertEagle
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-480.4825,2180.6299,41.8672,30,WP_SYNCED);
		AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,60,136.8696,1875.2312,22.4375,30,WP_SYNCED);
		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,150,-336.0703,1293.3424,53.6643,30,WP_SYNCED);
		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,150,-653.5152,2040.8524,60.3906,30,WP_SYNCED);
		AddWeaponPickup(PICKUP_SILENCED,WEAPON_SILENCED,50,-127.5074,1926.5990,15.3981,30,WP_SYNCED);
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,-35.9747,2349.6221,24.3026,30,WP_SYNCED); // Tec-9 (new)
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,100,-149.8675,1596.4629,17.4454,30,WP_SYNCED); // Micro Uzi
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-152.0274,1320.9338,13.8111,30,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,100,-249.2702,1314.6149,36.9502,30,WP_SYNCED); // Micro Uzi
		AddWeaponPickup(PICKUP_SILENCED,WEAPON_SILENCED,50,1.5069,1517.4351,12.7500,30,WP_SYNCED); // Silenced Pistol
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,161.8201,1504.1044,10.5859,30,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,392.8684,1430.7505,7.7917,30,WP_SYNCED); // Tec 9
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,548.5426,2273.8989,34.7579,30,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,60,399.8705,2429.5833,16.4885,30,WP_SYNCED); // Shotgun (regular)
		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,150,113.2080,2406.0139,17.3938,30,WP_SYNCED); // AK 47
		AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,60,414.3580,2533.0876,23.3131,30,WP_SYNCED); // Combat Shotgun
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,6660,-338.3566,1985.2874,131.4921,200,WP_SYNCED); // Flamethrower (lots of ammo)
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,-258.8873,2042.0297,48.1047,30,WP_SYNCED); // Tec-9
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,100,-149.3102,1989.7598,30.4239,30,WP_SYNCED); // Micro Uzi


		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,60,-285.3163,1262.9303,24.8750,30,WP_SYNCED); // Sawnoff
		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,60,-56.4050,1294.1333,12.1404,30,WP_SYNCED); // Sawn-off
		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,60,541.1504,2361.0249,33.9793,30,WP_SYNCED); // Sawnoff
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,605.8316,2147.7361,41.3062,30,WP_SYNCED); // Tec-9
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,492.0047,1719.7748,11.2410,30,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,165.1940,1283.6234,20.7728,30,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF, 60,-343.2186,1546.4620,80.4334,60); // SAWN OFF
		AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,60,-336.2724,1595.2528,95.5666,60); // Combat Shotgun
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,100,-346.5265,1584.6504,95.5346,60); // Uzi
		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,150,-357.0659,1594.8313,95.5090,60); // AK-47

		AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,300,-185.0072,1886.8285,115.7031,400,WP_SYNCED); // Minigun
		AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,300,-371.6570,2128.8850,133.1797,400,WP_SYNCED); // Minigun (new set)
		AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,10000,-347.2831,1600.8020,165.7395,WP_NO_RESPAWN,WP_SYNCED); // Minigun


		AddStaticPickup(PICKUP_PARACHUTE,2,-86.2668,2267.6125,124.8475); // Parachute
		AddStaticPickup(PICKUP_ARMOR,2,-361.4214,1595.8302,76.4161); // Armor
		AddStaticPickup(PICKUP_ARMOR,2,-504.9502,2027.8844,43.7017); // Armour
		AddStaticPickup(PICKUP_PARACHUTE,2,-352.3621,1601.4336,164.5686); // Parachute Maybe

		for (new i=0 ; i<vehicle_counter ; i++) {
	        cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			if (vehicle_modelid[i]==V_RUSTLER) {
			    cant_drive_vehicle[TEAM_COP][i] = 1;
			    cant_drive_vehicle[TEAM_PSYCHO][i] = 1;
			}
			if (vehicle_modelid[i]==V_NRG500) {
			    cant_drive_vehicle[TEAM_COP][i] = 1;
			    cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			    cant_drive_vehicle[TEAM_BODYGUARD][i] = 1;
			}
			if (vehicle_modelid[i]==V_AT400) {
			    cant_drive_vehicle[TEAM_COP][i] = 1;
			    cant_drive_vehicle[TEAM_PSYCHO][i] = 1;
			    cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			    cant_drive_vehicle[TEAM_BODYGUARD][i] = 1;
			    cant_drive_vehicle[TEAM_TERRORIST][i] = 1;
			}
		}


		for (new i=0 ; i<pickup_counter ; i++) {
		    if (pickup_weaponid[i]==WEAPON_MINIGUN)
	        	pickup_unauthorised[TEAM_PRIMEMINISTER][i] = 1;
		}

		game_boundary_max_x = 924;
		game_boundary_min_x = -661;
		game_boundary_max_y = 2567;
		game_boundary_min_y = 450;

		banned_cuboid = 1;

		banned_cuboid_max_x = 230;
		banned_cuboid_min_x = 225;
		banned_cuboid_max_y = 1874;
		banned_cuboid_min_y = 1869;
		banned_cuboid_max_z = 14;
		banned_cuboid_min_z = 0;

		banned_cuboid_tele_x = 213.3158;
		banned_cuboid_tele_y = 1868.9786;
		banned_cuboid_tele_z = 13.1406;
		banned_cuboid_tele_a = 0;


		AddStaticVehicle2(V_AT400,-158.2105,2269.3345,400,304.3342,-1,-1); // crashed plane

		AddTeamSpawn(TEAM_PRIMEMINISTER,-158.2105,2269.3345,430,304.3342);
		AddTeamLineSpawn(TEAM_BODYGUARD, 124.5988,1916.5383,18.9541, 165.6270,1917.3433,18.4533);
		AddTeamLineSpawn(TEAM_COP, -388.2652, 2253.8987, 42.0938, -376.3261, 2202.0403, 42.0938);
		AddTeamLineSpawn(TEAM_TERRORIST, -345.4248,1530.7903,75.3570, -294.2874,1531.7491,75.3594);
		AddTeamLineSpawn(TEAM_PSYCHO, -82.2612,1383.4824,10.2407, -77.5519,1347.3890,10.8599);


		intel_north = game_boundary_min_y + 0.66 * (game_boundary_max_y-game_boundary_min_y);
		intel_south = game_boundary_min_y + 0.33 * (game_boundary_max_y-game_boundary_min_y);
		intel_east = game_boundary_min_x + 0.66 * (game_boundary_max_x-game_boundary_min_x);
		intel_west = game_boundary_min_x + 0.33 * (game_boundary_max_x-game_boundary_min_x);
		intel_feature = "the desert";


		wardrobe_interior = 0;
		wardrobe_player_x = -346.3293;
		wardrobe_player_y = 1626.5712;
		wardrobe_player_z = 136.3119;
		wardrobe_player_orientation = 0.0;
		wardrobe_camera_x = wardrobe_player_x+5;
		wardrobe_camera_y = wardrobe_player_y+3;
		wardrobe_camera_z = wardrobe_player_z+5;


		class_psycho1 = AddPlayerClass2(230,WEAPON_DEAGLE,100,WEAPON_DILDO,-1,0,0);
		class_psycho2 = AddPlayerClass2(212,WEAPON_DEAGLE,100,WEAPON_DILDO,-1,0,0);
		class_psycho3 = AddPlayerClass2(200,WEAPON_DEAGLE,100,WEAPON_DILDO,-1,0,0);
		class_psycho4 = AddPlayerClass2(137,WEAPON_DEAGLE,100,WEAPON_DILDO,-1,0,0);

		class_terrorist1 = AddPlayerClass2(181, WEAPON_COLT45,100, WEAPON_SHOTGUN,100, WEAPON_KNIFE,-1);
		class_terrorist2 = AddPlayerClass2(183, WEAPON_COLT45,100, WEAPON_SHOTGUN,100, WEAPON_KNIFE,-1);
		class_terrorist3 = AddPlayerClass2(179, WEAPON_COLT45,100, WEAPON_SHOTGUN,100, WEAPON_KNIFE,-1);
		class_terrorist4 = AddPlayerClass2(191, WEAPON_COLT45,100, WEAPON_SHOTGUN,100, WEAPON_KNIFE,-1);
		class_terrorist5 = AddPlayerClass2(111, WEAPON_COLT45,100, WEAPON_SHOTGUN,100, WEAPON_KNIFE,-1);
		class_terrorist6 = AddPlayerClass2(73,  WEAPON_COLT45,100, WEAPON_SHOTGUN,100, WEAPON_KNIFE,-1);
		class_terrorist7 = AddPlayerClass2(100, WEAPON_COLT45,100, WEAPON_SHOTGUN,100, WEAPON_KNIFE,-1);
		class_terrorist_medic = AddPlayerClass2(274, WEAPON_COLT45,100,WEAPON_SHOTGUN,100,WEAPON_KNIFE,-1);

		class_primeminister = AddPlayerClass2(147,WEAPON_CANE,-1,WEAPON_SPRAYCAN,300, WEAPON_PARACHUTE,-1);

		class_bodyguard1 = AddPlayerClass2(163,WEAPON_SILENCED,100,WEAPON_TEC9,75, WEAPON_SPRAYCAN,300);
		class_bodyguard2 = AddPlayerClass2(164,WEAPON_SILENCED,100,WEAPON_TEC9,75, WEAPON_SPRAYCAN,300);
		class_bodyguard3 = AddPlayerClass2(165,WEAPON_SILENCED,100,WEAPON_TEC9,75, WEAPON_SPRAYCAN,300);
		class_bodyguard4 = AddPlayerClass2(166,WEAPON_SILENCED,100,WEAPON_TEC9,75, WEAPON_SPRAYCAN,300);
		class_bodyguard5 = AddPlayerClass2(141,WEAPON_SILENCED,100,WEAPON_TEC9,75, WEAPON_SPRAYCAN,300);
		class_bodyguard_medic = AddPlayerClass2(276, WEAPON_SILENCED,100,WEAPON_KNIFE,-1,WEAPON_SPRAYCAN,300);


		class_cop1  = AddPlayerClass2(280, WEAPON_SHOTGSPA,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop2  = AddPlayerClass2(281, WEAPON_SHOTGSPA,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop3  = AddPlayerClass2(282, WEAPON_SHOTGSPA,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop4  = AddPlayerClass2(283, WEAPON_SHOTGSPA,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop5  = AddPlayerClass2(284, WEAPON_SHOTGSPA,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop6  = AddPlayerClass2(285, WEAPON_SHOTGSPA,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop7  = AddPlayerClass2(286, WEAPON_SHOTGSPA,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop8  = AddPlayerClass2(288, WEAPON_SHOTGSPA,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop9  = AddPlayerClass2(246, WEAPON_SHOTGSPA,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop_medic  = AddPlayerClass2(275, WEAPON_DEAGLE,100,WEAPON_KNIFE,-1,WEAPON_SPRAYCAN,300);

		class_team[class_psycho1] = TEAM_PSYCHO;
		class_team[class_psycho2] = TEAM_PSYCHO;
		class_team[class_psycho3] = TEAM_PSYCHO;
		class_team[class_psycho4] = TEAM_PSYCHO;

		class_team[class_terrorist1] = TEAM_TERRORIST;
		class_team[class_terrorist2] = TEAM_TERRORIST;
		class_team[class_terrorist3] = TEAM_TERRORIST;
		class_team[class_terrorist4] = TEAM_TERRORIST;
		class_team[class_terrorist5] = TEAM_TERRORIST;
		class_team[class_terrorist6] = TEAM_TERRORIST;
		class_team[class_terrorist7] = TEAM_TERRORIST;
		class_team[class_terrorist_medic] = TEAM_TERRORIST;

		class_team[class_primeminister] = TEAM_PRIMEMINISTER;
		class_team[class_bodyguard1] = TEAM_BODYGUARD;
		class_team[class_bodyguard2] = TEAM_BODYGUARD;
		class_team[class_bodyguard3] = TEAM_BODYGUARD;
		class_team[class_bodyguard4] = TEAM_BODYGUARD;
		class_team[class_bodyguard5] = TEAM_BODYGUARD;
		class_team[class_bodyguard_medic] = TEAM_BODYGUARD;

		class_team[class_cop1] = TEAM_COP;
		class_team[class_cop2] = TEAM_COP;
		class_team[class_cop3] = TEAM_COP;
		class_team[class_cop4] = TEAM_COP;
		class_team[class_cop5] = TEAM_COP;
		class_team[class_cop6] = TEAM_COP;
		class_team[class_cop7] = TEAM_COP;
		class_team[class_cop8] = TEAM_COP;
		class_team[class_cop9] = TEAM_COP;
		class_team[class_cop_medic] = TEAM_COP;

		pm_health_bonus = 1;


	} else if (map==3) {



		AddStaticPickup(PICKUP_ARMOR,2,244.6849,1858.7109,14.0840); // cop armour
		AddStaticPickup(PICKUP_JETPACK,2,268.4451,1884.2373,-30.0938); // jetpack
		AddStaticPickup(PICKUP_ARMOR,2,268.5153,1891.2520,-12.8603); // armour bottom (terrorist)
		AddStaticPickup(PICKUP_ARMOR,2,220.1820,1822.7550,7.5216); // bg armour

		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,50,263.0227,1878.9073,-30.3906,30,WP_SYNCED); // flame thrower (right at the bottom)
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,80,276.5279,1886.5530,8.4375,15,WP_SYNCED); // uzi jetpack top

		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,80,271.6212,1873.7330,8.7578,30,WP_UNSYNCED); // uzi terrorist

		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,24,330.1199,1848.1210,7.7266,20,WP_SYNCED); // sawnoff
		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,24,287.9067,1824.1339,7.7340,20,WP_SYNCED); // sawnoff

		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,80,275.7653,1841.6360,9.3473,20,WP_SYNCED); // uzi on duct (in corridor)
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,80,293.8852,1820.1926,4.7109,20,WP_SYNCED); // uzi under stairs
		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,80,272.7304,1816.0725,1.0078,40,WP_SYNCED); // ak

		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,80,245.4331,1818.4679,7.5547,7,WP_UNSYNCED); // top room middle
		AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,24,239.1696,1834.3403,7.0865,15,WP_SYNCED); // shotgspa
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,50,246.3053,1830.4159,12.2121,25,WP_SYNCED);  // top flamethrower
		AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,80,239.4735,1836.7117,10.7606,20,WP_SYNCED); // mp5

		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,80,255.3534,1802.6709,7.4713,WP_NO_RESPAWN,WP_UNSYNCED); // bguard uzi
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,80,244.8132,1877.1115,8.7578,WP_NO_RESPAWN,WP_UNSYNCED); // cop uzi





		banned_cuboid = 1;

		banned_cuboid_max_x = 230;
		banned_cuboid_min_x = 225;
		banned_cuboid_max_y = 1874;
		banned_cuboid_min_y = 1869;
		banned_cuboid_max_z = 14;
		banned_cuboid_min_z = 0;

		banned_cuboid_tele_x = 248.8800;
		banned_cuboid_tele_y = 1849.9883;
		banned_cuboid_tele_z = 8.7734;


		AddTeamSpawn(TEAM_PRIMEMINISTER,214.8228,1823.0508,6.4141,90);

		AddTeamSpawn(TEAM_PSYCHO,260.1531,1816.7098,1.0078,268.6017);
		AddTeamSpawn(TEAM_PSYCHO,291.4659,1815.6201,1.0078,246.0415);
		AddTeamSpawn(TEAM_PSYCHO,277.7576,1825.1091,7.8281,173.6376);
		AddTeamSpawn(TEAM_PSYCHO,277.8398,1839.2059,7.8281,278.9185);
		AddTeamSpawn(TEAM_PSYCHO,312.8518,1839.8718,7.8281,281.7384);
		AddTeamSpawn(TEAM_PSYCHO,297.2137,1845.4871,7.7266,350.0457);

		AddStaticVehicle2(V_TUG,303.1669,1856.8157,7.5121,269.8915,-1,-1); // tug
		AddStaticVehicle2(V_TUG,288.5635,1838.0925,7.4930,90.0084,-1,-1); // forklift
		AddStaticVehicle2(V_FLATBED,292.1649,1816.7781,5.1529,89.9380,-1,-1); // big truck
		AddStaticVehicle2(V_MESA,250.0213,1851.8928,8.5318,0.7202,-1,-1); // mesa
		AddStaticVehicle2(V_FORKLIFT,258.2811,1858.4617,8.5234,359.2342,-1,-1); // forklift

		AddTeamSpawn(TEAM_PSYCHO,268.6386,1888.1619,-29.5313,179.8573);


		AddTeamLineSpawn(TEAM_BODYGUARD, 236.1139,1830.8975,7.4141, 236.3620,1802.6598,7.4141);
		AddTeamLineSpawn(TEAM_COP, 240.7006,1860.3549,8.7578, 240.2447,1843.9711,8.7578);
		AddTeamLineSpawn(TEAM_COP, 262.5329,1850.7712,8.7578, 262.4048,1872.0902,8.7578);
		AddTeamLineSpawn(TEAM_TERRORIST, 279.3932,1855.5127,8.7649, 264.9245,1854.9965,8.7578);


		intel_north = game_boundary_min_y + 0.66 * (game_boundary_max_y-game_boundary_min_y);
		intel_south = game_boundary_min_y + 0.33 * (game_boundary_max_y-game_boundary_min_y);
		intel_east = game_boundary_min_x + 0.66 * (game_boundary_max_x-game_boundary_min_x);
		intel_west = game_boundary_min_x + 0.33 * (game_boundary_max_x-game_boundary_min_x);
		intel_feature = "Area 51";


		wardrobe_interior = 0;
		wardrobe_player_x = 324.4081;
		wardrobe_player_y = 1847.7921;
		wardrobe_player_z = 7.5;
		wardrobe_player_orientation = 90.0;

		wardrobe_camera_x = 314.4081;
		wardrobe_camera_y = 1847.7921;
		wardrobe_camera_z = 8.3;


		class_psycho1 = AddPlayerClass2(230,WEAPON_DEAGLE,15,WEAPON_DILDO,-1,0,0);
		class_psycho2 = AddPlayerClass2(212,WEAPON_DEAGLE,15,WEAPON_DILDO,-1,0,0);
		class_psycho3 = AddPlayerClass2(200,WEAPON_DEAGLE,15,WEAPON_DILDO,-1,0,0);
		class_psycho4 = AddPlayerClass2(137,WEAPON_DEAGLE,15,WEAPON_DILDO,-1,0,0);

		class_terrorist1 = AddPlayerClass2(181, WEAPON_COLT45,30, 0,0, 0,0);
		class_terrorist2 = AddPlayerClass2(183, WEAPON_COLT45,30, 0,0, 0,0);
		class_terrorist3 = AddPlayerClass2(179, WEAPON_COLT45,30, 0,0, 0,0);
		class_terrorist4 = AddPlayerClass2(191, WEAPON_COLT45,30, 0,0, 0,0);
		class_terrorist5 = AddPlayerClass2(111, WEAPON_COLT45,30, 0,0, 0,0);
		class_terrorist6 = AddPlayerClass2(73,  WEAPON_COLT45,30, 0,0, 0,0);
		class_terrorist7 = AddPlayerClass2(100, WEAPON_COLT45,30, 0,0, 0,0);
		class_terrorist_medic = AddPlayerClass2(274, 0,0, 0,0, 0,0);

		class_primeminister = AddPlayerClass2(147,WEAPON_CANE,-1,WEAPON_SPRAYCAN,300, 0,0);

		class_bodyguard1 = AddPlayerClass2(163,WEAPON_SILENCED,30, 0,0, 0,0);
		class_bodyguard2 = AddPlayerClass2(164,WEAPON_SILENCED,30, 0,0, 0,0);
		class_bodyguard3 = AddPlayerClass2(165,WEAPON_SILENCED,30, 0,0, 0,0);
		class_bodyguard4 = AddPlayerClass2(166,WEAPON_SILENCED,30, 0,0, 0,0);
		class_bodyguard5 = AddPlayerClass2(141,WEAPON_SILENCED,30, 0,0, 0,0);
		class_bodyguard_medic = AddPlayerClass2(276, 0,0, 0,0, 0,0);


		class_cop1  = AddPlayerClass2(280, WEAPON_SHOTGSPA,6, 0,0, 0,0);
		class_cop2  = AddPlayerClass2(281, WEAPON_SHOTGSPA,6, 0,0, 0,0);
		class_cop3  = AddPlayerClass2(282, WEAPON_SHOTGSPA,6, 0,0, 0,0);
		class_cop4  = AddPlayerClass2(283, WEAPON_SHOTGSPA,6, 0,0, 0,0);
		class_cop5  = AddPlayerClass2(284, WEAPON_SHOTGSPA,6, 0,0, 0,0);
		class_cop6  = AddPlayerClass2(285, WEAPON_SHOTGSPA,6, 0,0, 0,0);
		class_cop7  = AddPlayerClass2(286, WEAPON_SHOTGSPA,6, 0,0, 0,0);
		class_cop8  = AddPlayerClass2(288, WEAPON_SHOTGSPA,6, 0,0, 0,0);
		class_cop9  = AddPlayerClass2(246, WEAPON_SHOTGSPA,6, 0,0, 0,0);
		class_cop_medic  = AddPlayerClass2(275, WEAPON_DEAGLE,12, 0,0, 0,0);

		class_team[class_psycho1] = TEAM_PSYCHO;
		class_team[class_psycho2] = TEAM_PSYCHO;
		class_team[class_psycho3] = TEAM_PSYCHO;
		class_team[class_psycho4] = TEAM_PSYCHO;

		class_team[class_terrorist1] = TEAM_TERRORIST;
		class_team[class_terrorist2] = TEAM_TERRORIST;
		class_team[class_terrorist3] = TEAM_TERRORIST;
		class_team[class_terrorist4] = TEAM_TERRORIST;
		class_team[class_terrorist5] = TEAM_TERRORIST;
		class_team[class_terrorist6] = TEAM_TERRORIST;
		class_team[class_terrorist7] = TEAM_TERRORIST;
		class_team[class_terrorist_medic] = TEAM_TERRORIST;

		class_team[class_primeminister] = TEAM_PRIMEMINISTER;
		class_team[class_bodyguard1] = TEAM_BODYGUARD;
		class_team[class_bodyguard2] = TEAM_BODYGUARD;
		class_team[class_bodyguard3] = TEAM_BODYGUARD;
		class_team[class_bodyguard4] = TEAM_BODYGUARD;
		class_team[class_bodyguard5] = TEAM_BODYGUARD;
		class_team[class_bodyguard_medic] = TEAM_BODYGUARD;

		class_team[class_cop1] = TEAM_COP;
		class_team[class_cop2] = TEAM_COP;
		class_team[class_cop3] = TEAM_COP;
		class_team[class_cop4] = TEAM_COP;
		class_team[class_cop5] = TEAM_COP;
		class_team[class_cop6] = TEAM_COP;
		class_team[class_cop7] = TEAM_COP;
		class_team[class_cop8] = TEAM_COP;
		class_team[class_cop9] = TEAM_COP;
		class_team[class_cop_medic] = TEAM_COP;

		pm_health_bonus = 0;

	} else if (map==4) {

		AddStaticVehicle2(V_TURISMO, 2040.0520,1319.2799,10.3779,183.2439, -1,-1);
		AddStaticVehicle2(V_BANSHEE, 2040.5247,1359.2783,10.3516,177.1306, -1,-1);
		AddStaticVehicle2(V_WASHING, 2110.4102,1398.3672,10.7552,359.5964, -1,-1);
		AddStaticVehicle2(V_INFERNUS, 2074.9624,1479.2120,10.3990,359.6861, -1,-1);
		AddStaticVehicle2(V_ZR350, 2075.6038,1666.9750,10.4252,359.7507, -1,-1);
		AddStaticVehicle2(V_BULLET, 2119.5845,1938.5969,10.2967,181.9064, -1,-1);
		AddStaticVehicle2(V_BULLET, 1843.7881,1216.0122,10.4556,270.8793, -1,-1);
		AddStaticVehicle2(V_BUFFALO, 1944.1003,1344.7717,8.9411,0.8168, -1,-1);
		AddStaticVehicle2(V_BUFFALO, 1679.2278,1316.6287,10.6520,180.4150, -1,-1);
		AddStaticVehicle2(V_CHEETAH, 1685.4872,1751.9667,10.5990,268.1183, -1,-1);
		AddStaticVehicle2(V_INFERNUS, 2034.5016,1912.5874,11.9048,0.2909, -1,-1);
		AddStaticVehicle2(V_INFERNUS, 2172.1682,1988.8643,10.5474,89.9151, -1,-1);
		AddStaticVehicle2(V_BANSHEE, 2245.5759,2042.4166,10.5000,270.7350, -1,-1);
		AddStaticVehicle2(V_ZR350, 2361.1538,1993.9761,10.4260,178.3929, -1,-1);
		AddStaticVehicle2(V_SUNRISE, 2221.9946,1998.7787,9.6815,92.6188, -1,-1);
		AddStaticVehicle2(V_URANUS, 2243.3833,1952.4221,14.9761,359.4796, -1,-1);
		AddStaticVehicle2(V_EUROS, 2276.7085,1938.7263,31.5046,359.2321, -1,-1);
		AddStaticVehicle2(V_EUROS, 2602.7769,1853.0667,10.5468,91.4813, -1,-1);
		AddStaticVehicle2(V_PHOENIX, 2610.7600,1694.2588,10.6585,89.3303, -1,-1);
		AddStaticVehicle2(V_EUROS, 2635.2419,1075.7726,10.5472,89.9571, -1,-1);
		AddStaticVehicle2(V_ELEGY, 2577.2354,1038.8063,10.4777,181.7069, -1,-1);
		AddStaticVehicle2(V_ELEGY, 2394.1021,989.4888,10.4806,89.5080, -1,-1);
		AddStaticVehicle2(V_ELEGY, 1881.0510,957.2120,10.4789,270.4388, -1,-1);
		AddStaticVehicle2(V_SLAMVAN, 2039.1257,1545.0879,10.3481,359.6690, -1,-1);
		AddStaticVehicle2(V_SLAMVAN, 2009.8782,2411.7524,10.5828,178.9618, -1,-1);
		AddStaticVehicle2(V_BANSHEE, 2010.0841,2489.5510,10.5003,268.7720, -1,-1);
		AddStaticVehicle2(V_CHEETAH, 2076.4033,2468.7947,10.5923,359.9186, -1,-1);
//		AddStaticVehicle2(V_MAVERICK, 2093.2754,2414.9421,74.7556,89.0247, -1,-1);
		AddStaticVehicle2(V_SUPERGT, 2352.9026,2577.9768,10.5201,0.4091, -1,-1);
		AddStaticVehicle2(V_SUPERGT, 2166.6963,2741.0413,10.5245,89.7816, -1,-1);
		AddStaticVehicle2(V_INFERNUS, 1960.9989,2754.9072,10.5473,200.4316, -1,-1);
		AddStaticVehicle2(V_BANSHEE, 1919.5863,2760.7595,10.5079,100.0753, -1,-1);
		AddStaticVehicle2(V_CHEETAH, 1673.8038,2693.8044,10.5912,359.7903, -1,-1);
		AddStaticVehicle2(V_BUFFALO, 1591.0482,2746.3982,10.6519,172.5125, -1,-1);
		AddStaticVehicle2(V_PHOENIX, 1580.4537,2838.2886,10.6614,181.4573, -1,-1);
		AddStaticVehicle2(V_SUNRISE, 1555.2734,2750.5261,10.6388,91.7773, -1,-1);
		AddStaticVehicle2(V_SLAMVAN, 1455.9305,2878.5288,10.5837,181.0987, -1,-1);
		AddStaticVehicle2(V_ZR350, 1537.8425,2578.0525,10.5662,0.0650, -1,-1);
		AddStaticVehicle2(V_TURISMO, 1433.1594,2607.3762,10.3781,88.0013, -1,-1);
		AddStaticVehicle2(V_PHOENIX, 2223.5898,1288.1464,10.5104,182.0297, -1,-1);
		AddStaticVehicle2(V_URANUS, 2451.6707,1207.1179,10.4510,179.8960, -1,-1);
		AddStaticVehicle2(V_SUNRISE, 2461.7253,1357.9705,10.6389,180.2927, -1,-1);
		AddStaticVehicle2(V_URANUS, 2461.8162,1629.2268,10.4496,181.4625, -1,-1);
		AddStaticVehicle2(V_ZR350, 2395.7554,1658.9591,10.5740,359.7374, -1,-1);
		AddStaticVehicle2(V_PEREN, 1553.3696,1020.2884,10.5532,270.6825, -1,-1);
		AddStaticVehicle2(V_LANDSTAL, 1380.8304,1159.1782,10.9128,355.7117, -1,-1);
		AddStaticVehicle2(V_MOONBEAM, 1383.4630,1035.0420,10.9131,91.2515, -1,-1);
		AddStaticVehicle2(V_PEREN, 1445.4526,974.2831,10.5534,1.6213, -1,-1);
		AddStaticVehicle2(V_LANDSTAL, 1704.2365,940.1490,10.9127,91.9048, -1,-1);
		AddStaticVehicle2(V_PEREN, 1658.5463,1028.5432,10.5533,359.8419, -1,-1);
		AddStaticVehicle2(V_FCR900, 1677.6628,1040.1930,10.4136,178.7038, -1,-1);
		AddStaticVehicle2(V_FCR900, 1383.6959,1042.2114,10.4121,85.7269, -1,-1);
		AddStaticVehicle2(V_FCR900, 1064.2332,1215.4158,10.4157,177.2942, -1,-1);
		AddStaticVehicle2(V_FCR900, 1111.4536,1788.3893,10.4158,92.4627, -1,-1);
		AddStaticVehicle2(V_NRG500, 953.2818,1806.1392,8.2188,235.0706, -1,-1);
		AddStaticVehicle2(V_NRG500, 995.5328,1886.6055,10.5359,90.1048, -1,-1);
		AddStaticVehicle2(V_FCR900, 993.7083,2267.4133,11.0315,1.5610, -1,-1);
		AddStaticVehicle2(V_SLAMVAN, 1439.5662,1999.9822,10.5843,0.4194, -1,-1);
		AddStaticVehicle2(V_NRG500, 1430.2354,1999.0144,10.3896,352.0951, -1,-1);
		AddStaticVehicle2(V_NRG500, 2156.3540,2188.6572,10.2414,22.6504, -1,-1);
//		AddStaticVehicle2(V_COPCARVG, 2277.6846,2477.1096,10.5652,180.1090, -1,-1);
//		AddStaticVehicle2(V_COPCARVG, 2268.9888,2443.1697,10.5662,181.8062, -1,-1);
//		AddStaticVehicle2(V_COPCARVG, 2256.2891,2458.5110,10.5680,358.7335, -1,-1);
//		AddStaticVehicle2(V_COPCARVG, 2251.6921,2477.0205,10.5671,179.5244, -1,-1);
//		AddStaticVehicle2(V_COPBIKE, 2294.7305,2441.2651,10.3860,9.3764, -1,-1);
//		AddStaticVehicle2(V_COPBIKE, 2290.7268,2441.3323,10.3944,16.4594, -1,-1);
		AddStaticVehicle2(V_NRG500, 2476.7900,2532.2222,21.4416,0.5081, -1,-1);
		AddStaticVehicle2(V_NRG500, 2580.5320,2267.9595,10.3917,271.2372, -1,-1);
		AddStaticVehicle2(V_NRG500, 2814.4331,2364.6641,10.3907,89.6752, -1,-1);
		AddStaticVehicle2(V_SLAMVAN, 2827.4143,2345.6953,10.5768,270.0668, -1,-1);
		AddStaticVehicle2(V_FCR900, 1670.1089,1297.8322,10.3864,359.4936, -1,-1);
//		AddStaticVehicle2(V_MAVERICK, 1614.7153,1548.7513,11.2749,347.1516, -1,-1);
//		AddStaticVehicle2(V_MAVERICK, 1647.7902,1538.9934,11.2433,51.8071, -1,-1);
//		AddStaticVehicle2(V_MAVERICK, 1608.3851,1630.7268,11.2840,174.5517, -1,-1);
//		AddStaticVehicle2(V_RUSTLER, 1283.0006,1324.8849,9.5332,275.0468, -1,-1);
//		AddStaticVehicle2(V_RUSTLER, 1283.5107,1361.3171,9.5382,271.1684, -1,-1);
//		AddStaticVehicle2(V_RUSTLER, 1283.6847,1386.5137,11.5300,272.1003, -1,-1);
//		AddStaticVehicle2(V_RUSTLER, 1288.0499,1403.6605,11.5295,243.5028, -1,-1);
		AddStaticVehicle2(V_CHEETAH, 1319.1038,1279.1791,10.5931,0.9661, -1,-1);
		AddStaticVehicle2(V_FCR900, 1710.5763,1805.9275,10.3911,176.5028, -1,-1);
		AddStaticVehicle2(V_FCR900, 2805.1650,2027.0028,10.3920,357.5978, -1,-1);
		AddStaticVehicle2(V_SLAMVAN, 2822.3628,2240.3594,10.5812,89.7540, -1,-1);
		AddStaticVehicle2(V_FCR900, 2876.8013,2326.8418,10.3914,267.8946, -1,-1);
		AddStaticVehicle2(V_BANSHEE, 2842.0554,2637.0105,10.5000,182.2949, -1,-1);
		AddStaticVehicle2(V_TAMPA, 2494.4214,2813.9348,10.5172,316.9462, -1,-1);
		AddStaticVehicle2(V_TAMPA, 2327.6484,2787.7327,10.5174,179.5639, -1,-1);
		AddStaticVehicle2(V_TAMPA, 2142.6970,2806.6758,10.5176,89.8970, -1,-1);
		AddStaticVehicle2(V_FCR900, 2139.7012,2799.2114,10.3917,229.6327, -1,-1);
		AddStaticVehicle2(V_FCR900, 2104.9446,2658.1331,10.3834,82.2700, -1,-1);
		AddStaticVehicle2(V_FCR900, 1914.2322,2148.2590,10.3906,267.7297, -1,-1);
		AddStaticVehicle2(V_TAMPA, 1904.7527,2157.4312,10.5175,183.7728, -1,-1);
		AddStaticVehicle2(V_TAMPA, 1532.6139,2258.0173,10.5176,359.1516, -1,-1);
		AddStaticVehicle2(V_FCR900, 1534.3204,2202.8970,10.3644,4.9108, -1,-1);
		AddStaticVehicle2(V_TAMPA, 1613.1553,2200.2664,10.5176,89.6204, -1,-1);
		AddStaticVehicle2(V_LANDSTAL, 1552.1292,2341.7854,10.9126,274.0815, -1,-1);
		AddStaticVehicle2(V_PEREN, 1637.6285,2329.8774,10.5538,89.6408, -1,-1);
		AddStaticVehicle2(V_LANDSTAL, 1357.4165,2259.7158,10.9126,269.5567, -1,-1);
		AddStaticVehicle2(V_INFERNUS, 1281.7458,2571.6719,10.5472,270.6128, -1,-1);
		AddStaticVehicle2(V_NRG500, 1305.5295,2528.3076,10.3955,88.7249, -1,-1);
		AddStaticVehicle2(V_FCR900, 993.9020,2159.4194,10.3905,88.8805, -1,-1);
		AddStaticVehicle2(V_CHEETAH, 1512.7134,787.6931,10.5921,359.5796, -1,-1);
		AddStaticVehicle2(V_NRG500, 2299.5872,1469.7910,10.3815,258.4984, -1,-1);
		AddStaticVehicle2(V_NRG500, 2133.6428,1012.8537,10.3789,87.1290, -1,-1);
		AddStaticVehicle2(V_CHEETAH, 2266.7336,648.4756,11.0053,177.8517, -1,-1);
		AddStaticVehicle2(V_FCR900, 2404.6636,647.9255,10.7919,183.7688, -1,-1);
		AddStaticVehicle2(V_SUPERGT, 2628.1047,746.8704,10.5246,352.7574, -1,-1);
		AddStaticVehicle2(V_TAMPA, 2808.7822,900.1909,10.4548,182.4576, -1,-1);
		AddStaticVehicle2(V_ELEGY, 1919.8829,947.1886,10.4715,359.4453, -1,-1);
		AddStaticVehicle2(V_ELEGY, 1881.6346,1006.7653,10.4783,86.9967, -1,-1);
		AddStaticVehicle2(V_ELEGY, 2038.1044,1006.4022,10.4040,179.2641, -1,-1);
		AddStaticVehicle2(V_ELEGY, 2038.1614,1014.8566,10.4057,179.8665, -1,-1);
		AddStaticVehicle2(V_ELEGY, 2038.0966,1026.7987,10.4040,180.6107, -1,-1);
		AddStaticVehicle2(V_BOBCAT, 9.1065,1165.5066,19.5855,2.1281, -1,-1);
		AddStaticVehicle2(V_FREEWAY, 19.8059,1163.7103,19.1504,346.3326, -1,-1);
		AddStaticVehicle2(V_FREEWAY, 12.5740,1232.2848,18.8822,121.8670, -1,-1);
		AddStaticVehicle2(V_WAYFARER, 69.4633,1217.0189,18.3304,158.9345, -1,-1);
		AddStaticVehicle2(V_WAYFARER, -199.4185,1223.0405,19.2624,176.7001, -1,-1);
//		AddStaticVehicle2(V_RUSTLER, 325.4121,2538.5999,17.5184,181.2964, -1,-1);
//		AddStaticVehicle2(V_RUSTLER, 291.0975,2540.0410,17.5276,182.7206, -1,-1);
		AddStaticVehicle2(V_TORNADO, 384.2365,2602.1763,16.0926,192.4858, -1,-1);
		AddStaticVehicle2(V_WAYFARER, 423.8012,2541.6870,15.9708,338.2426, -1,-1);
		AddStaticVehicle2(V_WAYFARER, -244.0047,2724.5439,62.2077,51.5825, -1,-1);
		AddStaticVehicle2(V_WAYFARER, -311.1414,2659.4329,62.4513,310.9601, -1,-1);
		AddStaticVehicle2(V_SADLER, 596.8064,866.2578,-43.2617,186.8359, -1,-1);
		AddStaticVehicle2(V_SADLER, 835.0838,836.8370,11.8739,14.8920, -1,-1);
		AddStaticVehicle2(V_TAMPA, 843.1893,838.8093,12.5177,18.2348, -1,-1);
		AddStaticVehicle2(V_LANDSTAL, -235.9767,1045.8623,19.8158,180.0806, -1,-1);
//		AddStaticVehicle2(V_COPCARRU, -211.5940,998.9857,19.8437,265.4935, -1,-1);
		AddStaticVehicle2(V_BOBCAT, -304.0620,1024.1111,19.5714,94.1812, -1,-1);
		AddStaticVehicle2(V_HOTDOG, -290.2229,1317.0276,54.1871,81.7529, -1,-1);
		AddStaticVehicle2(V_TURISMO, -290.3145,1567.1534,75.0654,133.1694, -1,-1);
		AddStaticVehicle2(V_PATRIOT, 280.4914,1945.6143,17.6317,310.3278, -1,-1);
		AddStaticVehicle2(V_PATRIOT, 272.2862,1949.4713,17.6367,285.9714, -1,-1);
		AddStaticVehicle2(V_PATRIOT, 271.6122,1961.2386,17.6373,251.9081, -1,-1);
		AddStaticVehicle2(V_PATRIOT, 279.8705,1966.2362,17.6436,228.4709, -1,-1);
		AddStaticVehicle2(V_BARRACKS, 277.6437,1985.7559,18.0772,270.4079, -1,-1);
		AddStaticVehicle2(V_BARRACKS, 277.4477,1994.8329,18.0773,267.7378, -1,-1);
		AddStaticVehicle2(V_BANDITO, -441.3438,2215.7026,42.2489,191.7953, -1,-1);
		AddStaticVehicle2(V_BANDITO, -422.2956,2225.2612,42.2465,0.0616, -1,-1);
		AddStaticVehicle2(V_BANDITO, -371.7973,2234.5527,42.3497,285.9481, -1,-1);
		AddStaticVehicle2(V_BANDITO, -360.1159,2203.4272,42.3039,113.6446, -1,-1);
		AddStaticVehicle2(V_SANCHEZ, -660.7385,2315.2642,138.3866,358.7643, -1,-1);
//		AddStaticVehicle2(V_SKIMMER, -1029.2648,2237.2217,42.2679,260.5732, -1,-1);
		AddStaticVehicle2(V_ESPERANT, 95.0568,1056.5530,13.4068,192.1461, -1,-1);
		AddStaticVehicle2(V_BANSHEE, 114.7416,1048.3517,13.2890,174.9752, -1,-1);
		AddStaticVehicle2(V_INFERNUS, -290.0065,1759.4958,42.4154,89.7571, -1,-1);
		AddStaticVehicle2(V_NRG500, -302.5649,1777.7349,42.2514,238.5039, -1,-1);
		AddStaticVehicle2(V_NRG500, -302.9650,1776.1152,42.2588,239.9874, -1,-1);
		AddStaticVehicle2(V_FELTZER, -301.0404,1750.8517,42.3966,268.7585, -1,-1);
		AddStaticVehicle2(V_SLAMVAN, -866.1774,1557.2700,23.8319,269.3263, -1,-1);
		AddStaticVehicle2(V_SUNRISE, -799.3062,1518.1556,26.7488,88.5295, -1,-1);
		AddStaticVehicle2(V_FCR900, -749.9730,1589.8435,26.5311,125.6508, -1,-1);
		AddStaticVehicle2(V_NRG500, -867.8612,1544.5282,22.5419,296.0923, -1,-1);
		AddStaticVehicle2(V_YOSEMITE, -904.2978,1553.8269,25.9229,266.6985, -1,-1);
		AddStaticVehicle2(V_FCR900, -944.2642,1424.1603,29.6783,148.5582, -1,-1);
		AddStaticVehicle2(V_BANSHEE, -237.7157,2594.8804,62.3828,178.6802, -1,-1);
		AddStaticVehicle2(V_FREEWAY, -196.3012,2774.4395,61.4775,303.8402, -1,-1);
//		AddStaticVehicle2(V_SHAMAL, -1341.1079,-254.3787,15.0701,321.6338, -1,-1);
//		AddStaticVehicle2(V_SHAMAL, -1371.1775,-232.3967,15.0676,315.6091, -1,-1);
//		AddStaticVehicle2(V_SHAMAL, 1642.9850,-2425.2063,14.4744,159.8745, -1,-1);
//		AddStaticVehicle2(V_SHAMAL, 1734.1311,-2426.7563,14.4734,172.2036, -1,-1);
		AddStaticVehicle2(V_CHEETAH, -680.9882,955.4495,11.9032,84.2754, -1,-1);
//		AddStaticVehicle2(V_SKIMMER, -816.3951,2222.7375,43.0045,268.1861, -1,-1);
//		AddStaticVehicle2(V_SKIMMER, -94.6885,455.4018,1.5719,250.5473, -1,-1);
//		AddStaticVehicle2(V_SKIMMER, 1624.5901,565.8568,1.7817,200.5292, -1,-1);
//		AddStaticVehicle2(V_SKIMMER, 1639.3567,572.2720,1.5311,206.6160, -1,-1);
//		AddStaticVehicle2(V_SKIMMER, 2293.4219,517.5514,1.7537,270.7889, -1,-1);
//		AddStaticVehicle2(V_SKIMMER, 2354.4690,518.5284,1.7450,270.2214, -1,-1);
//		AddStaticVehicle2(V_SKIMMER, 772.4293,2912.5579,1.0753,69.6706, -1,-1);
		AddStaticVehicle2(V_SULTAN, 2133.0769,1019.2366,10.5259,90.5265, -1,-1);
		AddStaticVehicle2(V_SULTAN, 2142.4023,1408.5675,10.5258,0.3660, -1,-1);
		AddStaticVehicle2(V_SULTAN, 2196.3340,1856.8469,10.5257,179.8070, -1,-1);
		AddStaticVehicle2(V_SULTAN, 2103.4146,2069.1514,10.5249,270.1451, -1,-1);
		AddStaticVehicle2(V_SULTAN, 2361.8042,2210.9951,10.3848,178.7366, -1,-1);
		AddStaticVehicle2(V_SULTAN, -1993.2465,241.5329,34.8774,310.0117, -1,-1);
		AddStaticVehicle2(V_JESTER, -1989.3235,270.1447,34.8321,88.6822, -1,-1);
		AddStaticVehicle2(V_JESTER, -1946.2416,273.2482,35.1302,126.4200, -1,-1);
		AddStaticVehicle2(V_URANUS, -1956.8257,271.4941,35.0984,71.7499, -1,-1);
		AddStaticVehicle2(V_ELEGY, -1952.8894,258.8604,40.7082,51.7172, -1,-1);
		AddStaticVehicle2(V_INFERNUS, -1949.8689,266.5759,40.7776,216.4882, -1,-1);
		AddStaticVehicle2(V_BANSHEE, -1988.0347,305.4242,34.8553,87.0725, -1,-1);
		AddStaticVehicle2(V_JESTER, -1657.6660,1213.6195,6.9062,282.6953, -1,-1);
		AddStaticVehicle2(V_SULTAN, -1658.3722,1213.2236,13.3806,37.9052, -1,-1);
		AddStaticVehicle2(V_URANUS, -1660.8994,1210.7589,20.7875,317.6098, -1,-1);
		AddStaticVehicle2(V_SUNRISE, -1645.2401,1303.9883,6.8482,133.6013, -1,-1);
//		AddStaticVehicle2(V_SKIMMER, -1333.1960,903.7660,1.5568,0.5095, -1,-1);
		AddStaticVehicle2(V_INFERNUS, 113.8611,1068.6182,13.3395,177.1330, -1,-1);
		AddStaticVehicle2(V_BANSHEE, 159.5199,1185.1160,14.7324,85.5769, -1,-1);
		AddStaticVehicle2(V_INFERNUS, 612.4678,1694.4126,6.7192,302.5539, -1,-1);
		AddStaticVehicle2(V_NRG500, 661.7609,1720.9894,6.5641,19.1231, -1,-1);
		AddStaticVehicle2(V_NRG500, 660.0554,1719.1187,6.5642,12.7699, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 711.4207,1947.5208,5.4056,179.3810, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 1031.8435,1920.3726,11.3369,89.4978, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 1112.3754,1747.8737,10.6923,270.9278, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 1641.6802,1299.2113,10.6869,271.4891, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 2135.8757,1408.4512,10.6867,180.4562, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 2262.2639,1469.2202,14.9177,91.1919, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 2461.7380,1345.5385,10.6975,0.9317, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 2804.4365,1332.5348,10.6283,271.7682, -1,-1);
		AddStaticVehicle2(V_SULTAN, 2805.1685,1361.4004,10.4548,270.2340, -1,-1);
		AddStaticVehicle2(V_SUPERGT, 2853.5378,1361.4677,10.5149,269.6648, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 2633.9832,2205.7061,10.6868,180.0076, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 2119.9751,2049.3127,10.5423,180.1963, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 2785.0261,-1835.0374,9.6874,226.9852, -1,-1);
		AddStaticVehicle2(V_SAVANNA, 2787.8975,-1876.2583,9.6966,0.5804, -1,-1);
		AddStaticVehicle2(V_INFERNUS, 2771.2993,-1841.5620,9.4870,20.7678, -1,-1);
		AddStaticVehicle2(V_TAXI, 1713.9319,1467.8354,10.5219,342.8006, -1,-1);

		AddTeamSpawn(TEAM_PSYCHO,1958.3783,1343.1572,15.3746,270.0);
		AddTeamSpawn(TEAM_PSYCHO,2199.6531,1393.3678,10.8203,180.0);
		AddTeamSpawn(TEAM_PSYCHO,2483.5977,1222.0825,10.8203,0.0);
		AddTeamSpawn(TEAM_PSYCHO,2637.2712,1129.2743,11.1797,180.0);
		AddTeamSpawn(TEAM_PSYCHO,2000.0106,1521.1111,17.0625,0.0);
		AddTeamSpawn(TEAM_PSYCHO,2024.8190,1917.9425,12.3386,270.0);
		AddTeamSpawn(TEAM_PSYCHO,2261.9048,2035.9547,10.8203,180.0);
		AddTeamSpawn(TEAM_PSYCHO,2262.0986,2398.6572,10.8203,0.0);
		AddTeamSpawn(TEAM_PSYCHO,2244.2566,2523.7280,10.8203,180.0);
		AddTeamSpawn(TEAM_PSYCHO,2335.3228,2786.4478,10.8203,0.0);
		AddTeamSpawn(TEAM_PSYCHO,2150.0186,2734.2297,11.1763,0.0);
		AddTeamSpawn(TEAM_PSYCHO,2158.0811,2797.5488,10.8203,180.0);
		AddTeamSpawn(TEAM_PSYCHO,1969.8301,2722.8564,10.8203,0.0);
		AddTeamSpawn(TEAM_PSYCHO,1652.0555,2709.4072,10.8265,0.0);
		AddTeamSpawn(TEAM_PSYCHO,1564.0052,2756.9463,10.8203,90.0);
		AddTeamSpawn(TEAM_PSYCHO,1271.5452,2554.0227,10.8203,270.0);
		AddTeamSpawn(TEAM_PSYCHO,1441.5894,2567.9099,10.8203,0.0);
		AddTeamSpawn(TEAM_PSYCHO,1480.6473,2213.5718,11.0234,270.0);
		AddTeamSpawn(TEAM_PSYCHO,1400.5906,2225.6960,11.0234,0.0);
		AddTeamSpawn(TEAM_PSYCHO,1598.8419,2221.5676,11.0625,180.0);
		AddTeamSpawn(TEAM_PSYCHO,1318.7759,1251.3580,10.8203,0.0);
		AddTeamSpawn(TEAM_PSYCHO,1558.0731,1007.8292,10.8125,270.0);
		AddTeamSpawn(TEAM_PSYCHO,1705.2347,1025.6808,10.8203,90.0);
		//AddTeamSpawn(TEAM_PSYCHO,-857.0551,1536.6832,22.5870);   Out of Town Spawns
		//AddTeamSpawn(TEAM_PSYCHO,817.3494,856.5039,12.7891);0
		//AddTeamSpawn(TEAM_PSYCHO,116.9315,1110.1823,13.6094);
		//AddTeamSpawn(TEAM_PSYCHO,-18.8529,1176.0159,19.5634);
		//AddTeamSpawn(TEAM_PSYCHO,-315.0575,1774.0636,43.6406);

		AddTeamLineSpawn(TEAM_TERRORIST,2874.4514,891.5120,10.7500, 2874.8750,944.4780,10.7500);

		AddTeamLineSpawn(TEAM_COP,2247.0796,2480.5366,3.2734, 2246.4861,2430.7244,3.2734);

		AddTeamLineSpawn(TEAM_BODYGUARD,1675.2441,1425.9346,10.7788, 1691.8999,1386.1178,10.7452);

		AddTeamSpawn(TEAM_PRIMEMINISTER, 1665.9780,1421.6775,10.7880,261.1286);


		new Float: size = 100;  // unfortunately they all have to be the same size because of a bug in SAMP

		AddObjective(1380.8204,2170.2781,11.0234,"watch the baseball",size);
		AddObjective(1924.1240,704.1882,11.1328,"entertain secretary at seedy motel",size,60);
		AddObjective(2310.8726,2453.2222,10.8203,"present medal to police officer",size);
		AddObjective(2580.0117,2386.1125,15.8500,"relax at the pool",size,60);
		AddObjective(2226.7800,1040.0394,5.8203,"picnic with casino boss",size);
		AddObjective(1950.8372,1343.0806,9.1094,"open a new casino",size,60);
		AddObjective(2644.2302,826.2061,5.8203,"give speech to construction workers",size,45);
		AddObjective(2497.9041,1174.5298,22.0113,"brief james bond on rooftop",size);
		AddObjective(2027.9860,1915.7321,12.1685,"open new hotel",size,40);
		AddObjective(2323.6707,1283.2654,90.6161,"squeeze a lemon",size);
		AddObjective(2238.5603,1838.3208,10.8203,"labour party dinner at the clown's",size);
		//AddObjective(2582.2400,2434.9856,10.8203,"play some basketball",size);  checkpoint is far too big
		AddObjective(1142.4071,1309.8445,10.8203,"brush up on driving skills",size,40);
		AddObjective(1666.0759,1054.5537,11.1907,"meet trade union exec",size,60);
		AddObjective(940.6886,2070.9167,10.3928,"collect bribe from mafia boss",size,45);
		AddObjective(2173.9888,2793.8699,10.3835,"munch on a tasty burger",size);
		AddObjective(1859.9961,2848.3381,10.8359,"play some tennis",size);
		AddObjective(1377.2706,2782.9211,10.9611,"play a round of golf",size);
		AddObjective(2630.2900,2051.6941,10.5170,"meet mistress at seedy motel",size);
		AddObjective(2522.6184,2377.5398,3.9326,"meet oil tycoon in car park",size,60);
		AddObjective(1562.5179,1323.5089,10.5475,"meet president fido at plane",size,15);
		AddObjective(2597.5571,1811.3174,10.9766,"buy cheri a new dress",size,40);
		AddObjective(1501.4535,750.6229,16.0054,"go to confessions",size);

		AddStaticVehicle2(V_TAMPA,2513.8765,2368.1816,3.9390,85.5409,-1,-1); // tampa
		AddStaticVehicle2(V_SAVANNA,2510.8699,2397.8613,3.9283,7.0816,-1,-1); // savanna
		AddStaticVehicle2(V_SLAMVAN,2537.6511,2397.4429,3.9339,358.6610,-1,-1); // slamvan
		AddStaticVehicle2(V_LANDSTAL,2540.1926,2363.2505,3.9329,88.0596,-1,-1); // landstal
		AddStaticVehicle2(V_SHAMAL,1562.5179,1323.5089,10.5475,334.7085,-1,-1); // shamal

		AddStaticVehicle2(V_FBIRANCH,1716.6511,1387.6346,10.1719,195.3732,-1,-1); // fbiranch
		AddStaticVehicle2(V_FBIRANCH,1713.9792,1397.3528,10.1771,195.5063,-1,-1); // fbiranch
		AddStaticVehicle2(V_STRETCH,1711.7006,1405.5538,10.1757,195.4851,-1,-1); // limo
		AddStaticVehicle2(V_FBIRANCH,1708.9426,1416.8193,10.1718,192.9204,-1,-1); // fbiranch
		AddStaticVehicle2(V_NEWSVAN,1717.1743,1433.9290,10.2928,177.0596,-1,-1); // newsvan
		AddStaticVehicle2(V_COPBIKE,1718.0765,1380.7115,10.6894,195.7436,-1,-1); // cop bike
		AddStaticVehicle2(V_COPBIKE,1719.1389,1381.5099,10.0587,196.9333,-1,-1); // copbike

		AddStaticPickup(PICKUP_ARMOR,2,1720.7655,1421.6407,10.6406);


		wardrobe_interior = 10;
        wardrobe_player_x = 1955.3408;
		wardrobe_player_y = 1019.0750;
		wardrobe_player_z = 992.4688;
		wardrobe_player_orientation = 127.6004;
		wardrobe_camera_x = wardrobe_player_x - 0.5;
		wardrobe_camera_y = wardrobe_player_y - 3.0;
		wardrobe_camera_z = wardrobe_player_z + 2.0;


		game_boundary_max_x = 3034.0212;
		game_boundary_min_x = 763.8895;
		game_boundary_max_y = 2994.7202;
		game_boundary_min_y = 525.6904;

		AddStaticVehicle2(V_NRG500,2848.1685,915.0026,10.5222,99.9024,-1,-1); // nrg
		AddStaticVehicle2(V_FCR900,2853.1367,923.1398,10.5225,92.1160,-1,-1); // fcr
		AddStaticVehicle2(V_FCR900,2855.5422,929.4323,10.5203,86.2880,-1,-1); // fcr
		AddStaticVehicle2(V_BURRITO,2840.2390,960.1940,10.5213,173.6817,-1,-1); // huntley
		AddStaticVehicle2(V_BURRITO,2830.1165,963.1138,10.5229,5.9503,-1,-1); // huntley
		AddStaticVehicle2(V_SLAMVAN,2812.8147,965.9282,10.5222,92.2067,-1,-1); // van or something
		AddStaticVehicle2(V_BENSON,2826.4226,911.6951,10.5260,93.4742,-1,-1); // minivan
		AddStaticVehicle2(V_TAMPA,2802.0010,899.7051,10.5257,182.4596,-1,-1); // glenshit
		AddStaticVehicle2(V_TAMPA,2804.8748,899.9962,10.5228,187.1934,-1,-1); // glenshit
		AddStaticVehicle2(V_WAYFARER,2850.9485,936.1880,10.5229,359.2170,-1,-1); // wayfarer
		AddStaticVehicle2(V_WAYFARER,2850.9075,933.1924,10.5203,359.2168,-1,-1); // wayfarer
		AddStaticVehicle2(V_WAYFARER,2850.8469,928.7164,10.5197,359.2164,-1,-1); // wayfarer


		AddStaticVehicle2(V_SWATVAN,2223.5107,2453.2517,-7.8801,268.2045,-1,-1); // swat tank
		AddStaticVehicle2(V_SWATVAN,2227.1729,2462.8828,-7.8858,268.8480,-1,-1); // swat tank
		AddStaticVehicle2(V_COPCARVG,2314.9893,2460.0833,3.0197,268.9429,-1,-1); // cop car
		AddStaticVehicle2(V_COPCARVG,2314.5588,2470.2651,3.0193,271.6169,-1,-1); //
		AddStaticVehicle2(V_COPCARRU,2311.8721,2431.6428,3.0219,180.7283,-1,-1); // copcarru
		AddStaticVehicle2(V_COPCARRU,2303.3135,2431.7693,3.0199,180.1414,-1,-1); //
		AddStaticVehicle2(V_COPCARRU,2294.3782,2431.3086,3.0165,178.5332,-1,-1); //
		AddStaticVehicle2(V_COPCARVG,2277.0938,2430.8738,3.0175,358.4374,-1,-1); // copcar
		AddStaticVehicle2(V_COPCARVG,2255.1445,2431.7939,3.0171,358.1542,-1,-1); // copcar
		AddStaticVehicle2(V_COPCARVG,2314.0994,2484.8403,3.0163,271.4961,-1,-1); // copcar
		AddStaticVehicle2(V_ENFORCER,2286.2075,2474.7297,3.0213,357.8531,-1,-1); // cop van
		AddStaticVehicle2(V_ENFORCER,2277.2646,2474.8477,3.0187,357.6639,-1,-1); //
		AddStaticVehicle2(V_ENFORCER,2263.4182,2475.9897,3.4054,359.4711,-1,-1); // enforcer
		AddStaticVehicle2(V_COPBIKE, 295.5503,2455.9656,2.8444,272.6913, -1,-1);
		AddStaticVehicle2(V_COPBIKE,2297.9265,2448.2090,2.8325,256.5524,-1,-1);
		AddStaticVehicle2(V_COPBIKE,2297.2913,2464.0583,2.8477,311.1149,-1,-1);


		AddStaticPickup(PICKUP_PARACHUTE, 2, 1710.3359,1614.3585,10.1191); //para
		AddStaticPickup(PICKUP_PARACHUTE, 2, 1964.4523,1917.0341,130.9375); //para
		AddStaticPickup(PICKUP_PARACHUTE, 2, 2055.7258,2395.8589,150.4766); //para
		AddStaticPickup(PICKUP_PARACHUTE, 2, 2265.0120,1672.3837,94.9219); //para
		AddStaticPickup(PICKUP_PARACHUTE, 2, 2265.9739,1623.4060,94.9219); //para

		class_psycho1 = AddPlayerClass2(230,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_psycho2 = AddPlayerClass2(212,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_psycho3 = AddPlayerClass2(200,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);
		class_psycho4 = AddPlayerClass2(137,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);

		class_terrorist1 = AddPlayerClass2(181, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist2 = AddPlayerClass2(183, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist3 = AddPlayerClass2(179, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist4 = AddPlayerClass2(191, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist5 = AddPlayerClass2(111, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist6 = AddPlayerClass2(73,  WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist7 = AddPlayerClass2(100, WEAPON_SILENCED,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist_medic = AddPlayerClass2(274, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);

		class_primeminister = AddPlayerClass2(147,WEAPON_CANE,-1,WEAPON_SPRAYCAN,1000, WEAPON_PARACHUTE,-1);

		class_bodyguard1 = AddPlayerClass2(163,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard2 = AddPlayerClass2(164,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard3 = AddPlayerClass2(165,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard4 = AddPlayerClass2(166,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard5 = AddPlayerClass2(141,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard_medic = AddPlayerClass2(276, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);


		class_cop1  = AddPlayerClass2(280, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop2  = AddPlayerClass2(281, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop3  = AddPlayerClass2(282, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop4  = AddPlayerClass2(283, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop5  = AddPlayerClass2(284, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop6  = AddPlayerClass2(285, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop7  = AddPlayerClass2(286, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop8  = AddPlayerClass2(288, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop9  = AddPlayerClass2(246, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop_medic  = AddPlayerClass2(275, WEAPON_PARACHUTE,-1,WEAPON_DEAGLE,100,WEAPON_SPRAYCAN,300);

		class_team[class_psycho1] = TEAM_PSYCHO;
		class_team[class_psycho2] = TEAM_PSYCHO;
		class_team[class_psycho3] = TEAM_PSYCHO;
		class_team[class_psycho4] = TEAM_PSYCHO;

		class_team[class_terrorist1] = TEAM_TERRORIST;
		class_team[class_terrorist2] = TEAM_TERRORIST;
		class_team[class_terrorist3] = TEAM_TERRORIST;
		class_team[class_terrorist4] = TEAM_TERRORIST;
		class_team[class_terrorist5] = TEAM_TERRORIST;
		class_team[class_terrorist6] = TEAM_TERRORIST;
		class_team[class_terrorist7] = TEAM_TERRORIST;
		class_team[class_terrorist_medic] = TEAM_TERRORIST;

		class_team[class_primeminister] = TEAM_PRIMEMINISTER;
		class_team[class_bodyguard1] = TEAM_BODYGUARD;
		class_team[class_bodyguard2] = TEAM_BODYGUARD;
		class_team[class_bodyguard3] = TEAM_BODYGUARD;
		class_team[class_bodyguard4] = TEAM_BODYGUARD;
		class_team[class_bodyguard5] = TEAM_BODYGUARD;
		class_team[class_bodyguard_medic] = TEAM_BODYGUARD;

		class_team[class_cop1] = TEAM_COP;
		class_team[class_cop2] = TEAM_COP;
		class_team[class_cop3] = TEAM_COP;
		class_team[class_cop4] = TEAM_COP;
		class_team[class_cop5] = TEAM_COP;
		class_team[class_cop6] = TEAM_COP;
		class_team[class_cop7] = TEAM_COP;
		class_team[class_cop8] = TEAM_COP;
		class_team[class_cop9] = TEAM_COP;
		class_team[class_cop_medic] = TEAM_COP;

		obj_required = 5;
		round_time = 20*60;

		pm_health_bonus = 1;

	} else if (map==5) { // airplane map

		AddStaticVehicle2(V_AT400,1586.941,1190.642,10.863,180,42,42); // shamal
		AddTeamLineSpawn(TEAM_PSYCHO,1522.6755,1500,10.8722,1522.6755,1332.6536,10.8722,8);
				for (new i=0 ; i<10 ; i++) {
			AddStaticVehicle2(V_SHAMAL, 1477 ,1792-50*i,12,180, -1,-1);
		}

		AddStaticVehicle2(V_CARGOBOB,-2333.3040,-1604.9382,483.7232,0,-1,-1); // psycho lev
		AddStaticVehicle2(V_STUNT,-2340.4287,-1633.2748,483.6993,0,-1,-1); // psycho lev
		AddStaticVehicle2(V_CROPDUST,-2304.9675,-1651.2964,483.5964,0,-1,-1); // pscyho lev
		AddStaticVehicle2(V_LEVIATHN,-2292.3298,-1639.0908,483.7004,0,-1,-1); // psycho lev
		AddTeamLineSpawn(TEAM_PSYCHO,-2303.9551,-1621.2914,483.8109, -2322.7146,-1648.5337,483.7031,1);

		AddStaticVehicle2(V_DODO,    1580,-1250,278,0,6,65); // pm's vehicle
		AddStaticVehicle2(V_MAVERICK,1580,-1230,278,90,6,65); // pm's vehicle
		AddStaticVehicle2(V_BEAGLE,  1560,-1230,278,180,6,65); // pm's vehicle
		AddStaticVehicle2(V_STUNT,   1560,-1250,278,270,6,65); // pm's vehicle
		AddTeamSpawn(TEAM_PRIMEMINISTER,1555.7621,-1248.0868,277.8814,296.2882);

		for (new i=0 ; i<12 ; i++) {
			AddStaticVehicle2(V_RUSTLER, 1986-30*i ,-2587,14,90, 86,86);
			AddStaticVehicle2(V_RUSTLER, 1986-30*(i+0.5) ,-2601,14,90, 86,86);
			AddStaticVehicle2(V_RUSTLER, 1986-30*i ,-2501,14,90, 86,86);
			AddStaticVehicle2(V_RUSTLER, 1986-30*(i+0.5) ,-2485,14,90, 86,86);
		}
		AddTeamLineSpawn(TEAM_BODYGUARD,1900,-2620,14,1800,-2620,14, 3);
		AddTeamLineSpawn(TEAM_BODYGUARD,1800,-2450,13.6,1900,-2450,13.6, 3);

		for (new i=0 ; i<20 ; i++) {
			AddStaticVehicle2(V_RUSTLER, 23+20*i ,2512,17,90, 85,85);
			AddStaticVehicle2(V_RUSTLER, 23+20*(i+0.5) ,2490,17,90, 85,85);
		}
		AddTeamLineSpawn(TEAM_TERRORIST,30,2533,17,250,2533,17, 5);

		for (new i=0 ; i<30 ; i++) {
			AddStaticVehicle2(V_RUSTLER, -1298-15*i ,205-15*i,14,315, 79,79);
			AddStaticVehicle2(V_RUSTLER, -1298-15*(i+0.5) ,185-15*(i+0.5),14,315, 79,79);
		}
		AddStaticVehicle2(V_POLMAV,-1200,174,14.3253,356.9969,79,79); // MAV
		AddStaticVehicle2(V_POLMAV,-1210,184,14.3253,356.9969,79,79); // MAV
		AddStaticVehicle2(V_POLMAV,-1220,194,14.3253,356.9969,79,79); // MAV
		AddTeamLineSpawn(TEAM_COP,-1273,165,14,-1342,92,14, 3);


		AddStaticVehicle2(V_HUNTER,-311.5647,-1414.4816,17.0296,324.4063,-1,-1,true); // hunter
		AddStaticVehicle2(V_HYDRA,2328.8586,52.7626,34.6373,177.5168,-1,-1,true); // hydra
		AddStaticVehicle2(V_SEASPAR,-1271.2039,499.1599,18.4078,263.0863,-1,-1,true); // SPARROW
		AddStaticVehicle2(V_SEASPAR,-1424.2411,500.2336,18.4057,267.5629,-1,-1,true); // SPARROW

		for (new i=0 ; i<vehicle_counter ; i++) {
			if (vehicle_modelid[i]==V_RUSTLER) {
		        cant_drive_vehicle[TEAM_PSYCHO][i] = 1;
		    }
			if (vehicle_modelid[i]==V_SHAMAL) {
		        cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
		    }
		    if (vehicle_safehouse_excluded[i]) {
		        cant_drive_vehicle[TEAM_PSYCHO][i] = 1;
		        cant_drive_vehicle[TEAM_COP][i] = 1;
		        cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			}
		}


		wardrobe_interior = 0;
        wardrobe_player_x = 0;
		wardrobe_player_y = 0;
		wardrobe_player_z = 200;
		wardrobe_player_orientation = 127.6004;
		wardrobe_camera_x = wardrobe_player_x - 0.5;
		wardrobe_camera_y = wardrobe_player_y - 3.0;
		wardrobe_camera_z = wardrobe_player_z + 2.0;


		game_boundary_max_x = 3000;
		game_boundary_min_x = -3000;
		game_boundary_max_y = 3000;
		game_boundary_min_y = -3000;


		class_psycho1 = AddPlayerClass2(230,WEAPON_COLT45,12,-1,-1,-1,-1);
		class_psycho2 = AddPlayerClass2(212,WEAPON_COLT45,12,-1,-1,-1,-1);
		class_psycho3 = AddPlayerClass2(200,WEAPON_COLT45,12,-1,-1,-1,-1);
		class_psycho4 = AddPlayerClass2(137,WEAPON_COLT45,12,-1,-1,-1,-1);

		class_terrorist1 = AddPlayerClass2(181, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_terrorist2 = AddPlayerClass2(183, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_terrorist3 = AddPlayerClass2(179, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_terrorist4 = AddPlayerClass2(191, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_terrorist5 = AddPlayerClass2(111, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_terrorist6 = AddPlayerClass2(73,  WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_terrorist7 = AddPlayerClass2(100, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_terrorist_medic = INVALID_CLASS;

		class_primeminister = AddPlayerClass2(147,WEAPON_CANE,-1,WEAPON_SPRAYCAN,100, -1,-1);

		class_bodyguard1 = AddPlayerClass2(163, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_bodyguard2 = AddPlayerClass2(164, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_bodyguard3 = AddPlayerClass2(165, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_bodyguard4 = AddPlayerClass2(166, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_bodyguard5 = AddPlayerClass2(141, WEAPON_COLT45,12, WEAPON_MP5,300, -1,-1);
		class_bodyguard_medic = INVALID_CLASS;


		class_cop1  = AddPlayerClass2(280, WEAPON_COLT45,12, WEAPON_MP5,300,-1,-1);
		class_cop2  = AddPlayerClass2(281, WEAPON_COLT45,12, WEAPON_MP5,300,-1,-1);
		class_cop3  = AddPlayerClass2(282, WEAPON_COLT45,12, WEAPON_MP5,300,-1,-1);
		class_cop4  = AddPlayerClass2(283, WEAPON_COLT45,12, WEAPON_MP5,300,-1,-1);
		class_cop5  = AddPlayerClass2(284, WEAPON_COLT45,12, WEAPON_MP5,300,-1,-1);
		class_cop6  = AddPlayerClass2(285, WEAPON_COLT45,12, WEAPON_MP5,300,-1,-1);
		class_cop7  = AddPlayerClass2(286, WEAPON_COLT45,12, WEAPON_MP5,300,-1,-1);
		class_cop8  = AddPlayerClass2(288, WEAPON_COLT45,12, WEAPON_MP5,300,-1,-1);
		class_cop9  = AddPlayerClass2(246, WEAPON_COLT45,12, WEAPON_MP5,300,-1,-1);
		class_cop_medic = INVALID_CLASS;

		class_team[class_psycho1] = TEAM_PSYCHO;
		class_team[class_psycho2] = TEAM_PSYCHO;
		class_team[class_psycho3] = TEAM_PSYCHO;
		class_team[class_psycho4] = TEAM_PSYCHO;

		class_team[class_terrorist1] = TEAM_TERRORIST;
		class_team[class_terrorist2] = TEAM_TERRORIST;
		class_team[class_terrorist3] = TEAM_TERRORIST;
		class_team[class_terrorist4] = TEAM_TERRORIST;
		class_team[class_terrorist5] = TEAM_TERRORIST;
		class_team[class_terrorist6] = TEAM_TERRORIST;
		class_team[class_terrorist7] = TEAM_TERRORIST;

		class_team[class_primeminister] = TEAM_PRIMEMINISTER;
		class_team[class_bodyguard1] = TEAM_BODYGUARD;
		class_team[class_bodyguard2] = TEAM_BODYGUARD;
		class_team[class_bodyguard3] = TEAM_BODYGUARD;
		class_team[class_bodyguard4] = TEAM_BODYGUARD;
		class_team[class_bodyguard5] = TEAM_BODYGUARD;

		class_team[class_cop1] = TEAM_COP;
		class_team[class_cop2] = TEAM_COP;
		class_team[class_cop3] = TEAM_COP;
		class_team[class_cop4] = TEAM_COP;
		class_team[class_cop5] = TEAM_COP;
		class_team[class_cop6] = TEAM_COP;
		class_team[class_cop7] = TEAM_COP;
		class_team[class_cop8] = TEAM_COP;
		class_team[class_cop9] = TEAM_COP;

		round_time = 15*60;

		pm_can_drown = 1;
		pm_abandoned_health_penalty = 5;

		pm_initially_imprisoned = 1;

		intel_north = game_boundary_min_y + 0.66 * (game_boundary_max_y-game_boundary_min_y);
		intel_south = game_boundary_min_y + 0.33 * (game_boundary_max_y-game_boundary_min_y);
		intel_east = game_boundary_min_x + 0.66 * (game_boundary_max_x-game_boundary_min_x);
		intel_west = game_boundary_min_x + 0.33 * (game_boundary_max_x-game_boundary_min_x);
		intel_feature = "San Andreas";

/*
		pm_prison_west = 1553;
		pm_prison_east = 1595;
		pm_prison_north = -1220;
		pm_prison_south = -1264;
*/

		pm_prison_west = game_boundary_min_x;
		pm_prison_east = game_boundary_max_x;
		pm_prison_south = game_boundary_min_y;
		pm_prison_north = game_boundary_max_y;

		safehouse_exists = 1;
		safehouse_x = 222;
		safehouse_y = 407;
		safehouse_z = 200;
		safehouse_exclusion = 300;

	} else if (map==6) {


		AddStaticVehicle2(V_COPCARSF,-2373.6489,-2189.1133,33.2589, 306.1899,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-2384.9880,-2190.4351,33.1205, 271.7669,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-2399.0864,-2193.6462,33.1207, 291.7810,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-2407.5723,-2203.2969,33.1206, 354.4473,-1,-1);
		AddStaticVehicle2(V_ENFORCER,-2397.4343,-2167.4753,33.1448, 269.6390,-1,-1);
        AddStaticVehicle2(V_SWATVAN,-2372.1985,-2168.1006,33.1763, 266.6502,-1,-1);
        AddStaticVehicle2(V_ENFORCER,-2382.5354,-2167.6113,33.4210,270.1384,-1,-1);
		AddStaticVehicle2(V_COPCARRU,-2377.6465,-2228.4419,33.1208, 353.7873,-1,-1);
		AddStaticVehicle2(V_COPCARRU,-2386.4207,-2227.5403,33.1206, 359.7560,-1,-1);
		AddStaticVehicle2(V_COPCARRU,-2394.6575,-2226.2749,33.1209, 354.7045,-1,-1); // 10
		AddStaticVehicle2(V_COPCARRU,-2406.1470,-2224.0122,33.1208, 358.4010,-1,-1);
		AddStaticVehicle2(V_COPBIKE,-2378.3643,-2209.2053,33.1208, 326.5068,-1,-1);
        AddStaticVehicle2(V_COPBIKE,-2366.6592,-2197.8884,33.3654, 289.0352,-1,-1);
		AddStaticVehicle2(V_BUFFALO,-2815.9453,-1512.4061,139.0715, 272.2700 ,-1,-1);
		AddStaticVehicle2(V_BUFFALO, -2815.9370,-1536.1644,139.0702, 277.8143,-1,-1);
		AddStaticVehicle2(V_BUFFALO,-2814.7424,-1505.6492,139.0691, 262.9542 ,-1,-1);
		AddStaticVehicle2(V_LEVIATHN,-2390.6204,-2204.1663,33.3788,117.7673 ,-1,-1);
		AddStaticVehicle2(V_CARGOBOB,-1885.5658,-1533.3868,23.4462,173.7907,-1,-1);
		AddStaticVehicle2(V_CARGOBOB,-1827.6298,-1572.0697,23.4160,121.4971,-1,-1);
		AddStaticVehicle2(V_MONSTER,-1990.9425,-1454.9397,87.2293,141.1646,-1,-1); //20
		AddStaticVehicle2(V_MONSTER,-1983.2312,-1459.7136,87.1853,120.9004,-1,-1);
		AddStaticVehicle2(V_MONSTER,-1982.1433,-1469.3402,86.5387,100.9334,-1,-1);
		AddStaticVehicle2(V_MONSTER,-1982.9606,-1479.0107,85.4821,103.0794,-1,-1);
		AddStaticVehicle2(V_MONSTER,-1982.5193,-1490.3038,85.5715,79.3180,-1,-1);
		AddStaticVehicle2(V_RUSTLER,-1960.9373,-1597.9121,86.9930,179.5480,-1,-1,true);
		AddStaticVehicle2(V_RUSTLER,-1980.9554,-1589.0686,87.5481,180.3195,-1,-1,true);
		AddStaticVehicle2(V_RUSTLER,-2379.8350,-2286.5393,17.1092,123.2685,-1,-1,true);
		AddStaticVehicle2(V_RUSTLER,-2373.2949,-2296.2078,19.0660,125.2730,-1,-1,true);
		AddStaticVehicle2(V_RUSTLER,-2904.9067,-1389.0231,11.1150,21.6618,-1,-1,true);
		AddStaticVehicle2(V_BEAGLE,-2198.7346,-2131.2871,48.6255,204.3451,-1,-1,true); // 30
		AddStaticVehicle2(V_BEAGLE,-2910.8594,-1408.5975,12.8633,44.4641,-1,-1,true);
		AddStaticVehicle2(V_DODO,-2136.7048,-2056.8174,63.8336,172.2179,-1,-1,true);
		AddStaticVehicle2(V_DODO,-2915.7021,-1861.3938,31.7442,10.3758,-1,-1,true);
		AddStaticVehicle2(V_DODO,-2881.3860,-1508.7205,136.5421,90.3337,-1,-1,true);
		AddStaticVehicle2(V_LANDSTAL,-2815.0845,-1541.7048,139.3728,285.3298,-1,-1);
		AddStaticVehicle2(V_LANDSTAL,-2812.6074,-1547.8026,139.8271,281.6122,-1,-1);
		AddStaticVehicle2(V_LANDSTAL,-2807.2344,-1511.0553,139.1206,269.4672,-1,-1);
		AddStaticVehicle2(V_LANDSTAL,-2822.0288,-1498.3555,139.1208,264.5773,-1,-1);
		AddStaticVehicle2(V_LANDSTAL,-2818.3213,-1491.7410,139.0995,266.7462,-1,-1);
		AddStaticVehicle2(V_ZR350,-2771.7834,-1530.8959,139.2209,85.5879,-1,-1); // 40
		AddStaticVehicle2(V_ZR350,-2773.4927,-1510.8029,138.1146,81.8501,-1,-1);
		AddStaticVehicle2(V_ZR350,-2785.5688,-1515.0902,138.4556,72.2713,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2801.5635,-1513.3973,138.8572,268.4358,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2802.6350,-1516.0708,138.8569,269.2060,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2802.1323,-1518.5948,138.8576,268.7362,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2801.0457,-1523.2094,138.8468,270.6464,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2808.7576,-1530.3390,140.4086,181.8249,-1,-1);
		AddStaticVehicle2(V_COMET,-2014.8441,-1480.3762,83.9815,198.4703,-1,-1);
		AddStaticVehicle2(V_COMET,-2010.4569,-1493.0989,84.0092,201.6919,-1,-1);
		AddStaticVehicle2(V_COMET,-2007.6163,-1506.0615,84.6317,190.6711,-1,-1); // 50
		AddStaticVehicle2(V_HUNTLEY,-1996.2604,-1451.8334,87.1934,145.0126,-1,-1);
		AddStaticVehicle2(V_HUNTLEY,-1982.9974,-1496.6965,86.0771,84.5245,-1,-1);
		AddStaticVehicle2(V_HUNTLEY,-1970.9158,-1509.7953,88.4100,89.5364,-1,-1);
		AddStaticVehicle2(V_HUNTLEY,-1965.3683,-1520.5060,90.3538,150.3880,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-1999.2424,-1578.2704,86.4753,182.4734,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-1999.4883,-1564.9413,86.2433,178.7807,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-1991.5387,-1571.0326,86.5412,185.6543,-1,-1);
		AddStaticVehicle2(V_STRETCH,-1968.4734,-1599.4694,87.4364,144.7384,-1,-1);
		AddStaticVehicle2(V_QUAD,-2003.1709,-1599.8164,87.5026,271.9611,-1,-1);
		AddStaticVehicle2(V_QUAD,-2003.2914,-1606.0265,87.7402,267.2109,-1,-1); // 60
		AddStaticVehicle2(V_SANCHEZ,-2028.8821,-1450.5828,91.0469,218.0506,-1,-1);
		AddStaticVehicle2(V_DUMPER,-1902.9093,-1627.7791,22.1280,180.0736,-1,-1);
		AddStaticVehicle2(V_DUMPER,-1823.0953,-1651.3756,22.1213,88.6411,-1,-1);
		AddStaticVehicle2(V_DUMPER,-1930.1538,-1703.4938,23.2751,271.0763,-1,-1);
		AddStaticVehicle2(V_ADMIRAL,-1893.7970,-1693.0510,21.6189,271.5607,-1,-1);
		AddStaticVehicle2(V_ADMIRAL,-1857.5566,-1623.6881,22.3006,184.5594,-1,-1);
		AddStaticVehicle2(V_TRASH,-1890.7816,-1750.5702,22.2951,303.5776,-1,-1);

		AddStaticVehicle2(V_BUFFALO,-2329.0088,-1822.3352,436.7441,7.7643,-1,-1);
		AddStaticVehicle2(V_CHEETAH,-2390.1665,-1866.5256,405.0624,100.9337,-1,-1);
		AddStaticVehicle2(V_BOBCAT,-2413.5105,-1824.7920,415.4131,37.8859,-1,-1); // 70
		AddStaticVehicle2(V_MTBIKE,-2433.0752,-1812.8022,411.7278,112.0382,-1,-1);
		AddStaticVehicle2(V_CLOVER,-2478.9880,-1798.2788,406.3089,47.3762,-1,-1);
		AddStaticVehicle2(V_STALLION,-2517.1333,-1726.7825,402.0662,11.9676,-1,-1);
		AddStaticVehicle2(V_GLENDALE,-2533.1794,-1667.5564,401.2312,21.7438,-1,-1);
		AddStaticVehicle2(V_SANDKING,-2379.7205,-1454.8885,384.9155,278.6467,-1,-1);
		AddStaticVehicle2(V_FELTZER,-2262.1548,-1485.7367,378.8713,232.9437,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-2222.3479,-1570.4625,379.1562,191.5209,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-2197.8594,-1617.2303,364.9783,5.3690,-1,-1);
		AddStaticVehicle2(V_NRG500,-2370.2078,-1388.3630,358.8773,70.8725,-1,-1);
		AddStaticVehicle2(V_BUFFALO,-2551.8943,-1484.2795,359.9571,54.6059,-1,-1); // 80
		AddStaticVehicle2(V_MTBIKE,-2519.6372,-1435.1702,350.5429,345.0096,-1,-1);
		AddStaticVehicle2(V_MONSTER,-2366.9658,-1360.9087,300.7245,277.0966,-1,-1);
		AddStaticVehicle2(V_CHEETAH,-2345.7637,-1302.6483,310.0883,7.7477,-1,-1);
		AddStaticVehicle2(V_BOBCAT,-2507.0757,-1277.4647,273.3358,126.0685,-1,-1);
		AddStaticVehicle2(V_COACH,-2605.8606,-1273.6674,218.4306,3.9074,-1,-1);
		AddStaticVehicle2(V_CLOVER,-2553.5691,-1105.9164,175.4155,179.9735,-1,-1);
		AddStaticVehicle2(V_STALLION,-2703.5315,-1289.5621,152.2599,137.3071,-1,-1);
		AddStaticVehicle2(V_POLMAV,-2774.0544,-1286.4609,124.0907,39.2780,-1,-1);
		AddStaticVehicle2(V_POLMAV,-2474.6621,-1096.1312,137.5849,313.2358,-1,-1);
		AddStaticVehicle2(V_GLENDALE,-2362.5823,-1154.0608,173.7676,306.7439,-1,-1); // 90
		AddStaticVehicle2(V_MAVERICK,-2816.5295,-1521.2769,146.7012,180.0988,-1,-1);
		AddStaticVehicle2(V_SANDKING,-2711.8933,-1614.2540,239.5914,349.7456,-1,-1);
		AddStaticVehicle2(V_POLMAV,-2411.9590,-2219.1670,33.4658,326.0417,-1,-1);
		AddStaticVehicle2(V_POLMAV,-2363.5859,-2177.6099,33.8124,264.7794,-1,-1);
		AddStaticVehicle2(V_FELTZER,-2768.3931,-1698.3556,141.3474,157.8846,-1,-1);
		AddStaticVehicle2(V_DUMPER,-2783.2690,-1774.1362,141.2821,167.9984,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-2665.6899,-1998.3688,90.4798,184.0617,-1,-1);
		AddStaticVehicle2(V_HUNTLEY,-2659.1877,-2100.5525,74.1952,210.1969,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2625.7700,-2152.8767,70.0404,255.7048,-1,-1);
		AddStaticVehicle2(V_TAXI,-2564.8586,-2147.1194,63.9549,280.0340,-1,-1); // 100
		AddStaticVehicle2(V_BUFFALO,-2701.6343,-1871.1652,138.0206,266.7029,-1,-1);
		AddStaticVehicle2(V_CHEETAH,-2628.1370,-1994.1829,126.1259,202.6443,-1,-1);
		AddStaticVehicle2(V_BOBCAT,-2499.8386,-2080.8879,124.0225,274.9414,-1,-1);
		AddStaticVehicle2(V_CLOVER,-2662.8860,-1772.7054,242.7201,106.4483,-1,-1);
		AddStaticVehicle2(V_GLENDALE,-2654.4348,-1725.3420,257.6967,245.6479,-1,-1);
		AddStaticVehicle2(V_SANDKING,-2502.3315,-1896.5430,298.0989,20.4675,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2372.2952,-1926.5311,304.5104,84.8233,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-2419.5854,-1956.3926,303.5986,34.7233,-1,-1);
		AddStaticVehicle2(V_MONSTER,-2593.5637,-1607.4014,343.5501,204.6164,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-2528.1829,-1808.8088,376.8376,6.1249,-1,-1); // 110
		AddStaticVehicle2(V_FELTZER,-2067.1248,-1958.8745,56.3981,324.2487,-1,-1);
		AddStaticVehicle2(V_COPCARRU,-2400.6294,-2226.0034,33.4785,358.1456,-1,-1);
		AddStaticVehicle2(V_HUNTLEY,-2763.0491,-2043.7616,38.4786,57.7693,-1,-1);
		AddStaticVehicle2(V_BUFFALO,-2863.9075,-1935.4927,37.4305,41.7784,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2916.9001,-1460.2668,11.1050,0.0485,-1,-1);
		AddStaticVehicle2(V_CHEETAH,-2893.2280,-1244.9945,9.6844,43.7233,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2796.9351,-1127.3652,15.8574,314.0134,-1,-1);
		AddStaticVehicle2(V_BOBCAT,-2547.3735,-959.8969,21.8003,293.5425,-1,-1);
		AddStaticVehicle2(V_BANDITO,-2349.0300,-1022.7355,15.8620,222.8083,-1,-1);
		AddStaticVehicle2(V_CLOVER,-2194.1802,-1167.0858,15.8614,205.4655,-1,-1); // 120
		AddStaticVehicle2(V_STALLION,-2006.0137,-1394.5394,26.7512,227.4891,-1,-1);
		AddStaticVehicle2(V_SANDKING,-1929.0791,-1590.6270,28.4324,168.2822,-1,-1);
		AddStaticVehicle2(V_PREDATOR,1655.4677,-1690.5326,-0.5193,288.1472,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-1618.3999,-1705.3264,-0.4953,304.4674,-1,-1);
		AddStaticVehicle2(V_MONSTER,-1651.4672,-2235.2122,29.8256,170.8282,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-1642.0264,-2251.7205,31.2759,91.8318,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-1635.9498,-2228.0967,29.7359,281.9251,-1,-1);


		AddStaticVehicle2(V_PREDATOR,-1824.5349,-1531.9379,-0.2122,38.1299,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-2047.3981,-1299.1976,-0.0769,15.8887,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-2278.2468,-1021.8701,-0.2242,56.1533,-1,-1); // 130
		AddStaticVehicle2(V_PREDATOR,-2694.3008,-1011.9853,-0.2535,96.8734,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-2969.2698,-1305.8879,0.2027,143.6526,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-2975.7288,-1695.6388,0.1748,183.8137,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-2801.0063,-2279.6108,0.1118,140.5747,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-2727.3528,-2759.5715,-0.4926,210.7893,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-1885.7413,-2792.8152,0.0144,211.0767,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-1383.3831,-1746.7831,-0.2763,234.0696,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-1338.1444,-1919.2219,-0.2657,195.1976,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-1432.0155,-2068.5459,-0.2944,139.2095,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-1540.0782,-2301.7292,-0.2051,14.4143,-1,-1); // 140
		AddStaticVehicle2(V_PREDATOR,-1499.2396,-2304.6470,-0.2479,12.6757,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-1198.3932,-2230.8638,-0.2033,168.3618,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-1176.7382,-2738.7830,-0.2185,228.2159,-1,-1);
		AddStaticVehicle2(V_PREDATOR,-998.3292,-2891.7649,-0.0513,79.0745,-1,-1);
		AddStaticVehicle2(V_REEFER,-1483.0880,-1675.0219,-0.1841,247.2354,-1,-1);

		AddStaticVehicle2(V_SANCHEZ,-2795.4956,-1572.9344,140.9896,257.0880,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2797.3137,-1418.2864,136.1386,268.6466,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2849.8018,-1465.7086,135.5788,151.1253,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2827.2029,-1525.6514,138.8663,7.3278,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-2831.3967,-1523.8119,138.6470,184.6001,-1,-1); // 150
		AddStaticVehicle2(V_COPCARSF,-1640.2782,-2223.4880,30.6599,99.1813,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-1646.9988,-2241.8115,30.2725,184.2397,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-1646.5533,-2209.4268,33.3577,96.6930,-1,-1);
		AddStaticVehicle2(V_COPCARSF,-1635.1289,-2257.8247,31.8573,90.1367,-1,-1);

		AddStaticVehicle2(V_SULTAN,-2204.5273,-2254.1033,30.4259,232.4917,-1,-1);
		AddStaticVehicle2(V_MESA,-2189.9773,-2265.2559,30.3717,232.6713,-1,-1);
		AddStaticVehicle2(V_PATRIOT,-2121.7600,-2290.9282,30.3741,141.5620,-1,-1);
		AddStaticVehicle2(V_BFINJECT,-2144.5657,-2379.9058,30.3726,231.4693,-1,-1);
		AddStaticVehicle2(V_QUAD,-2149.0315,-2543.7908,30.3638,320.5326,-1,-1);
		AddStaticVehicle2(V_SULTAN,-2099.9846,-2477.3682,30.3714,231.1153,-1,-1); // 160
		AddStaticVehicle2(V_MESA,-2048.8872,-2508.7813,30.9794,318.1779,-1,-1);
		AddStaticVehicle2(V_PATRIOT,-2018.4684,-2404.5127,30.3699,136.3184,-1,-1);
		AddStaticVehicle2(V_BFINJECT,-2033.7391,-2322.8545,30.3713,356.7208,-1,-1);
		AddStaticVehicle2(V_QUAD,-2096.1592,-2250.7637,30.3716,143.9510,-1,-1);

		AddStaticVehicle2(V_REGINA,-2674.1904,-2620.5491,7.4223,205.3137,-1,-1);
		AddStaticVehicle2(V_SULTAN,-2307.9810,-2770.9529,14.0852,245.7099,-1,-1);
		AddStaticVehicle2(V_MESA,-2031.8894,-2757.1421,49.9026,286.0391,-1,-1);
		AddStaticVehicle2(V_PATRIOT,-1836.8688,-2744.2781,3.5002,107.3600,-1,-1);
		AddStaticVehicle2(V_BFINJECT,-1627.7050,-2688.4871,48.2865,145.8459,-1,-1);
		AddStaticVehicle2(V_QUAD,-1606.4072,-2713.3533,48.2824,52.6981,-1,-1); // 170
		AddStaticVehicle2(V_REGINA,-1576.3538,-2728.9341,48.2893,144.6998,-1,-1);
		AddStaticVehicle2(V_SULTAN,-1560.0487,-2739.5662,48.2902,147.1556,-1,-1);
		AddStaticVehicle2(V_MESA,-1471.2964,-2638.4380,42.8979,299.8403,-1,-1);
		AddStaticVehicle2(V_PATRIOT,-847.3705,-2645.2136,96.2679,10.5579,-1,-1);

		AddStaticVehicle2(V_BFINJECT,-761.9213,-2456.6157,71.4594,230.9397,-1,-1);
		AddStaticVehicle2(V_QUAD,-263.0020,-2164.4561,28.6835,152.4455,-1,-1);
		AddStaticVehicle2(V_REGINA,-253.1976,-2217.2649,28.5173,102.5834,-1,-1);
		AddStaticVehicle2(V_SULTAN,-293.3706,-2149.0083,28.3181,154.9319,-1,-1);
		AddStaticVehicle2(V_MESA,-36.4589,-2497.4497,36.3981,214.0104,-1,-1);
		AddStaticVehicle2(V_PATRIOT,-13.3326,-2509.6992,36.3999,121.1489,-1,-1); // 180
		AddStaticVehicle2(V_BFINJECT,32.5219,-2636.9539,40.1604,89.5907,-1,-1);
		AddStaticVehicle2(V_QUAD,-1132.4354,-2278.6941,35.9363,4.4214,-1,-1);
		AddStaticVehicle2(V_HERMES,-981.4417,-1898.2072,80.0326,85.0039,-1,-1);
		AddStaticVehicle2(V_SULTAN,-1018.8212,-1697.3284,77.7648,25.6266,-1,-1);

		AddStaticVehicle2(V_MESA,-1102.6112,-1667.8447,76.1169,341.0943,-1,-1);
		AddStaticVehicle2(V_PATRIOT,-1114.4368,-1621.1880,76.1201,269.9464,-1,-1);
		AddStaticVehicle2(V_BFINJECT,-755.2144,-1486.5358,89.7013,2.1376,-1,-1);
		AddStaticVehicle2(V_QUAD,-378.2744,-1448.5403,25.4723,3.6920,-1,-1);
		AddStaticVehicle2(V_HERMES,-363.6711,-1410.2705,25.4731,90.3855,-1,-1);
		AddStaticVehicle2(V_SULTAN,-86.9996,-1196.3778,1.9998,345.4369,-1,-1); // 190
		AddStaticVehicle2(V_MESA,-45.2626,-1145.8362,1.2547,56.4938,-1,-1);
		AddStaticVehicle2(V_PATRIOT,-575.5760,-1057.1096,23.8280,239.3235,-1,-1);
		AddStaticVehicle2(V_BFINJECT,-408.2732,-1762.3256,5.8487,17.4627,-1,-1);
		AddStaticVehicle2(V_QUAD,-1546.3046,-1211.7633,102.0483,227.3843,-1,-1);

		AddStaticVehicle2(V_HERMES,-1437.0760,-1531.9768,101.5028,42.2880,-1,-1);
		AddStaticVehicle2(V_SULTAN,-1062.2693,-1178.4099,128.9646,268.4395,-1,-1);
		AddStaticVehicle2(V_MESA,-1431.7803,-948.0321,200.8141,273.4803,-1,-1);
		AddStaticVehicle2(V_PATRIOT,-1720.3026,-1919.9163,98.9915,99.5456,-1,-1);
		AddStaticVehicle2(V_BFINJECT,-1487.8038,-2176.7732,1.5749,170.4320,-1,-1);

		/* Psycho Spawn */
		AddStaticVehicle2(V_MESA,-1453.5548,-1457.5885,101.7578,176.9124,-1,-1); // 200
		AddStaticVehicle2(V_SULTAN,-1461.7065,-1456.9829,101.7578,175.3457,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,-1428.4753,-1460.8495,101.6658,174.4058,-1,-1);
		AddStaticVehicle2(V_STALLION,-1405.5460,-1484.6023,101.7958,358.9608,-1,-1);
		AddStaticVehicle2(V_CLOVER,-1398.9863,-1484.8054,101.8056,353.3770,-1,-1);
		AddStaticVehicle2(V_GLENDALE,-1390.3693,-1485.4039,101.8643,355.6828,-1,-1);
		AddStaticVehicle2(V_PATRIOT,-1413.0469,-1513.3745,101.6957,99.3971,-1,-1);
		AddStaticVehicle2(V_BOBCAT,-1465.9579,-1571.2004,101.7578,0.4943,-1,-1);
		AddStaticVehicle2(V_BUFFALO,-1435.3333,-1593.9545,101.7578,318.7972,-1,-1);
		AddStaticVehicle2(V_HUNTLEY,-1477.2480,-1525.7599,101.8335,180.9761,-1,-1);

		AddStaticVehicle2(V_MTBIKE,-1459.9669,-1487.8149,101.7578,269.6600,-1,-1); // 210
		AddStaticVehicle2(V_MTBIKE,-1448.8809,-1555.6829,101.7578,180.9526,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-1443.8392,-1556.0314,101.7578,178.4458,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-1436.8032,-1556.2594,101.7578,176.8792,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-1429.6576,-1556.5096,101.7578,174.0358,-1,-1);

		/* Country extras */
		AddStaticVehicle2(V_MESA,-678.8894,-1404.6050,65.1612,45.3209,-1,-1);
		AddStaticVehicle2(V_STALLION,-568.7520,-1477.2885,10.0868,34.6048,-1,-1);
		AddStaticVehicle2(V_GLENDALE,-345.4261,-1054.1815,59.2788,91.2869,-1,-1);
		AddStaticVehicle2(V_HERMES,-378.8757,-1033.3198,59.0666,274.2752,-1,-1);
		AddStaticVehicle2(V_BOBCAT,-1054.1095,-1031.9008,129.2119,88.9138,-1,-1);
		AddStaticVehicle2(V_CLOVER,-1643.3260,-917.8596,99.7757,351.0459,-1,-1); // 220
		AddStaticVehicle2(V_GLENDALE,-1713.4292,-1022.9664,74.3830,139.1931,-1,-1);


		for (new i=0 ; i<vehicle_counter ; i++) {
		    if (vehicle_modelid[i]==V_RUSTLER || vehicle_modelid[i]==V_DODO || vehicle_modelid[i]==V_BEAGLE || vehicle_modelid[i]==V_POLMAV) {
		        //cant_drive_vehicle[TEAM_BODYGUARD][i] = 1;
		        cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
		        //cant_passenger_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			}
			if (vehicle_modelid[i]==V_NRG500 || vehicle_modelid[i]==V_SANCHEZ || vehicle_modelid[i]==V_MTBIKE)
		        cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;

			if (vehicle_modelid[i]==V_PREDATOR) {
		        cant_drive_vehicle[TEAM_BODYGUARD][i] = 1;
                cant_drive_vehicle[TEAM_PSYCHO][i] = 1;
			}
		}

		AddStaticPickup(PICKUP_PARACHUTE,2,-2237.1941,-1710.5507,480.8812); // parachute
        AddStaticPickup(PICKUP_ARMOR,2,-2467.4795,-1218.7037,254.1941);  // armour
        AddStaticPickup(PICKUP_ARMOR,2,-1986.3958,-1504.4312,85.2055);  // armour
        AddStaticPickup(PICKUP_ARMOR,2,-2380.3877,-1637.3463,491.8316);  // armour
        AddStaticPickup(PICKUP_ARMOR,2,-2440.0886,-2159.2776,35.8599);  // armour
        AddStaticPickup(PICKUP_ARMOR,2,-2888.4492,-1519.1957,135.3701);  // armour
        AddStaticPickup(PICKUP_ARMOR,2,-1849.2826,-1667.7755,27.6797);  // armour
        AddStaticPickup(PICKUP_ARMOR,2,-1632.9254,-2248.7239,34.6684);  // armour
//		AddStaticPickup(PICKUP_JETPACK,2,-2238.3298,-1760.9666,415.2671); // jetpack
//        AddStaticPickup(PICKUP_JETPACK,2,-2307.3315,-2012.2480,240.8118); // jetpack

/*
        AddStaticPickup(363,2,-2147.9199,-2049.6550,63.4994); // satchel
        AddStaticPickup(356,2,-2368.3071,-1360.5947,301.0366); // m4
        AddStaticPickup(339,2,-2679.9531,-1723.4792,254.2597); // katana
*/

		AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,300,-2625.8015,-978.2073,0.1978,400,WP_SYNCED); // Minigun
		AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,300,-2692.1790,-2136.3743,18.5538,400,WP_SYNCED); // Minigun (new set)
		AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,1000,-2424.1614,-1342.5021,309.9434,WP_NO_RESPAWN,WP_SYNCED); // Minigun
        AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,300,-2135.7476,-1242.1997,29.1718,10,WP_SYNCED); // MP5 (campfire)
        AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,300,-1907.4188,-1500.9512,25.4219,10,WP_SYNCED); // MP5 (campfire)
        AddWeaponPickup(PICKUP_SILENCED,WEAPON_SILENCED,50,-2172.2546,-1843.6069,214.8233,30,WP_SYNCED);
        AddWeaponPickup(PICKUP_CHAINSAW,WEAPON_CHAINSAW,1,-2437.1436,-1616.6068,520.9243,WP_NO_RESPAWN); // Chainsaw

		for (new i=0 ; i<pickup_counter ; i++)
		    if (pickup_weaponid[i]==WEAPON_MINIGUN)
	        	pickup_unauthorised[TEAM_PRIMEMINISTER][i] = 1;



        game_boundary_max_x = 60;
    	game_boundary_min_x = -2984;
		game_boundary_max_y = -819;
		game_boundary_min_y = -2953;


		AddTeamLineSpawn(TEAM_PSYCHO, -1448.0564,-1534.9163,101.7578, -1446.7629,-1489.0828,101.7578);

		AddTeamSpawn(TEAM_TERRORIST,-2818.0095,-1517.0559,140.8438,267.4933);
		AddTeamSpawn(TEAM_TERRORIST,-2817.9077,-1518.6733,140.8438,266.2962);
		AddTeamSpawn(TEAM_TERRORIST,-2817.9270,-1520.3000,140.8438,264.8419);
		AddTeamSpawn(TEAM_TERRORIST,-2817.8613,-1522.2753,140.8438,262.7049);
		AddTeamSpawn(TEAM_TERRORIST,-2817.8523,-1524.4056,140.8438,265.0107);
		AddTeamSpawn(TEAM_TERRORIST,-2817.9915,-1526.8164,140.8438,262.9298);
		AddTeamSpawn(TEAM_TERRORIST,-2817.9590,-1529.1571,140.8438,264.2394);
		AddTeamSpawn(TEAM_TERRORIST,-2809.3828,-1517.5955,140.8438,267.9760);
		AddTeamSpawn(TEAM_TERRORIST,-2808.8022,-1521.2811,140.8438,268.0885);
		AddTeamSpawn(TEAM_TERRORIST,-2808.7705,-1524.7393,140.8438,268.4580);

		AddTeamSpawn(TEAM_PRIMEMINISTER, -1985.1062,-1550.1643,88.0002,270);

		AddTeamLineSpawn(TEAM_BODYGUARD, -2007.4741,-1562.4833,88.7751, -2006.9596,-1518.3007,85.1718);

		AddTeamLineSpawn(TEAM_COP, -2406.7439,-2192.7683,33.2891, -2408.7991,-2180.7649,33.2891);
		AddTeamLineSpawn(TEAM_COP, -2398.5989,-2161.1355,35.5019, -2368.5933,-2161.9119,35.5307);


		safehouse_exists = 1;
		safehouse_x = -1634.9736;
		safehouse_y = -2239.0676;
		safehouse_z = 31.4766;
		safehouse_exclusion = 100;

		intel_north = -1390;
		intel_south = -1930;
		intel_west = 1130;
		intel_east = 1835;
		intel_feature = "Mt. Chilliad";

		wardrobe_interior = 0;
		wardrobe_player_x = -2229.3877;
		wardrobe_player_y = -1741.4910;
		wardrobe_player_z = 480.8772;
		wardrobe_player_orientation = 153;
		wardrobe_camera_x = -2231.7322;
		wardrobe_camera_y = -1744.2053;
		wardrobe_camera_z = 480.3524;


		class_psycho1 = AddPlayerClass2(230,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_psycho2 = AddPlayerClass2(212,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_psycho3 = AddPlayerClass2(200,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);
		class_psycho4 = AddPlayerClass2(137,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);

		class_terrorist1 = AddPlayerClass2(181, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist2 = AddPlayerClass2(183, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist3 = AddPlayerClass2(179, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist4 = AddPlayerClass2(191, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist5 = AddPlayerClass2(111, WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist6 = AddPlayerClass2(73,  WEAPON_SAWEDOFF,300, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist7 = AddPlayerClass2(100, WEAPON_SILENCED,300, WEAPON_MP5,400, WEAPON_FLAMETHROWER,300);
		class_terrorist_medic = AddPlayerClass2(274, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);

		class_primeminister = AddPlayerClass2(147,WEAPON_CANE,-1,WEAPON_SPRAYCAN,1000, WEAPON_PARACHUTE,-1);

		class_bodyguard1 = AddPlayerClass2(163,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard2 = AddPlayerClass2(164,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard3 = AddPlayerClass2(165,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard4 = AddPlayerClass2(166,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard5 = AddPlayerClass2(141,WEAPON_SILENCED,100,WEAPON_UZI,200, WEAPON_PARACHUTE,-1);
		class_bodyguard_medic = AddPlayerClass2(276, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);


		class_cop1  = AddPlayerClass2(280, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop2  = AddPlayerClass2(281, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop3  = AddPlayerClass2(282, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop4  = AddPlayerClass2(283, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop5  = AddPlayerClass2(284, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop6  = AddPlayerClass2(285, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop7  = AddPlayerClass2(286, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop8  = AddPlayerClass2(288, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop9  = AddPlayerClass2(246, WEAPON_DEAGLE,100,WEAPON_MP5,200,WEAPON_SPRAYCAN,300);
		class_cop_medic  = AddPlayerClass2(275, WEAPON_PARACHUTE,-1,WEAPON_DEAGLE,100,WEAPON_SPRAYCAN,300);

		pm_health_bonus = 1;

		class_team[class_psycho1] = TEAM_PSYCHO;
		class_team[class_psycho2] = TEAM_PSYCHO;
		class_team[class_psycho3] = TEAM_PSYCHO;
		class_team[class_psycho4] = TEAM_PSYCHO;

		class_team[class_terrorist1] = TEAM_TERRORIST;
		class_team[class_terrorist2] = TEAM_TERRORIST;
		class_team[class_terrorist3] = TEAM_TERRORIST;
		class_team[class_terrorist4] = TEAM_TERRORIST;
		class_team[class_terrorist5] = TEAM_TERRORIST;
		class_team[class_terrorist6] = TEAM_TERRORIST;
		class_team[class_terrorist7] = TEAM_TERRORIST;
		class_team[class_terrorist_medic] = TEAM_TERRORIST;

		class_team[class_primeminister] = TEAM_PRIMEMINISTER;
		class_team[class_bodyguard1] = TEAM_BODYGUARD;
		class_team[class_bodyguard2] = TEAM_BODYGUARD;
		class_team[class_bodyguard3] = TEAM_BODYGUARD;
		class_team[class_bodyguard4] = TEAM_BODYGUARD;
		class_team[class_bodyguard5] = TEAM_BODYGUARD;
		class_team[class_bodyguard_medic] = TEAM_BODYGUARD;

		class_team[class_cop1] = TEAM_COP;
		class_team[class_cop2] = TEAM_COP;
		class_team[class_cop3] = TEAM_COP;
		class_team[class_cop4] = TEAM_COP;
		class_team[class_cop5] = TEAM_COP;
		class_team[class_cop6] = TEAM_COP;
		class_team[class_cop7] = TEAM_COP;
		class_team[class_cop8] = TEAM_COP;
		class_team[class_cop9] = TEAM_COP;
		class_team[class_cop_medic] = TEAM_COP;

	} else if (map==7) {

		AddTeamSpawn(TEAM_BODYGUARD,1045.6045,-314.8521,77.5017,179.7847);
		AddTeamSpawn(TEAM_BODYGUARD,1045.5465,-314.7320,73.9931,180.4113);
		AddTeamSpawn(TEAM_BODYGUARD,1032.6125,-314.0947,73.9922,177.9047);
		AddTeamSpawn(TEAM_BODYGUARD,1019.4659,-314.5684,77.5039,179.1580);
		AddTeamSpawn(TEAM_BODYGUARD,1019.4614,-314.3777,73.9931,179.1580);
		AddTeamSpawn(TEAM_BODYGUARD,1107.5851,-314.5782,73.9922,2.8658);
		AddTeamSpawn(TEAM_BODYGUARD,1103.3276,-299.0390,73.9851,181.7575);
		AddTeamSpawn(TEAM_BODYGUARD,1091.2754,-329.0343,73.9922,90.3161);

		AddTeamSpawn(TEAM_PSYCHO,1567.5857,15.2243,23.9857,99.4894);
		AddTeamSpawn(TEAM_PSYCHO,1549.0253,33.3922,24.1406,286.8644);
		AddTeamSpawn(TEAM_PSYCHO,1393.9169,466.2315,20.1335,152.8359);
		AddTeamSpawn(TEAM_PSYCHO,1359.7794,484.9118,20.2109,190.7496);
		AddTeamSpawn(TEAM_PSYCHO,865.9806,-18.3443,63.1953,154.4011);
		AddTeamSpawn(TEAM_PSYCHO,843.2611,-19.8160,64.4680,180.4315);
		AddTeamSpawn(TEAM_PSYCHO,267.4687,-498.9353,20.3615,41.9176);
		AddTeamSpawn(TEAM_PSYCHO,271.2937,-529.1648,24.0029,223.6293);
		AddTeamSpawn(TEAM_PSYCHO,300.0748,49.6266,2.7073,111.4777);
		AddTeamSpawn(TEAM_PSYCHO,-399.1404,-421.7239,16.2109,170.3078);
		AddTeamSpawn(TEAM_PSYCHO,-547.5909,-183.3856,78.3984,173.4266);
		AddTeamSpawn(TEAM_PSYCHO,-567.5013,-175.7648,78.4063,357.8924);
		AddTeamSpawn(TEAM_PSYCHO,1919.2909,150.6793,37.2629,157.5848); // Extension
		AddTeamSpawn(TEAM_PSYCHO,1947.0986,165.3667,37.2813,337.4165); // Extension
		AddTeamSpawn(TEAM_PSYCHO,2868.9531,-407.1333,7.7246,57.5325); // Extension II

		AddTeamSpawn(TEAM_PRIMEMINISTER,1106.8263,-306.8298,73.9922,88.5804);

		AddTeamSpawn(TEAM_COP,1244.1953,209.7945,23.0555,65.6535);
		AddTeamSpawn(TEAM_COP,1252.9529,203.4870,25.6452,154.6176);
		AddTeamSpawn(TEAM_COP,1232.5687,223.5099,19.5547,158.4010);
		AddTeamSpawn(TEAM_COP,1216.7372,193.4602,19.6857,333.2193);
		AddTeamSpawn(TEAM_COP,1224.8313,189.3958,19.6534,331.3393);
		AddTeamSpawn(TEAM_COP,1234.9532,184.7260,19.6806,336.0393);
		AddTeamSpawn(TEAM_COP,1247.3411,179.4906,19.6524,333.5327);
		AddTeamSpawn(TEAM_COP,1190.6863,148.6191,20.5144,336.9560);
		AddTeamSpawn(TEAM_COP,1230.2233,129.8635,20.3739,345.1028);
		AddTeamSpawn(TEAM_COP,1243.9302,203.2454,19.5547,153.0510);

		AddTeamSpawn(TEAM_TERRORIST,-39.6833,94.4979,3.1172,159.3593);
		AddTeamSpawn(TEAM_TERRORIST,-25.8858,86.3813,3.1172,72.5651);
		AddTeamSpawn(TEAM_TERRORIST,-27.4799,81.0665,3.1172,76.3251);
		AddTeamSpawn(TEAM_TERRORIST,-29.5620,76.1999,3.1096,72.8784);
		AddTeamSpawn(TEAM_TERRORIST,-30.9758,71.0960,3.1172,70.0584);
		AddTeamSpawn(TEAM_TERRORIST,-32.1034,65.2743,3.1172,75.0718);
		AddTeamSpawn(TEAM_TERRORIST,-34.6525,56.5984,3.1172,28.0714);
		AddTeamSpawn(TEAM_TERRORIST,-69.9844,69.6274,3.1172,271.1970);
		AddTeamSpawn(TEAM_TERRORIST,-58.7489,60.1032,3.1103,342.6142);
		AddTeamSpawn(TEAM_TERRORIST,-55.6768,59.0352,3.1103,339.4808);
		AddTeamSpawn(TEAM_TERRORIST,-57.3817,60.1656,6.5911,338.8542);
		AddTeamSpawn(TEAM_TERRORIST,-39.3132,54.1351,6.4844,342.6142);
		AddTeamSpawn(TEAM_TERRORIST,-48.5333,28.0931,3.1172,160.9025);

		/* Pm & Bodyguard */
		AddStaticVehicle2(V_COPBIKE,1077.2920,-293.6223,73.9851,180.1672,-1,-1);
		AddStaticVehicle2(V_COPBIKE,1074.1095,-293.0952,73.9851,175.1304,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,1070.6034,-293.3836,73.9851,181.7105,0,0);
		AddStaticVehicle2(V_SANCHEZ,1067.0552,-293.1773,73.9851,179.5171,0,0);
		AddStaticVehicle2(V_HUNTLEY,1043.4656,-350.5110,73.9922,357.9622,0,0);
		AddStaticVehicle2(V_HUNTLEY,1070.8251,-333.8942,73.9922,85.3830,113,113);
		AddStaticVehicle2(V_HUNTLEY,1095.0157,-350.6517,73.9922,359.7132,0,0);
		AddStaticVehicle2(V_STAFFORD,1049.8756,-332.7212,73.9851,88.2031,0,0);
		AddStaticVehicle2(V_STAFFORD,1032.2849,-310.6409,73.9922,181.2406,8,8);
		AddStaticVehicle2(V_FBIRANCH,1056.9507,-290.1041,73.9922,180.3006,0,0);
		AddStaticVehicle2(V_FBIRANCH,1034.7358,-350.2424,73.9922,359.8423,0,0);
		AddStaticVehicle2(V_CAMPER,1098.8771,-333.7421,73.9922,89.6406,0,0);
		AddStaticVehicle2(V_SADLER,1087.6224,-291.3130,73.9922,174.5548,40,40);
		AddStaticVehicle2(V_GLENDALE,1087.6272,-319.6665,73.9922,86.5073,101,101);

		/* Cops */
		AddStaticVehicle2(V_COPBIKE,1222.3462,132.3872,20.5306,335.0469,-1,-1);
		AddStaticVehicle2(V_COPBIKE,1219.9082,133.2267,20.5325,338.1802,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,1214.7997,135.0764,20.5359,334.4202,53,53);
		AddStaticVehicle2(V_COPBIKE,1210.0226,137.2502,20.5356,334.7335,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,1205.4465,139.3327,20.5389,338.4935,53,53);
		AddStaticVehicle2(V_COPBIKE,1203.2094,140.7464,20.5368,336.3002,-1,-1);
		AddStaticVehicle2(V_COPBIKE,1226.9937,267.6609,19.5547,248.4589,-1,-1);
		AddStaticVehicle2(V_COPBIKE,1242.8092,231.8245,28.0728,154.4814,-1,-1);
		AddStaticVehicle2(V_COPCARRU,1226.6038,197.0231,19.4063,246.2657,-1,-1);
		AddStaticVehicle2(V_COPCARRU,1240.4711,190.6190,19.4089,245.3257,-1,-1);
		AddStaticVehicle2(V_COPCARLA,1238.1025,157.9060,20.0185,332.4097,-1,-1);
		AddStaticVehicle2(V_COPCARRU,1251.1154,168.8403,19.4419,334.2898,-1,-1);
		AddStaticVehicle2(V_COPCARRU,1202.6848,217.1002,19.5744,242.1689,-1,-1);
		AddStaticVehicle2(V_COPCARLA,1201.0869,165.4715,20.4842,336.5065,-1,-1);
		AddStaticVehicle2(V_COPCARLA,1236.5651,212.8782,19.5547,64.8440,-1,-1);
		AddStaticVehicle2(V_COPCARRU,1252.5729,248.7793,19.5547,64.5305,-1,-1);

		/* Terrorists */
		AddStaticVehicle2(V_SANCHEZ,-48.9898,55.3985,3.1172,158.2757,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,-21.6399,106.7221,3.1172,94.6683,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-59.7243,111.9405,3.1172,159.5292,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-28.2362,49.1996,3.1172,243.8164,-1,-1);
		AddStaticVehicle2(V_FREEWAY,-38.7090,97.2444,3.1172,160.4692,-1,-1);
		AddStaticVehicle2(V_FREEWAY,-95.2285,49.5385,3.1172,156.7091,-1,-1);
		AddStaticVehicle2(V_RANCHER,-53.1905,85.5096,3.1172,253.5064,-1,-1);
		AddStaticVehicle2(V_RANCHER,-63.1777,100.3868,3.1172,246.9263,-1,-1);
		AddStaticVehicle2(V_RANCHER,-46.8791,8.2719,3.1094,61.7446,-1,-1);
		AddStaticVehicle2(V_LANDSTAL,-38.2340,86.0321,3.1172,165.7957,-1,-1);
		AddStaticVehicle2(V_LANDSTAL,-74.7349,53.2728,3.1172,159.8188,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,-42.2917,69.2559,3.1172,347.5307,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,-57.7837,76.6060,3.1172,245.6730,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,-55.0658,-19.2246,3.1172,70.2047,-1,-1);
		AddStaticVehicle2(V_CAMPER,-5.6712,59.6118,3.1172,338.0839,-1,-1);

		/* Psychos */
		AddStaticVehicle2(V_SANCHEZ,1549.0485,-27.1533,21.3231,269.2609,-1,-1);
		AddStaticVehicle2(V_FREEWAY,1542.4755,34.4275,24.1406,283.0477,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,1544.1379,16.3594,24.1406,280.5176,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,1529.3138,0.0843,23.5144,217.2471,-1,-1);

		AddStaticVehicle2(V_SANCHEZ,1380.8835,455.2117,19.8750,64.5481,-1,-1);
		AddStaticVehicle2(V_FREEWAY,1391.2903,475.4510,20.0657,240.6898,-1,-1);
		AddStaticVehicle2(V_RANCHER,1406.5636,459.6162,20.2192,151.3657,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,1367.8904,477.6172,20.1227,145.3889,-1,-1);

		AddStaticVehicle2(V_SANCHEZ,877.3873,-27.3611,63.1953,157.0382,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,860.7090,-11.4543,63.3731,162.6782,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,888.6854,-25.3872,63.2252,154.5315,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,859.1102,19.6543,88.0454,69.5939,-1,-1);

		AddStaticVehicle2(V_SADLSHIT,277.7894,67.5603,2.7683,111.5739,-1,-1);
		AddStaticVehicle2(V_LANDSTAL,320.9435,37.0995,3.3579,118.4673,-1,-1);

		AddStaticVehicle2(V_SANCHEZ,263.4151,-508.7036,20.1848,23.5722,-1,-1);
		AddStaticVehicle2(V_MTBIKE,270.6086,-487.3895,20.5772,28.8989,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,284.0866,-509.1511,20.5839,96.2662,-1,-1);

		AddStaticVehicle2(V_SANCHEZ,-523.7220,-207.9775,78.4063,90.0057,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-558.5643,-179.9586,78.4047,174.9432,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,-565.4307,-200.5089,78.6330,353.8582,-1,-1);

        AddStaticVehicle2(V_FREEWAY,-431.1826,-391.1899,16.2031,179.1232,-1,-1);
        AddStaticVehicle2(V_GLENSHIT,-389.9446,-409.6938,16.2109,85.7724,-1,-1);

		AddStaticVehicle2(V_OCEANIC,2853.1252,-329.5313,7.7272,358.1427,-1,-1);
		AddStaticVehicle2(V_OCEANIC,2857.9192,-398.1039,7.7797,6.6261,-1,-1);

		/* Boats */
		AddStaticVehicle2(V_DINGHY,1440.1895,-278.6923,-0.5503,334.5085,-1,-1);
		AddStaticVehicle2(V_DINGHY,386.5117,-273.3345,-0.3953,215.3484,-1,-1);
		AddStaticVehicle2(V_DINGHY,370.3372,-283.7169,-0.5441,212.2151,-1,-1);
		AddStaticVehicle2(V_DINGHY,-46.0665,-574.7012,-0.5214,200.3237,-1,-1);
		AddStaticVehicle2(V_DINGHY,-322.54,-385.65,-0.23,173.6901,-1,-1);

		AddStaticVehicle2(V_REEFER,153.7179,-400.7188,-0.5715,109.9431,-1,-1);

		AddStaticVehicle2(V_MARQUIS,1411.7775,-272.1193,-0.5727,357.6953,-1,-1);
		AddStaticVehicle2(V_MARQUIS,406.6983,-264.2725,-0.5581,119.7808,-1,-1);
		AddStaticVehicle2(V_REEFER,918.1069,-132.4381,-0.4980,91.9967,-1,-1);
		AddStaticVehicle2(V_REEFER,-331.9320,-467.9369,-0.5246,221.0039,-1,-1);
		AddStaticVehicle2(V_REEFER,296.2721,-335.1281,-0.5057,143.5944,-1,-1);
		AddStaticVehicle2(V_LAUNCH,1348.3632,-305.1563,-0.5834,68.8226,-1,-1);
		AddStaticVehicle2(V_COASTG,-109.3459,-537.3738,-0.5010,16.3953,-1,-1);

		/* Randoms - 1st - fence - south of river */
		AddStaticVehicle2(V_DFT30,-529.8365,-501.5349,24.9251,0.1753,-1,-1);
		AddStaticVehicle2(V_BOXVILLE,-557.8523,-543.1022,25.5234,178.7770,-1,-1);
		AddStaticVehicle2(V_BOXVILLE,-520.2065,-501.9279,24.8923,1.4286,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,-529.6581,-543.4426,25.5234,180.0303,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,-589.5807,-488.0215,25.5234,357.9819,-1,-1);
		AddStaticVehicle2(V_BOBCAT,-748.3201,-525.4376,31.4775,37.6873,-1,-1);
		AddStaticVehicle2(V_BOBCAT,-392.3272,-582.2102,12.9059,307.9153,-1,-1);
		AddStaticVehicle2(V_WALTON,-569.6976,-471.7984,25.5234,180.6335,-1,-1);
		AddStaticVehicle2(V_TRACTOR,-579.6794,-471.8521,25.5234,180.6335,-1,-1);

		AddStaticVehicle2(V_MTBIKE,-500.5159,-436.9765,41.6709,355.0416,-1,-1);
		AddStaticVehicle2(V_FREEWAY,-539.4112,-471.2142,25.5178,177.1869,-1,-1);
		AddStaticVehicle2(V_FREEWAY,-910.8447,-522.1077,25.9536,21.3708,-1,-1);
		AddStaticVehicle2(V_FREEWAY,-944.9158,-514.7542,25.9536,344.7337,-1,-1);

		/* 2nd - rest - south of river*/
		AddStaticVehicle2(V_COMBINE,882.0760,-403.5292,42.5682,79.7770,-1,-1);
		AddStaticVehicle2(V_COMBINE,808.9666,-248.1864,18.3284,263.1118,-1,-1);
		AddStaticVehicle2(V_TRACTOR,842.1653,-359.4602,31.2461,241.4352,-1,-1);
		AddStaticVehicle2(V_COPCARLA,617.0349,-543.0638,16.4819,269.5513,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,685.7832,-253.3718,11.3972,87.0167,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,668.4614,-546.2032,16.3359,91.8897,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,1162.0258,-147.4833,41.1003,153.7867,-1,-1);
		AddStaticVehicle2(V_RANCHER,347.2374,-565.3052,40.7283,258.7503,-1,-1);
		AddStaticVehicle2(V_BOBCAT,498.9526,-456.6445,35.1021,326.7024,-1,-1);
		AddStaticVehicle2(V_MOWER,481.5742,-326.6151,37.7213,346.0919,-1,-1);
		AddStaticVehicle2(V_WALTON,1267.8484,-371.8989,2.6513,324.5013,-1,-1);

		AddStaticVehicle2(V_MTBIKE,282.7301,-390.8212,7.4187,254.9739,-1,-1);
		AddStaticVehicle2(V_MTBIKE,500.5329,-291.1873,19.9459,77.5626,-1,-1);
		AddStaticVehicle2(V_MTBIKE,759.9531,-221.3224,12.3572,275.3318,-1,-1);
		AddStaticVehicle2(V_MTBIKE,1486.4916,-359.9856,33.0196,71.8162,-1,-1);
		AddStaticVehicle2(V_FREEWAY,668.9131,-458.1094,16.3359,93.1195,-1,-1);
		AddStaticVehicle2(V_FREEWAY,668.7012,-467.8288,16.3359,90.2995,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,797.1016,-481.3441,16.1223,89.8943,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,669.0840,-464.6925,16.3359,86.8528,-1,-1);

		/* 3rd - hill top farm - north of river*/
		AddStaticVehicle2(V_COMBINE,-790.7696,-126.3084,64.4024,13.2143,-1,-1);
		AddStaticVehicle2(V_WALTON,-506.4307,303.1030,2.4297,243.6405,-1,-1);
		AddStaticVehicle2(V_HOTDOG,-494.2812,293.7330,2.4297,267.7440,-1,-1);
		AddStaticVehicle2(V_RANCHER,-369.7501,-179.5537,58.6014,306.6848,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,-777.6917,196.4418,2.7259,318.0724,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,-472.8308,-174.4121,78.2109,177.9639,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,-480.0195,302.3040,2.4297,98.2525,-1,-1);

		AddStaticVehicle2(V_FREEWAY,-765.0281,206.5010,2.6293,39.8298,-1,-1);
		AddStaticVehicle2(V_FREEWAY,-762.0589,208.7578,2.6755,39.8298,-1,-1);
		AddStaticVehicle2(V_FREEWAY,-940.8128,-254.3603,37.5872,349.5188,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-255.1431,244.0980,9.7679,163.1406,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-593.6478,176.7797,22.5838,251.5891,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-320.8463,-26.8586,44.6366,12.7482,-1,-1);

		/* 4th - around terrorist spawn - north of river */
		AddStaticVehicle2(V_COMBINE,-171.1430,146.5319,5.1631,161.2562,-1,-1);
		AddStaticVehicle2(V_COMBINE,-159.5853,34.0942,3.1172,339.2584,-1,-1);
		AddStaticVehicle2(V_TRACTOR,-215.8971,-41.6792,3.1172,339.6080,-1,-1);
		AddStaticVehicle2(V_HOTDOG,431.6315,213.9114,10.5732,223.1384,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,436.4639,3.5628,8.2983,120.5780,-1,-1);
		AddStaticVehicle2(V_RANCHER,-31.0274,-193.6508,1.7264,267.9630,-1,-1);
		AddStaticVehicle2(V_SADLSHIT,317.9629,-127.2772,2.3510,267.4955,-1,-1);
		AddStaticVehicle2(V_YANKEE,164.8912,-55.0111,1.5781,274.0884,-1,-1);


		AddStaticVehicle2(V_SANCHEZ,159.8339,-178.0943,1.5781,90.7960,-1,-1);
		AddStaticVehicle2(V_FREEWAY,93.1486,-189.5616,1.4844,179.6324,-1,-1);
		AddStaticVehicle2(V_FREEWAY,183.0301,-5.6745,1.5781,182.5943,-1,-1);
		AddStaticVehicle2(V_FREEWAY,310.0764,-192.6511,1.5781,269.1597,-1,-1);
		AddStaticVehicle2(V_MTBIKE,-260.1927,-198.1862,4.0310,238.4069,-1,-1);
		AddStaticVehicle2(V_MTBIKE,483.3108,-169.5756,35.2616,136.0019,-1,-1);

		/* 5th - compound - north of river */
		AddStaticVehicle2(V_PACKER,-98.5349,-383.8969,1.4297,77.0747,-1,-1);
		AddStaticVehicle2(V_UTILITY,137.5135,-246.2383,1.5781,90.4637,-1,-1);
		AddStaticVehicle2(V_RDTRAIN,-206.9385,-267.0805,1.4297,86.4516,-1,-1);
		AddStaticVehicle2(V_RDTRAIN,52.7043,-284.0299,1.6847,358.9695,-1,-1);
		AddStaticVehicle2(V_LINERUN,-182.9712,-278.6667,1.4297,89.2716,-1,-1);
		AddStaticVehicle2(V_LINERUN,90.2497,-292.4178,1.5781,357.7162,-1,-1);
		AddStaticVehicle2(V_TOWTRUCK,-2.8379,-378.1422,5.4297,359.5031,-1,-1);
		AddStaticVehicle2(V_SWEEPER,-52.7745,-281.9406,5.4297,178.8132,-1,-1);
		AddStaticVehicle2(V_COACH,82.4944,-336.8213,1.5781,268.8118,-1,-1);
		AddStaticVehicle2(V_DFT30,-131.3013,-220.2940,1.4219,88.6683,-1,-1);

		AddStaticVehicle2(V_FREEWAY,-157.8681,-302.2006,1.4297,92.7182,-1,-1);
		AddStaticVehicle2(V_FREEWAY,-158.1462,-306.3193,1.4297,89.8982,-1,-1);

		/* 6th - town & hill - north of river */
		AddStaticVehicle2(V_SADLSHIT,547.6807,-181.8441,35.5300,33.8501,-1,-1);
		AddStaticVehicle2(V_WALTON,1288.8221,190.0710,20.2351,211.9887,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,1090.0494,477.3053,27.3024,224.6663,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,1535.4517,216.4464,22.3501,65.1540,-1,-1);
		AddStaticVehicle2(V_LANDSTAL,753.0432,276.4599,27.3697,193.0746,-1,-1);
		AddStaticVehicle2(V_LANDSTAL,1434.6874,-195.1977,31.3965,37.3303,-1,-1);
		AddStaticVehicle2(V_RANCHER,1443.1438,369.3864,18.9901,237.2415,-1,-1);
		AddStaticVehicle2(V_BOXVILLE,1425.4063,274.6239,19.5547,66.4176,-1,-1);

		AddStaticVehicle2(V_MTBIKE,959.0034,-71.3558,22.7560,273.5887,-1,-1);
		AddStaticVehicle2(V_MTBIKE,550.9790,277.9433,16.9325,217.4915,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,1382.5344,267.4018,19.5669,338.2929,-1,-1);
	 	AddStaticVehicle2(V_FREEWAY,772.5741,347.7164,20.1527,186.8465,-1,-1);
		AddStaticVehicle2(V_FREEWAY,1309.9063,163.7072,20.4609,159.9749,-1,-1);
		AddStaticVehicle2(V_FREEWAY,1499.1349,359.9464,19.2491,26.3895,-1,-1);

		/* Fast vehicles */
		AddStaticVehicle2(V_NRG500,920.2519,-575.8494,114.3125,192.3737,-1,-1);
		AddStaticVehicle2(V_NRG500,1031.8105,-66.0252,88.0367,95.0100,-1,-1);
		AddStaticVehicle2(V_CHEETAH,-70.9536,-211.5095,5.4297,266.3916,-1,-1); // 1
		AddStaticVehicle2(V_CHEETAH,166.4726,-238.2138,13.4838,89.3652,-1,-1); // 2

		/* Extensions - East */
		AddStaticVehicle2(V_TRACTOR,1974.1060,225.5116,28.1741,171.9749,-1,-1);
		AddStaticVehicle2(V_WALTON,1901.1582,136.4913,36.1577,64.5240,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,2047.9657,312.8364,27.7757,43.7642,-1,-1);
		AddStaticVehicle2(V_MESA,1934.7406,168.8163,37.2752,69.8507,-1,-1);

		AddStaticVehicle2(V_COASTG,2059.2075,-235.1499,-0.5488,91.8036,-1,-1);
		AddStaticVehicle2(V_TROPIC,2042.1426,-129.6595,-0.5391,302.9844,-1,-1);
		AddStaticVehicle2(V_TROPIC,2040.9349,-141.4028,-0.5132,216.5036,-1,-1);
		AddStaticVehicle2(V_TROPIC,2025.6659,-132.0978,-0.5605,75.8156,-1,-1);
		AddStaticVehicle2(V_DINGHY,1913.8684,-237.2200,-0.2573,300.4621,-1,-1);
		AddStaticVehicle2(V_DINGHY,1939.9235,-254.3883,-0.5218,334.6158,-1,-1);
		AddStaticVehicle2(V_DINGHY,1959.6722,-254.6385,-0.5441,359.9961,-1,-1);
		AddStaticVehicle2(V_DINGHY,1985.6084,-46.7282,-0.5498,149.4575,-1,-1);

		AddStaticVehicle2(V_SANCHEZ,1901.8351,174.0943,37.1434,36.9504,-1,-1);
		AddStaticVehicle2(V_MTBIKE,1884.4840,-12.5735,35.0930,255.9918,-1,-1);
		AddStaticVehicle2(V_FREEWAY,1646.6997,245.8785,19.2938,256.8500,-1,-1);

		/* Extension II - East */
		AddStaticVehicle2(V_DUMPER,2397.7869,363.5640,28.9323,126.3227,-1,-1);
		AddStaticVehicle2(V_WALTON,2358.5151,170.5490,27.2183,87.9205,-1,-1);
		AddStaticVehicle2(V_TAMPA,2209.1809,110.4762,27.2400,271.5754,-1,-1);
		AddStaticVehicle2(V_SUNRISE,2209.8020,-88.0954,27.0613,267.0333,-1,-1);
		AddStaticVehicle2(V_SABRE,2280.5549,-83.1752,26.5242,175.6755,-1,-1);
		AddStaticVehicle2(V_RUMPO,2431.4666,-83.9197,26.8410,271.1351,-1,-1);
		AddStaticVehicle2(V_TAMPA,2501.5710,6.3421,27.2282,179.4910,-1,-1);
		AddStaticVehicle2(V_WINDSOR,2207.2769,-380.5099,51.8874,267.7411,-1,-1);
		AddStaticVehicle2(V_GLENSHIT,2524.1360,-375.1299,79.1788,267.9537,-1,-1);

		AddStaticVehicle2(V_FREEWAY,2324.5603,74.9540,26.4922,178.1036,-1,-1);
		AddStaticVehicle2(V_MTBIKE,2315.1145,3.3423,26.4844,357.9587,-1,-1);
		AddStaticVehicle2(V_FREEWAY,2268.3779,66.0873,26.4844,92.7261,-1,-1);
		AddStaticVehicle2(V_SANCHEZ,2254.8618,-84.3024,26.5165,178.1822,-1,-1);

		AddStaticVehicle2(V_COASTG,2101.7981,-99.2673,-0.5476,121.5565,-1,-1);
		AddStaticVehicle2(V_DINGHY,2170.8008,-138.8979,-0.5468,170.7504,-1,-1);

		AddStaticVehicle2(V_AMBULAN,212.0961,-160.0490,1.5781,269.2923,-1,-1);
		AddStaticVehicle2(V_AMBULAN,708.2214,-441.6792,16.3359,181.1105,-1,-1);
		AddStaticVehicle2(V_AMBULAN,1228.3380,299.6837,19.5547,67.1483,-1,-1);


		AddStaticPickup(PICKUP_ARMOR,2,-47.87,29.81,6.48);
		AddStaticPickup(PICKUP_ARMOR,2,1240.99,233.18,29.69);
		AddStaticPickup(PICKUP_ARMOR,2,1070.62,-358.18,76.78);

		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,80,-41.82,98.34,3.10,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,30,-92.39,47.91,3.11,WP_NO_RESPAWN);
//		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,15,-49.07,3.09,3.10,WP_NO_RESPAWN,WP_SYNCED);


	//	game_boundary_max_x = 1569.9965;
	//	game_boundary_max_x = 2109.3298; // Extension
		game_boundary_max_x = 3016.4462; // Extension ii
		game_boundary_min_x = -1024.0018;
		game_boundary_max_y = 584.1354;
		game_boundary_min_y = -588.9803;

		intel_north = game_boundary_min_y + 0.66 * (game_boundary_max_y-game_boundary_min_y);
		intel_south = game_boundary_min_y + 0.33 * (game_boundary_max_y-game_boundary_min_y);
		intel_east = game_boundary_min_x + 0.66 * (game_boundary_max_x-game_boundary_min_x);
		intel_west = game_boundary_min_x + 0.33 * (game_boundary_max_x-game_boundary_min_x);
		intel_feature = "the Countryside";

		wardrobe_interior = 0;
  		wardrobe_player_x = -412.85;
		wardrobe_player_y = -424.83;
		wardrobe_player_z = 32.32;
		wardrobe_player_orientation = 157.5869;
		wardrobe_camera_x = wardrobe_player_x - 0.5;
		wardrobe_camera_y = wardrobe_player_y - 3.0;
		wardrobe_camera_z = wardrobe_player_z + 2.0;

		pm_health_bonus = 1;

		for (new i=0 ; i<vehicle_counter ; i++) {
		    if (vehicle_modelid[i]==V_TROPIC) {
			    cant_drive_vehicle[TEAM_COP][i] = 1;
			    cant_drive_vehicle[TEAM_PSYCHO][i] = 1;
			    cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			    cant_drive_vehicle[TEAM_BODYGUARD][i] = 1;
			    cant_drive_vehicle[TEAM_TERRORIST][i] = 1;
			}
		}

		for (new i=0 ; i<vehicle_counter ; i++) {
		    if ((vehicle_modelid[i]==V_NRG500) || (vehicle_modelid[i]==V_CHEETAH)) {
			    cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			}
		}

		class_psycho1 = AddPlayerClass2(230,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,200);
		class_psycho2 = AddPlayerClass2(212,WEAPON_PARACHUTE,-1,WEAPON_DEAGLE,50,WEAPON_SAWEDOFF,200);
		class_psycho3 = AddPlayerClass2(200,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);
		class_psycho4 = AddPlayerClass2(137,WEAPON_PARACHUTE,-1,WEAPON_DEAGLE,50,WEAPON_FLAMETHROWER,300);

		class_terrorist1 = AddPlayerClass2(181, WEAPON_SAWEDOFF,100, WEAPON_MP5,400, WEAPON_FLAMETHROWER,100);
		class_terrorist2 = AddPlayerClass2(183, WEAPON_DEAGLE,100, WEAPON_MP5,400, WEAPON_FLAMETHROWER,100);
		class_terrorist3 = AddPlayerClass2(179, WEAPON_SAWEDOFF,100, WEAPON_MP5,400, WEAPON_FLAMETHROWER,100);
		class_terrorist4 = AddPlayerClass2(191, WEAPON_DEAGLE,100, WEAPON_MP5,400, WEAPON_SHOTGUN,100);
		class_terrorist5 = AddPlayerClass2(111, WEAPON_SAWEDOFF,100, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist6 = AddPlayerClass2(73,  WEAPON_SAWEDOFF,100, WEAPON_MP5,400, WEAPON_SILENCED,300);
		class_terrorist7 = AddPlayerClass2(100, WEAPON_SILENCED,100, WEAPON_MP5,400, WEAPON_FLAMETHROWER,100);
		class_terrorist_medic = AddPlayerClass2(274, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);

		class_primeminister = AddPlayerClass2(147,WEAPON_CANE,-1,WEAPON_SPRAYCAN,1000, WEAPON_PARACHUTE,-1);

		class_bodyguard1 = AddPlayerClass2(163,WEAPON_SILENCED,100,WEAPON_UZI,250, WEAPON_PARACHUTE,-1);
		class_bodyguard2 = AddPlayerClass2(164,WEAPON_SILENCED,100,WEAPON_UZI,250, WEAPON_PARACHUTE,-1);
		class_bodyguard3 = AddPlayerClass2(165,WEAPON_SILENCED,100,WEAPON_UZI,250, WEAPON_PARACHUTE,-1);
		class_bodyguard4 = AddPlayerClass2(166,WEAPON_SILENCED,100,WEAPON_UZI,250, WEAPON_PARACHUTE,-1);
		class_bodyguard5 = AddPlayerClass2(141,WEAPON_SILENCED,100,WEAPON_UZI,250, WEAPON_PARACHUTE,-1);
		class_bodyguard_medic = AddPlayerClass2(276, WEAPON_PARACHUTE,-1,WEAPON_SILENCED,100,WEAPON_SPRAYCAN,300);


		class_cop1  = AddPlayerClass2(280, WEAPON_DEAGLE,100,WEAPON_MP5,300,WEAPON_SPRAYCAN,300);
		class_cop2  = AddPlayerClass2(281, WEAPON_DEAGLE,100,WEAPON_MP5,300,WEAPON_SPRAYCAN,300);
		class_cop3  = AddPlayerClass2(282, WEAPON_DEAGLE,100,WEAPON_MP5,300,WEAPON_SPRAYCAN,300);
		class_cop4  = AddPlayerClass2(283, WEAPON_DEAGLE,100,WEAPON_MP5,300,WEAPON_SPRAYCAN,300);
		class_cop5  = AddPlayerClass2(284, WEAPON_DEAGLE,100,WEAPON_MP5,300,WEAPON_SPRAYCAN,300);
		class_cop6  = AddPlayerClass2(285, WEAPON_DEAGLE,100,WEAPON_MP5,300,WEAPON_SPRAYCAN,300);
		class_cop7  = AddPlayerClass2(286, WEAPON_DEAGLE,100,WEAPON_MP5,300,WEAPON_SPRAYCAN,300);
		class_cop8  = AddPlayerClass2(288, WEAPON_DEAGLE,100,WEAPON_MP5,300,WEAPON_SPRAYCAN,300);
		class_cop9  = AddPlayerClass2(246, WEAPON_DEAGLE,100,WEAPON_MP5,300,WEAPON_SPRAYCAN,300);
		class_cop_medic  = AddPlayerClass2(275, WEAPON_PARACHUTE,-1,WEAPON_DEAGLE,100,WEAPON_SPRAYCAN,300);

		class_team[class_psycho1] = TEAM_PSYCHO;
		class_team[class_psycho2] = TEAM_PSYCHO;
		class_team[class_psycho3] = TEAM_PSYCHO;
		class_team[class_psycho4] = TEAM_PSYCHO;

		class_team[class_terrorist1] = TEAM_TERRORIST;
		class_team[class_terrorist2] = TEAM_TERRORIST;
		class_team[class_terrorist3] = TEAM_TERRORIST;
		class_team[class_terrorist4] = TEAM_TERRORIST;
		class_team[class_terrorist5] = TEAM_TERRORIST;
		class_team[class_terrorist6] = TEAM_TERRORIST;
		class_team[class_terrorist7] = TEAM_TERRORIST;
		class_team[class_terrorist_medic] = TEAM_TERRORIST;

		class_team[class_primeminister] = TEAM_PRIMEMINISTER;
		class_team[class_bodyguard1] = TEAM_BODYGUARD;
		class_team[class_bodyguard2] = TEAM_BODYGUARD;
		class_team[class_bodyguard3] = TEAM_BODYGUARD;
		class_team[class_bodyguard4] = TEAM_BODYGUARD;
		class_team[class_bodyguard5] = TEAM_BODYGUARD;
		class_team[class_bodyguard_medic] = TEAM_BODYGUARD;

		class_team[class_cop1] = TEAM_COP;
		class_team[class_cop2] = TEAM_COP;
		class_team[class_cop3] = TEAM_COP;
		class_team[class_cop4] = TEAM_COP;
		class_team[class_cop5] = TEAM_COP;
		class_team[class_cop6] = TEAM_COP;
		class_team[class_cop7] = TEAM_COP;
		class_team[class_cop8] = TEAM_COP;
		class_team[class_cop9] = TEAM_COP;
		class_team[class_cop_medic] = TEAM_COP;
		
		AddTask(-49.17,-220.27,15.59,13.0,TASK_BEER,60);
		AddTask(-537.49,-522.80,36.36,13.0,TASK_SHIPPING,70);
		AddTask(158.13,-107.62,4.89,13.0,TASK_MOTEL,90);
		AddTask(2766.74,80.49,19.71,13.0,TASK_HIGHWAY,60);
		AddTask(1925.52,170.05,37.28,13.0,TASK_FARM,60);
		AddTask(2034.09,-134.54,-0.50,13.0,TASK_LAKE,50);

	}


	// pickups from the game

	AddStaticPickup(PICKUP_ARMOR,2,1000.0,1068.0,11.0);
	AddStaticPickup(PICKUP_ARMOR,2,1086.0,-1806.0,17.0);
	AddStaticPickup(PICKUP_ARMOR,2,1269.0,1352.0,11.0);
	//AddStaticPickup(PICKUP_ARMOR,2,1291.76,-803.4566,1089.93);
	AddStaticPickup(PICKUP_ARMOR,2,1325.0,190.0,19.0);
	AddStaticPickup(PICKUP_ARMOR,2,-1394.0,-373.0,6.0);
	AddStaticPickup(PICKUP_ARMOR,2,1433.0,1852.0,10.8);
	AddStaticPickup(PICKUP_ARMOR,2,1531.0,925.0,11.0);
	AddStaticPickup(PICKUP_ARMOR,2,1562.0,-1888.0,14.0);
	AddStaticPickup(PICKUP_ARMOR,2,-1574.0,1268.0,1.27);
	AddStaticPickup(PICKUP_ARMOR,2,1715.12,-1673.51,20.22);
	AddStaticPickup(PICKUP_ARMOR,2,1759.0,-2242.0,1.0);
	AddStaticPickup(PICKUP_ARMOR,2,-1863.0,112.0,15.0);
	AddStaticPickup(PICKUP_ARMOR,2,-2092.0,-2330.0,31.0);
	AddStaticPickup(PICKUP_ARMOR,2,2097.0,2154.0,14.0);
	AddStaticPickup(PICKUP_ARMOR,2,2106.0,1004.0,11.0);
	AddStaticPickup(PICKUP_ARMOR,2,2112.0,-1990.0,14.0);
	AddStaticPickup(PICKUP_ARMOR,2,212.0,1807.0,22.0);
	AddStaticPickup(PICKUP_ARMOR,2,2125.493,-2275.037,20.5202);
	//AddStaticPickup(PICKUP_ARMOR,2,215.8489,126.0831,1003.226);
	AddStaticPickup(PICKUP_ARMOR,2,2230.45,-2286.004,14.3751);
	AddStaticPickup(PICKUP_ARMOR,2,-2260.0,2568.0,6.0);
	AddStaticPickup(PICKUP_ARMOR,2,-2285.0,-24.0,35.0);
	AddStaticPickup(PICKUP_ARMOR,2,2294.0,547.0,1.0);
	AddStaticPickup(PICKUP_ARMOR,2,-2303.0,-1606.0,484.0);
	AddStaticPickup(PICKUP_ARMOR,2,2339.0,-1944.0,13.0);
	AddStaticPickup(PICKUP_ARMOR,2,-2425.3,1536.4,2.1);
	AddStaticPickup(PICKUP_ARMOR,2,2435.0,1663.0,16.0);
	//AddStaticPickup(PICKUP_ARMOR,2,245.0618,195.9429,1008.172);
	AddStaticPickup(PICKUP_ARMOR,2,2487.0,139.0,27.0);
	AddStaticPickup(PICKUP_ARMOR,2,2500.0,925.0,11.0);
	AddStaticPickup(PICKUP_ARMOR,2,-2513.0,770.0,35.0);
	AddStaticPickup(PICKUP_ARMOR,2,252.0,2616.0,17.0);
	AddStaticPickup(PICKUP_ARMOR,2,253.0,80.0,1004.0);
	AddStaticPickup(PICKUP_ARMOR,2,2543.0,-1625.0,12.0);
	AddStaticPickup(PICKUP_ARMOR,2,2544.0,-1120.0,62.0);
	//AddStaticPickup(PICKUP_ARMOR,2,263.52,83.14,1001.039);
	//AddStaticPickup(PICKUP_ARMOR,2,264.2632,117.0737,1008.812);
	AddStaticPickup(PICKUP_ARMOR,2,-2650.0,-198.0,4.0);
	AddStaticPickup(PICKUP_ARMOR,2,266.2813,1816.398,1.594);
	AddStaticPickup(PICKUP_ARMOR,2,275.169,1859.699,9.81);
	AddStaticPickup(PICKUP_ARMOR,2,2767.0,-1192.0,69.0);
	AddStaticPickup(PICKUP_ARMOR,2,-2916.0,992.0,8.0);
	AddStaticPickup(PICKUP_ARMOR,2,-317.0,2651.0,67.0);
	AddStaticPickup(PICKUP_ARMOR,2,-51.0,-232.0,7.0);
	AddStaticPickup(PICKUP_ARMOR,2,761.0,380.0,23.0);
	AddStaticPickup(PICKUP_ARMOR,2,-902.0,2689.0,42.0);
	AddStaticPickup(PICKUP_ARMOR,2,943.012,-939.8284,57.7345);
	AddStaticPickup(PICKUP_ARMOR,2,108.48,1919.29,18.56);
	//AddStaticPickup(PICKUP_ARMOR,2,1268.34,-804.33,1084.01);
	AddStaticPickup(PICKUP_ARMOR,2,1292.7,-769.0,95.8);
	AddStaticPickup(PICKUP_ARMOR,2,-2060.03,304.18,35.81);
	//AddStaticPickup(PICKUP_ARMOR,2,2144.339,1640.666,993.5);
	AddStaticPickup(PICKUP_ARMOR,2,2146.559,-2244.46,13.58);
	//AddStaticPickup(PICKUP_ARMOR,2,2176.471,1597.394,1000.0);
	AddStaticPickup(PICKUP_ARMOR,2,2186.507,-2244.993,15.81);
	//AddStaticPickup(PICKUP_ARMOR,2,2240.686,-1187.269,1033.836);
	AddStaticPickup(PICKUP_ARMOR,2,2265.825,1617.069,94.5);
	AddStaticPickup(PICKUP_ARMOR,2,247.016,1859.22,14.08);
	//AddStaticPickup(PICKUP_ARMOR,2,2520.4,-1281.287,1054.681);
	//AddStaticPickup(PICKUP_ARMOR,2,2520.4,-1281.287,1054.681);
	//AddStaticPickup(PICKUP_ARMOR,2,2527.783,-1288.816,1031.43);
	//AddStaticPickup(PICKUP_ARMOR,2,2527.783,-1288.816,1031.43);
	//AddStaticPickup(PICKUP_ARMOR,2,2549.429,-1291.612,1061.024);
	//AddStaticPickup(PICKUP_ARMOR,2,2552.31,-1286.274,1061.024);
	//AddStaticPickup(PICKUP_ARMOR,2,2552.475,-1280.687,1054.686);
	//AddStaticPickup(PICKUP_ARMOR,2,2552.475,-1280.687,1054.686);
	AddStaticPickup(PICKUP_ARMOR,2,255.36,1802.007,7.47);
	AddStaticPickup(PICKUP_ARMOR,2,2557.337,2817.809,10.82);
	//AddStaticPickup(PICKUP_ARMOR,2,2580.953,-1285.117,1044.173);
	//AddStaticPickup(PICKUP_ARMOR,2,2580.953,-1285.117,1044.173);
	AddStaticPickup(PICKUP_ARMOR,2,292.46,1817.89,1.015);
	//AddStaticPickup(PICKUP_ARMOR,2,958.4733,2144.251,1011.0);
	AddStaticPickup(PICKUP_PARACHUTE,2,1528.222,-1357.985,330.0371);
	AddStaticPickup(PICKUP_PARACHUTE,2,-1542.857,698.4825,139.2658);
	AddStaticPickup(PICKUP_PARACHUTE,2,-1753.418,885.3446,295.5166);
	AddStaticPickup(PICKUP_PARACHUTE,2,2057.0,2434.0,166.0);
	AddStaticPickup(PICKUP_PARACHUTE,2,-225.6758,1394.256,172.0143);
	AddStaticPickup(PICKUP_PARACHUTE,2,-2350.0,-1586.0,485.0);
	AddStaticPickup(PICKUP_PARACHUTE,2,-2679.0,1933.0,217.0);
	AddStaticPickup(PICKUP_PARACHUTE,2,-773.0379,2423.499,157.0856);
	AddStaticPickup(PICKUP_PARACHUTE,2,1797.602,-1308.881,133.8128);
	AddStaticPickup(PICKUP_PARACHUTE,2,2267.989,1699.668,101.4);
	//AddStaticPickup(PICKUP_HEALTH,2,1875.6,-2091.4,13.5);
	//AddStaticPickup(PICKUP_HEALTH,2,1877.54,-1982.63,13.48);
	//AddStaticPickup(PICKUP_HEALTH,2,-2412.4,1547.9,26.0);
	//AddStaticPickup(PICKUP_HEALTH,2,-2427.8,1547.6,22.1);
	//AddStaticPickup(PICKUP_HEALTH,2,1278.88,-810.5082,1086.0);
	//AddStaticPickup(PICKUP_HEALTH,2,2158.82,-2232.747,13.59);
	//AddStaticPickup(PICKUP_HEALTH,2,-2182.652,-247.3813,36.4);
	//AddStaticPickup(PICKUP_HEALTH,2,228.91,1858.65,14.8);
	//AddStaticPickup(PICKUP_HEALTH,2,2524.0,-1283.0,1048.337);
	//AddStaticPickup(PICKUP_HEALTH,2,2528.456,-1282.385,1048.337);
	//AddStaticPickup(PICKUP_HEALTH,2,2552.298,-1306.06,1054.681);
	//AddStaticPickup(PICKUP_HEALTH,2,2552.298,-1306.06,1054.681);
	//AddStaticPickup(PICKUP_HEALTH,2,2570.839,-1285.818,1037.821);
	//AddStaticPickup(PICKUP_HEALTH,2,2573.734,2814.91,10.82);
	//AddStaticPickup(PICKUP_HEALTH,2,2575.094,-1286.042,1037.781);
	//AddStaticPickup(PICKUP_HEALTH,2,2578.784,-1282.572,1065.4);
	//AddStaticPickup(PICKUP_HEALTH,2,2582.848,-1282.741,1065.391);
	//AddStaticPickup(PICKUP_HEALTH,2,273.61,1816.32,1.02);
	//AddStaticPickup(PICKUP_HEALTH,2,-770.752,2423.63,157.0753);
	//AddStaticPickup(PICKUP_HEALTH,2,958.9762,2096.836,1011.1);

	// weapons from the game
	//AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,120,2499.39,-1707.463,1014.25,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,160,-121.0,-232.0,1.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,160,1308.97,-874.4,40.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,160,1625.0,1944.0,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,160,1923.0,1011.0,22.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,160,-1968.0,-923.0,32.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,160,2129.4,-2280.71,14.42,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,160,-585.0,2714.0,72.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,160,825.921,-1165.813,17.8936,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,220,-1683.497,716.2739,30.6452,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,60,2552.36,-1283.15,1061.02,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-1528.144,160.0232,3.5142,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-1635.026,604.4713,40.6377,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-1713.006,1368.239,7.2664,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-1770.815,903.2556,25.3894,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-1771.261,-597.5884,16.6287,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-1851.316,1302.291,60.7553,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-1945.0,-1088.0,31.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-1976.483,670.5043,46.6039,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-1977.916,113.8457,27.1096,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2038.408,1111.406,53.7928,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2048.803,899.5274,53.8866,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2292.47,722.5441,49.4265,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2329.984,-165.3635,35.2389,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,2495.807,-1700.637,1017.837,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2539.918,-598.6152,132.764,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2550.106,657.286,14.7319,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2677.102,234.9912,4.1048,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2706.692,375.8728,5.0525,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2721.241,-318.8085,7.5246,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,50,-2791.248,771.5468,51.0904,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,24,-2044.1,-2523.86,31.11,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_CAMERA,WEAPON_CAMERA,24,-2044.1,-2523.86,31.11,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,50,-2038.664,137.4694,28.3359,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,50,1345.0,2367.0,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,50,-1841.106,-74.2171,14.7606,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,30,217.8,76.4,1005.046,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,30,228.3176,114.433,999.0215,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,30,240.7765,196.1124,1008.172,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,50,24.0,969.0,20.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,50,-932.02,2649.92,42.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,60,2552.09,-1294.106,1061.024,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,-365.4774,-1422.401,25.5,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,2447.773,-1975.663,13.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,2447.773,-1975.663,13.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,-2206.0,-23.0,35.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,2423.892,-1117.452,41.2464,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,35,242.613,196.3202,1008.172,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,2538.0,-1630.0,14.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,35,255.0493,84.0615,1002.453,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,35,263.2531,109.7859,1004.624,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,338.0,-1875.0,4.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,-639.0,1181.0,13.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,2444.895,-1981.524,13.933,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_COLT45,WEAPON_COLT45,100,2444.895,-1981.524,13.933,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_RIFLE,WEAPON_RIFLE,30,-1035.0,-2258.0,70.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_RIFLE,WEAPON_RIFLE,30,1102.0,-661.0,114.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_RIFLE,WEAPON_RIFLE,30,-2094.0,-488.0,36.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-1542.022,-437.7364,5.9258,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-1870.0,-1625.0,22.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-2212.0,109.0,35.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-2352.0,2456.0,6.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,2766.0,-2182.0,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,36.0,1372.0,9.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FIREEXTINGUISHER,WEAPON_FIREEXTINGUISHER,3000,-1627.0,-2692.0,49.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FIREEXTINGUISHER,WEAPON_FIREEXTINGUISHER,3000,-1700.0,415.0,7.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FIREEXTINGUISHER,WEAPON_FIREEXTINGUISHER,3000,2148.0,2721.0,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FIREEXTINGUISHER,WEAPON_FIREEXTINGUISHER,3000,-742.0,2752.0,47.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_FIREEXTINGUISHER,WEAPON_FIREEXTINGUISHER,3000,0.0,0.0,0.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_FIREEXTINGUISHER,WEAPON_FIREEXTINGUISHER,99999,2529.829,-1303.027,1048.337,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_FIREEXTINGUISHER,WEAPON_FIREEXTINGUISHER,99999,2534.036,-1321.212,1031.469,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_FIREEXTINGUISHER,WEAPON_FIREEXTINGUISHER,99999,2567.948,-1292.879,1044.173,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,-1358.0,-2115.0,30.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,-1579.0,29.45,17.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,-2132.52,189.2507,35.5379,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,2649.0,2733.0,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,-601.4012,-1068.6,23.6667,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,-366.066,-1418.683,25.5,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,-1100.3,-1640.4,76.4,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_GRENADE,WEAPON_GRENADE,20,-2035.474,137.2511,28.3359,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_GRENADE,WEAPON_GRENADE,20,2142.0,-1804.0,16.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_GRENADE,WEAPON_GRENADE,20,2441.0,-1013.0,54.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_GRENADE,WEAPON_GRENADE,20,-2520.0,2293.0,5.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_GRENADE,WEAPON_GRENADE,20,2809.0,864.0,21.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_GRENADE,WEAPON_GRENADE,20,2820.013,-1426.519,23.805,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_GRENADE,WEAPON_GRENADE,20,397.0,-1924.0,8.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_GRENADE,WEAPON_GRENADE,6,-2412.4,1547.9,25.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_HEATSEEKER,WEAPON_HEATSEEKER,10,-1126.69,-150.82,14.61,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_HEATSEEKER,WEAPON_HEATSEEKER,10,1155.0,2341.0,17.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_HEATSEEKER,WEAPON_HEATSEEKER,10,-1317.0,2509.0,87.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_THERMAL_GOGGLES,WEAPON_THERMAL_GOGGLES,1,1270.52,-795.5929,1084.254,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_THERMAL_GOGGLES,WEAPON_THERMAL_GOGGLES,1,212.8813,1811.005,21.4187,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_THERMAL_GOGGLES,WEAPON_THERMAL_GOGGLES,1,-2224.68,129.1278,1035.62,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_THERMAL_GOGGLES,WEAPON_THERMAL_GOGGLES,1,2575.03,-1281.598,1061.02,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_THERMAL_GOGGLES,WEAPON_THERMAL_GOGGLES,1,-350.499,1608.437,75.642,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_JETPACK,WEAPON_JETPACK,0,268.7,1884.1,-30.085,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_JETPACK,WEAPON_JETPACK,0,268.7,1884.1,-30.085,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_KNIFE,WEAPON_KNIFE,-1,-1456.289,1497.905,6.7,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_KNIFE,WEAPON_KNIFE,-1,-1595.0,1345.0,-7.5,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_M4,WEAPON_M4,60,2021.879,1001.467,10.3203,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_M4,WEAPON_M4,70,113.0,1811.0,18.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_M4,WEAPON_M4,70,1379.0,-2547.0,14.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_M4,WEAPON_M4,70,2575.0,1562.0,16.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_M4,WEAPON_M4,70,-2903.0,784.0,35.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_M4,WEAPON_M4,60,2549.632,-1294.612,1061.024,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,120,-2038.43,139.6281,28.3359,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,120,119.0,2409.0,17.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,120,1446.35,1900.03,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,120,-1679.0,1410.0,7.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,120,-2038.0,-2562.0,31.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,120,2551.33,-1740.0,6.49,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,120,2790.343,-1427.489,39.6258,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,200,-1496.0,591.0,42.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,200,244.98,1859.185,14.08,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,200,2492.051,2398.377,4.5293,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,200,2676.0,836.0,22.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,10,-170.0,1025.0,20.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,10,1781.0,2072.0,11.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,10,2197.0,-2475.0,14.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,10,2255.0,-74.0,32.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,10,2426.0,-1416.0,24.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,10,2478.0,1182.0,22.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,10,2832.0,2405.0,18.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,10,886.0,-966.0,37.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,20,2493.553,-1706.863,1015.132,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_MOLOTOV,WEAPON_MOLOTOV,0,0.0,0.0,0.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,2025.286,1001.496,10.3203,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,2198.11,-1170.22,33.5,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,1296.0,392.0,20.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,-1474.0,2577.0,56.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,1764.0,-1930.0,14.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,2243.0,1132.0,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,2266.0,-1028.0,59.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,2293.686,1982.286,31.4335,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,-2678.0,-128.0,4.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,200,2175.614,-2282.959,13.54,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_NIGHTVISION_GOGGLES,WEAPON_NIGHTVISION_GOGGLES,1,102.7728,1899.192,33.1572,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_NIGHTVISION_GOGGLES,WEAPON_NIGHTVISION_GOGGLES,1,1274.3,-825.7809,1085.079,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_NIGHTVISION_GOGGLES,WEAPON_NIGHTVISION_GOGGLES,1,-1956.274,-853.7687,31.873,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_NIGHTVISION_GOGGLES,WEAPON_NIGHTVISION_GOGGLES,1,-948.3487,1858.023,8.3237,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,10,1646.0,1349.0,11.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,10,1740.0,-1231.0,92.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,10,2055.355,2435.356,40.3684,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,10,2072.0,2370.0,61.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,10,-1100.3,-1640.4,76.4,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,10,-1100.3,-1640.4,76.4,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,10,-1100.3,-1640.4,76.4,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,20,-808.1523,2430.788,156.9872,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,40,-431.3719,2240.132,42.6177,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_ROCKETLAUNCHER,WEAPON_ROCKETLAUNCHER,60,-1688.86,695.3077,30.3452,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SATCHEL,WEAPON_SATCHEL,15,1284.894,278.5705,19.5547,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SATCHEL,WEAPON_SATCHEL,15,-2542.262,922.2401,67.1221,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SATCHEL,WEAPON_SATCHEL,15,-2754.0,-400.0,7.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SATCHEL,WEAPON_SATCHEL,20,2023.775,1013.527,10.5203,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SATCHEL,WEAPON_SATCHEL,10,2146.487,1622.805,993.5,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SATCHEL,WEAPON_SATCHEL,5,2146.487,1622.805,993.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,100,2254.378,-2261.689,14.3751,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,100,1569.0,2150.0,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,100,1706.352,1242.019,34.2952,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,100,2366.0,23.0,28.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,100,2428.0,-1214.0,36.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,100,924.0,2138.0,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,100,832.603,-1273.861,14.4833,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,100,2493.491,-1708.237,1014.932,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,100,2021.327,1013.349,10.3203,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,100,297.8289,1846.622,6.7266,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,100,1407.0,1098.0,11.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,100,2568.502,-1282.345,1037.781,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SILENCED,WEAPON_SILENCED,100,1098.0,1681.0,7.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SILENCED,WEAPON_SILENCED,100,1214.0,-1816.0,17.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SILENCED,WEAPON_SILENCED,100,1237.418,-808.5872,1084.09,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SNIPER,WEAPON_SNIPER,20,-1629.0,1167.0,24.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SNIPER,WEAPON_SNIPER,20,2015.744,1004.045,39.1,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SNIPER,WEAPON_SNIPER,20,2047.0,-1406.0,68.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SNIPER,WEAPON_SNIPER,20,2225.0,2530.0,17.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SNIPER,WEAPON_SNIPER,20,2337.0,1806.0,72.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SNIPER,WEAPON_SNIPER,20,935.744,-926.0453,57.7642,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SNIPER,WEAPON_SNIPER,60,-2035.773,139.4337,28.3359,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_SNIPER,WEAPON_SNIPER,0,0.0,0.0,0.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SPRAYCAN,WEAPON_SPRAYCAN,500,2492.505,-1700.824,1017.8,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SPRAYCAN,WEAPON_SPRAYCAN,500,2493.52,-1700.83,14.27,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SPRAYCAN,WEAPON_SPRAYCAN,500,2463.0,-1061.0,60.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SPRAYCAN,WEAPON_SPRAYCAN,500,2510.0,-1723.0,19.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_SPRAYCAN,WEAPON_SPRAYCAN,500,2819.0,1663.0,11.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_TEARGAS,WEAPON_TEARGAS,10,1319.0,1636.0,10.6,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_TEARGAS,WEAPON_TEARGAS,10,-1386.0,509.0,4.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_TEARGAS,WEAPON_TEARGAS,10,1463.0,-1013.0,27.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_TEARGAS,WEAPON_TEARGAS,10,2213.0,-2283.0,15.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_TEARGAS,WEAPON_TEARGAS,10,2725.0,2727.0,11.0,30,WP_SYNCED);
	//AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,120,2499.514,-1709.64,1014.25,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,1878.3,-2091.1,13.5,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,-2414.9,1538.7,26.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,-2428.4,1536.3,2.1,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,1408.0,-2380.0,14.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,1761.0,591.0,10.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,-2092.0,1121.0,54.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,2529.724,-1678.563,19.4225,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,2574.065,-1134.201,64.6535,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,262.0,38.0,2.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,-2665.0,1452.0,7.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,899.8012,-792.078,102.0,30,WP_SYNCED);
	AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,250,2466.0,-1656.1,13.3,30,WP_SYNCED);


	printf("Number of pickups: %d\n",pickup_counter-1);

	printf("Number of vehicles: %d\n",vehicle_counter-1);

	new car_modelid_used[1000];

	for (new i=1 ; i<MAX_VEHICLES ; i++) {
	    car_modelid_used[vehicle_modelid[i]] = 1;
	}

	new total_modelids_used = 0;

	for (new i=0 ; i<sizeof car_modelid_used ; i++) {
	    if (car_modelid_used[i]) total_modelids_used++;
	}

	printf("Number of vehicles types: %d\n",total_modelids_used);

	printf("spawn counts: %d %d %d %d %d\n",team_spawn_counter[0],team_spawn_counter[1],team_spawn_counter[2],team_spawn_counter[3],team_spawn_counter[4]);

	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		player_class[i] = INVALID_CLASS;
		player_map[i] = INVALID_MAP;
		for (new j=0 ; j<NUM_PICKUPS ; j++) {
	        player_pickup_when[i][j] = -1;
		}
 	}

	regular_task_timer = SetTimer("RegularTask", 100, 1);

	round_timer_counter = 0;
	round_timer = SetTimer("RoundTick", 1000, 1);

	if (obj_counter > 0) {
		obj_current = random(obj_counter);
		obj_time_left = obj_time[obj_current];
	}

	return 1;
}




public OnPlayerConnect(playerid)
{
	player_watching[playerid] = INVALID_PLAYER_ID;
	new text[256];
	format (text, sizeof text, "Welcome to \"%s\".", mode_name);
	SendClientMessage(playerid,COLOUR_IMPORTANT,text);
	SendClientMessage(playerid,COLOUR_IMPORTANT,"Select a character class, and have fun!");
	SendClientMessage(playerid,COLOUR_IMPORTANT,"(NEW: LARGER DESERT BOUNDARIES)");
	SendClientMessage(playerid,COLOUR_IMPORTANT,"(coming soon: tasks for desert)");
 	SendClientMessage(playerid,COLOUR_IMPORTANT,"(PTPM forum: http://www.sparksptpm.us.tt/)");
 	SendClientMessage(playerid,COLOUR_IMPORTANT,"(Official teamspeak server: dog.woaf.net (same ip as game))");
	SetPlayerColor(playerid,0x606060AA);
	player_class[playerid] = INVALID_CLASS;
	player_class_requested[playerid] = INVALID_CLASS;
	player_watching[playerid] = INVALID_PLAYER_ID;
	player_pos_faked[playerid] = 0;
	player_already_voted[playerid] = 0;
	player_teamkills[playerid] = 0;
	player_teamkill_freeze_counter[playerid] = 0;
	player_vehicle_passenger[playerid] = 0;
	player_vehicle_driver[playerid] = 0;
	player_legal_minigun[playerid] = 0;
	player_op[playerid] = fexist("everyoneisop") ? 1 : 0;
	player_map[playerid] = INVALID_MAP;
	player_speed_watch[playerid] = INVALID_PLAYER_ID;
	player_last_speed_warning[playerid] = -1;
	player_muted[playerid] = 0;
	player_query_target[playerid] = INVALID_PLAYER_ID;
	player_vote_muted[playerid] = 0;
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	if (!IsPlayerConnected(playerid)) {
		printf("ERROR: OnPlayerRequestClass(%d,%d) but not connected.\n",playerid, classid);
		return 1;
	}

 	SetPlayerInterior(playerid, wardrobe_interior);

	SetPlayerPos(playerid,wardrobe_player_x,wardrobe_player_y,wardrobe_player_z);
	SetPlayerFacingAngle(playerid, wardrobe_player_orientation);
	SetPlayerCameraPos(playerid,wardrobe_camera_x,wardrobe_camera_y,wardrobe_camera_z);
	SetPlayerCameraLookAt(playerid,wardrobe_player_x,wardrobe_player_y,wardrobe_player_z);


	player_class_requested[playerid] = classid;

	player_class[playerid] = INVALID_CLASS;

	if (VetoPlayerClass(classid, INVALID_CLASS) == classid) {

		new name[80];
		GetTextFromTeam(name, class_team[classid]);

		new text[80];
		format(text,sizeof text,"~w~%s",name);

		if (classid==class_terrorist_medic ||
            classid==class_bodyguard_medic ||
            classid==class_cop_medic) {
            format(text,sizeof text,"%s~n~(medic)",text);
		}

		GameTextForPlayer(playerid,text,1000,GAME_TEXT_STYLE_BIG);

	} else {

		new name[80];
		GetTextFromTeam(name, class_team[classid]);

		new text[80];
	 	format(text,80,"~w~%s ~n~ ~r~Not available",name);

		GameTextForPlayer(playerid,text,1500,GAME_TEXT_STYLE_BIG);

	}


	return 1;
}

Balancedness(proposedclassid, oldclassid, &dualpm, &toomanybg)
{
	new team_players_count = 0;
	dualpm = 0;
	toomanybg = 0;

	new num_players[NUM_TEAMS];

	for (new i=0 ; i<MAX_PLAYERS ; i++) {
	    if (IsPlayerConnected(i)) {
			if (player_class[i]!=INVALID_CLASS) {
				new team = class_team[player_class[i]];
			    num_players[team] += 1;
	        	if (team!=TEAM_PRIMEMINISTER && team!=TEAM_PSYCHO)
					team_players_count++;
			}
		}
	}

	if (proposedclassid!=INVALID_CLASS) {
		new team = class_team[proposedclassid];
	    num_players[team] += 1;
       	if (team!=TEAM_PRIMEMINISTER && team!=TEAM_PSYCHO)
			team_players_count++;
	}

	if (oldclassid!=INVALID_CLASS) {
		new team = class_team[oldclassid];
	    num_players[team] -= 1;
       	if (team!=TEAM_PRIMEMINISTER && team!=TEAM_PSYCHO)
			team_players_count--;
	}



	new Float:balancedness = 0.0;

	if (num_players[TEAM_PRIMEMINISTER]>1)
		dualpm = 1;

	if (team_players_count==0) return 0;

	// a bodyguard is worth 2 cops
	balancedness += 0.42 * (num_players[TEAM_BODYGUARD]);

	balancedness += 0.28 * num_players[TEAM_COP];

	balancedness += -0.28 * num_players[TEAM_TERRORIST];

	// psychos & pm do not affect balancedness



	// absolute value

	new Float:pain = (floatabs(balancedness)*100) / team_players_count;

	if ((num_players[TEAM_BODYGUARD]*100)/team_players_count > 30)
	    toomanybg = 1;

	//new text[100];
	//format(text,sizeof text,"balancedness: %d",pain2);
	//SendClientMessageToAll(0xFFFFFFAA,text);

	return floatround (pain);
}



VetoPlayerClass(classid, oldclassid)
{
	new dualpm = 0, toomanybg = 0;

	new prebalancedness = Balancedness(INVALID_CLASS, INVALID_CLASS,dualpm, toomanybg);
	new postbalancedness = Balancedness(classid, oldclassid, dualpm, toomanybg);

	new players_count = 0;

	for (new i=0 ; i<MAX_PLAYERS ; i++) {
	    if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS) {
			new team = class_team[player_class[i]];
			if (player_class[i]!=INVALID_CLASS && team!=TEAM_PRIMEMINISTER && team!=TEAM_PSYCHO)
				players_count++;
		}
	}

	new text[256];
	format(text, sizeof text, "players_count: %d [%d->%d] (%d -> %d) %d %d",players_count,prebalancedness,postbalancedness,oldclassid,classid,dualpm,toomanybg);
	for (new i=0 ; i<MAX_PLAYERS ; i++) {
	    if (IsPlayerConnected(i) && IsPlayerAdmin(i)) {
			//SendClientMessage(i,0xFFFFFFAA,text);
	    }
	}


	if (!dualpm && (players_count<=5 || postbalancedness<=10 || postbalancedness < prebalancedness) && (!toomanybg || class_team[classid]!=TEAM_BODYGUARD || players_count<=5)) {
		// everything ok
	    return classid;
	}

	// otherwise choice vetoed
	switch (class_team[classid]) {
		case TEAM_PSYCHO: {
		    // spawning as psycho always works
		    return classid;
		}
		case TEAM_TERRORIST: {
			new class_psychox = class_psycho1 + random(NUM_PSYCHOS);
			return class_psychox;
		}
		case TEAM_PRIMEMINISTER: {
		    // spawning as pm always works unless theres already a pm
		    if (!dualpm) return classid;
			new class_bodyguardx = class_bodyguard1 + random(NUM_BODYGUARDS);
			return VetoPlayerClass(class_bodyguardx, oldclassid);
		}
		case TEAM_BODYGUARD: {
		    // spawning as bodyguard only works if team balancing is ok, and !toomanybg
			new class_copx = class_cop1 + random(NUM_COPS);
			return VetoPlayerClass(class_copx, oldclassid);
		}
		case TEAM_COP: {
			new class_psychox = class_psycho1 + random(NUM_PSYCHOS);
			return class_psychox;
		}
	}

	printf("ERROR: This should never happen: VetoPlayerClass\n");

	return classid;
}

public OnPlayerSpawn(playerid)
{
	if (!IsPlayerConnected(playerid)) {
		printf("ERROR: OnPlayerSpawn(%d) but not connected.\n",playerid);
		return 1;
	}

	if (player_class[playerid] == INVALID_CLASS) { // if "first" spawn
		new classid = player_class_requested[playerid];
		// override class if unavailable
		new veto = VetoPlayerClass(classid,player_class[playerid]);
		if (classid != veto)
			SendClientMessage(playerid,COLOUR_IMPORTANT,"The class you selected was full, picking something else...");
		SetPlayerClass(playerid,veto); // results in a recursive call to OnPlayerSpawn
		return 1;
 	}

	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid,POCKET_MONEY);

	SetPlayerHealth(playerid,class_initial_hp[player_class[playerid]]);

	player_legal_minigun[playerid] = 0;


	if (safehouse_exists)
		SetPlayerCheckpoint(playerid,safehouse_x,safehouse_y,safehouse_z,safehouse_exclusion);

	new team = class_team[player_class[playerid]];
	new spawn = random(team_spawn_counter[team]);
	SetPlayerInterior(playerid,team_spawn_interior[team][spawn]);
	SetPlayerPos(playerid, team_spawn_x[team][spawn],
                           team_spawn_y[team][spawn],
                           team_spawn_z[team][spawn]);
	SetPlayerFacingAngle(playerid, team_spawn_a[team][spawn]);

	SetCameraBehindPlayer(playerid);
	if (pm_initially_imprisoned && class_team[player_class[playerid]]==TEAM_PRIMEMINISTER) {
		pm_fresh = 1;
    	SetPlayerWorldBounds(playerid,pm_prison_east,pm_prison_west,pm_prison_north,pm_prison_south);
	} else {
		SetPlayerWorldBounds(playerid,game_boundary_max_x,game_boundary_min_x,game_boundary_max_y,game_boundary_min_y);
	}

	for (new i=0 ; i<NUM_PICKUPS ; i++) {
	    if (!pickup_synced[i])
	    	player_pickup_when[playerid][i] = -1;
	}

    player_pickup_squatting[playerid] = 0;

    if (obj_counter > 0) {
        SetUpObjectiveCheckPoint(playerid);
	}

	TogglePlayerControllable(playerid,1);

	return 1;
}

SetUpObjectiveCheckPoint(playerid) {
//   	printf("obj_size[%d] = %f",obj_current,obj_size[obj_current]);
	if (obj_counter==0) {
		printf("ERROR: SetUpObjectiveCheckpoint when there are none");
		return;
	}
	DisablePlayerCheckpoint(playerid);
	if (player_class[playerid]==INVALID_CLASS) {
	    printf("ERROR: SetUpObjectiveCheckpoint without valid class");
		return;
	}
	new team = class_team[player_class[playerid]];
	if (team==TEAM_PSYCHO) return;
	new text[256];
	format (text, sizeof text, "~b~PM Objective: ~w~%s~n~~b~Objectives left: %d", obj_desc[obj_current],obj_required-obj_completed);
	GameTextForPlayer(playerid,text,10000,GAME_TEXT_STYLE_SMALL);
	SetPlayerCheckpoint(playerid,obj_x[obj_current],obj_y[obj_current],obj_z[obj_current],obj_size[obj_current]);
}


SetPlayerClass(playerid, class)
{
	new team_name[80];
	new text[80];
	new player_name[80];
	GetPlayerName(playerid,player_name,80);

	if (player_class[playerid]!=INVALID_CLASS) {

		GetTextFromTeam(team_name,class_team[player_class[playerid]]);

		format (text, sizeof text, "%s is nolonger %s.", player_name, team_name);
		//SendClientMessageToAll(ClassColour(player_class[playerid]),text);
	}

	player_class[playerid] = class;

	if (class==INVALID_CLASS) return;

	SetPlayerColor(playerid,ClassColour(class));

	SetSpawnInfo(playerid,0,
        class_modelid[class],
        game_boundary_min_x+(game_boundary_max_x-game_boundary_min_x)/2,game_boundary_min_y+(game_boundary_max_y-game_boundary_min_y)/2,0,0,
        class_weapon1[class],
        class_weapon1_ammo[class],
        class_weapon2[class],
        class_weapon2_ammo[class],
        class_weapon3[class],
        class_weapon3_ammo[class]);

	GetTextFromTeam(team_name,class_team[class]);

	format (text, 80, "~y~You are %s~n~~w~/duty to get orders~n~ /reclass to change", team_name);
    GameTextForPlayer(playerid,text,7000,GAME_TEXT_STYLE_SMALL);

	format (text, 80, "%s is now %s.",player_name, team_name);
	//SendClientMessageToAll(ClassColour(class),text);

	if (IsPlayerInAnyVehicle(playerid)) {
	    // RemovePlayerFromVehicle(playerid); // doesnt fucking work
	    SetPlayerPos(playerid,game_boundary_min_x+(game_boundary_max_x-game_boundary_min_x)/2,game_boundary_min_y+(game_boundary_max_y-game_boundary_min_y)/2,0);
	}

	SpawnPlayer(playerid);

}

public OnPlayerDeath(playerid, killerid, reason)
{
	if (!IsPlayerConnected(playerid)) {
		printf("ERROR: OnPlayerDeath(%d,%d,%d) but not connected.\n",playerid, killerid, reason);
		return 1;
	}

	if (player_class[playerid]==INVALID_CLASS) {
		printf("ERROR: OnPlayerDeath(%d,%d,%d) but victim has no class.\n",playerid, killerid, reason);
		return 1;
	}

	if (killerid!=INVALID_PLAYER_ID && player_class[killerid]==INVALID_CLASS) {
		printf("ERROR: OnPlayerDeath(%d,%d,%d) but killer has no class.\n",playerid, killerid, reason);
		return 1;
	}

	if (killerid!=INVALID_PLAYER_ID) {
		new score = GetPlayerScore(killerid);
		SetPlayerScore(killerid,score+1);
	}

	SendDeathMessage(killerid, playerid, reason);

	if (playerid!=killerid && killerid!=INVALID_PLAYER_ID) {
		new victimteam = class_team[player_class[playerid]];
		new killerteam = class_team[player_class[killerid]];
		if (MessagesGoTo(victimteam,killerteam) || MessagesGoTo(killerteam,victimteam)) {
		    PlayerTeamKilled(killerid);
		}
	}

	if (class_team[player_class[playerid]]==TEAM_PRIMEMINISTER) {
		if (killerid==INVALID_PLAYER_ID)
			killerid = playerid;
		switch (class_team[player_class[killerid]]) {
			case TEAM_PRIMEMINISTER:
				GameTextForAll("The Prime Minister was killed in an accident!", 3000, GAME_TEXT_STYLE_SMALL);
			case TEAM_BODYGUARD:
				GameTextForAll("The Prime Minister was killed by his treacherous bodyguards", 3000, GAME_TEXT_STYLE_SMALL);
			case TEAM_COP:
				GameTextForAll("The Prime Minister was killed by the cops", 3000, GAME_TEXT_STYLE_SMALL);
			case TEAM_TERRORIST:
				GameTextForAll("The Prime Minister was killed by the terrorists", 3000, GAME_TEXT_STYLE_SMALL);
			case TEAM_PSYCHO:
				GameTextForAll("The Prime Minister was killed by a psychopath", 3000, GAME_TEXT_STYLE_SMALL);
			default: printf("ERROR: OnPlayerDeath (invalid team)\n");
		}

		EveryoneViewsBody(killerid,playerid);

		EndGameEvent();
	}

/*
    if(reason == 38) { //minigun death
      	Ban(killerid);
	}
*/

	return 1;
}

EndGameEvent()
{
	MapVoteStore();
	SetTimer("GameModeExitFunc", 3500, 0);
	MapVoteDisplayNextMap();
}

PlayerTeamKilled(playerid)
{
	player_teamkills[playerid]++;
	switch (player_teamkills[playerid]) {
	    case 1: { // warning
			GameTextForPlayer(playerid,"~w~Do ~r~NOT~w~ team kill!~n~use /duty",7000,GAME_TEXT_STYLE_SMALL);
		}
	    case 2: { // frozen for 7 seconds
			GameTextForPlayer(playerid,"~w~Do ~r~NOT~w~ team kill!~n~(frozen for 7 seconds)",7000,GAME_TEXT_STYLE_SMALL);
			TogglePlayerControllable(playerid,0);
			player_teamkill_freeze_counter[playerid] = 7;
		}
	    case 3: { // throw into air
			new Float:bx;
			new Float:by;
			new Float:bz;
			GetPlayerPos(playerid, bx, by, bz);
			SetPlayerPos(playerid, bx, by, bz+1000);
			GameTextForPlayer(playerid,"~w~Team killing ~r~punishment",7000,GAME_TEXT_STYLE_SMALL);
		}
	    case 4: { // reclass to psycho
			SetPlayerClass(playerid,class_psycho1 + random(NUM_PSYCHOS));
			GameTextForPlayer(playerid,"~r~FINAL WARNING!",7000,GAME_TEXT_STYLE_SMALL);
		}
	    case 5: { // final solution
			Kick(playerid);
		}
	}
}


EveryoneViewsBody(killerid,bodyplayerid)
{
	new Float:kx;
	new Float:ky;
	new Float:kz;
	GetPlayerPos(killerid, kx, ky, kz);

	new Float:bx;
	new Float:by;
	new Float:bz;
	GetPlayerPos(bodyplayerid, bx, by, bz);

	// from body to killer
	new Float:vx = kx - bx;
	new Float:vy = ky - by;
	new Float:vz = kz - bz;

	// distance
	new Float:d = floatsqroot(floatpower(vx,2) + floatpower(vy,2) + floatpower(vz,2));

	if (d>5) {
		// normalise to unit vector, take distance of 5m and add 1.5 to height
		vx = vx / d * 5;
		vy = vy / d * 5;
		vz = vz / d * 5 + 1.5;
	} else {
	    // if two players are on top of each other then just go 10m upwards
		vx = 0;
		vy = 0;
		vz = 10;
	}

	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		if (IsPlayerConnected(i)) {
			TogglePlayerControllable(i,0);
		    if (i!=bodyplayerid && i!=killerid) { // we must not move the "body"
		        DisruptTrack(i);
				SetPlayerPos(i,bx+vx*2,by+vy*2,bz+vz*2);
		    }
			SetPlayerCameraPos(i,bx+vx,by+vy,bz+vz);
			SetPlayerCameraLookAt(i,bx,by,bz);
		}
	}
}




SetPlayerPosAtPlayer(playerid,target)
{
	if (!player_pos_faked[playerid]) {
	    new Float:px;
	    new Float:py;
	    new Float:pz;

		GetPlayerPos(playerid, px, py, pz);

		player_old_x[playerid] = px;
		player_old_y[playerid] = py;
		player_old_z[playerid] = pz;

		player_pos_faked[playerid] = 1;
	}

	new Float:x;
	new Float:y;
	new Float:z;
	GetPlayerPos(target, x, y, z);

	SetPlayerPos(playerid,x,y,z+player_pos_faked_distance[playerid]);
}

SetPlayerPosAtSelf(playerid)
{
	if (!player_pos_faked[playerid]) return;

	SetPlayerPos(playerid, player_old_x[playerid], player_old_y[playerid], player_old_z[playerid]);

	player_pos_faked[playerid] = 0;
}




public RoundTick()
{
 	new pm = GetPM();
	round_timer_counter++;
	ticks_since_loc_update++;

	// GAME TIMER MESSAGE
	if (obj_counter==0 && round_timer_counter%150==0 && round_timer_counter>0 && round_timer_counter<round_time) {
		new msg[256];
		format(msg,sizeof msg,"~b~%d minutes remaining",(round_time-round_timer_counter)/60);
		GameTextForAll(msg,5000,GAME_TEXT_STYLE_SMALL);
	}

	// GAME TIMER MESSAGE
	if (obj_counter>0 && round_timer_counter%150==10 && round_timer_counter>0 && round_timer_counter<round_time) {
	    for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS) {
			new msg[256];
			format(msg,sizeof msg,"~b~%d minutes for PM to secure objectives",(round_time-round_timer_counter)/60);
			GameTextForPlayer(i,msg,5000,GAME_TEXT_STYLE_SMALL);
		}
	}

	for (new i=0 ; i<MAX_PLAYERS ; i++) {
	    if (IsPlayerConnected(i) && player_teamkill_freeze_counter[i]>0) {
	        player_teamkill_freeze_counter[i] = player_teamkill_freeze_counter[i] - 1;
	        if (player_teamkill_freeze_counter[i]<=0)
	            TogglePlayerControllable(i,1);
		}
	}


	new terrorists_in_airport_now = 0;
	for (new i=0 ; i<MAX_PLAYERS ; i++) {
	    if (IsPlayerConnected(i) && player_class[i]!= INVALID_CLASS && class_team[player_class[i]] == TEAM_TERRORIST && CalcLocation(i)==-2)
			terrorists_in_airport_now = 1;
	}
	if (terrorists_in_airport_now!=terrorists_in_airport && ticks_since_loc_update>10) {
        terrorists_in_airport = terrorists_in_airport_now;
		if (terrorists_in_airport_now) {
			ticks_since_loc_update = 0;
			for (new i=0 ; i<MAX_PLAYERS ; i++) {
			    if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS && (
				    class_team[player_class[i]]==TEAM_PRIMEMINISTER ||
				    class_team[player_class[i]]==TEAM_BODYGUARD ||
				    class_team[player_class[i]]==TEAM_COP))
					GameTextForPlayer(i,"~r~Terrorist activity in the Airport!",3000,GAME_TEXT_STYLE_SMALL);
			}
		}
	}

	if (pm!=INVALID_PLAYER_ID) {
		new pml = CalcLocation(pm);
		if (pml != pm_old_location && ticks_since_loc_update>5) {
		    pm_old_location = pml;
		    ticks_since_loc_update = 0;
			new text[200];
			LocationToText(pm,text,sizeof text);
			for (new i=0 ; i<MAX_PLAYERS ; i++) {
			    if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS && (
				    class_team[player_class[i]]==TEAM_TERRORIST ||
				    class_team[player_class[i]]==TEAM_BODYGUARD ||
				    class_team[player_class[i]]==TEAM_COP))
					GameTextForPlayer(i,text,3000,GAME_TEXT_STYLE_SMALL);
			}
		}
	}

	if (obj_counter > 0 && pm!=INVALID_PLAYER_ID && obj_completed!=obj_required) {
	    new Float:x, Float:y, Float:z;
	    GetPlayerPos(pm,x,y,z);
	    new Float:d = floatsqroot(floatpower(x-obj_x[obj_current],2)+floatpower(y-obj_y[obj_current],2));
		if (d <= obj_size[obj_current]/2 && z+1.0 > obj_z[obj_current]) {
			obj_time_left--;
			if (obj_time_left == 0) {
			    obj_completed++;
			    if (obj_completed == obj_required) {
					EveryoneViewsBody(pm,pm);
					GameTextForAll("The Prime Minister completed objectives!", 3000, GAME_TEXT_STYLE_SMALL);
					EndGameEvent();
				} else {
	                new next;
					do { next = random(obj_counter); } while (obj_counter>1 && next==obj_current);
					obj_current = next;
					obj_time_left = obj_time[obj_current];
					obj_was_in = 0;
					for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS) {
						SetUpObjectiveCheckPoint(i);
					}
				}
			} else if (obj_time_left%5==0 || obj_time_left < 10 || !obj_was_in) {
			    new text[256];
			    format (text,sizeof text, "~b~Defend checkpoint for: ~w~%d ~b~seconds",obj_time_left);
			    GameTextForPlayer(pm,text,3000,GAME_TEXT_STYLE_SMALL);
			}
			obj_was_in = 1;
		} else {
			if (obj_was_in) GameTextForPlayer(pm,"~b~Left checkpoint",1000,GAME_TEXT_STYLE_SMALL);
			obj_was_in = 0;
		}
	}

	if (round_timer_counter==round_time) {
		if (pm!=INVALID_PLAYER_ID) EveryoneViewsBody(pm,pm);
		if (obj_counter == 0)
			GameTextForAll("The Prime Minister survived!", 3000, GAME_TEXT_STYLE_SMALL);
		else
			GameTextForAll("The Prime Minister fails to secure objective!", 3000, GAME_TEXT_STYLE_SMALL);
		EndGameEvent();
	}


	if (pm_health_bonus && pm!=INVALID_PLAYER_ID && round_timer_counter % 5 == 0) { // 1% health every 5 seconds
		new Float:health;
		GetPlayerHealth(pm,health);
		if (health < 100) {
			SetPlayerHealth(pm,health+1);
		}
	}

	if (pm_abandoned_health_penalty && round_timer_counter % pm_abandoned_health_penalty && pm!=INVALID_PLAYER_ID && !pm_fresh && !IsPlayerInAnyVehicle(pm)) { // 1% health every second
		new Float:health;
		GetPlayerHealth(pm,health);
		SetPlayerHealth(pm,health - 1);
	}

	for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i)) {
	    if (player_class[i]==INVALID_CLASS) continue;
	    if (player_class[i]==class_bodyguard_medic ||
		    player_class[i]==class_cop_medic ||
		    player_class[i]==class_terrorist_medic) {
			new Float:health;
			GetPlayerHealth(i,health);
			if (health<100) SetPlayerHealth(i,health+1);
		}
		if (round_timer_counter % 5 == 0) {
			for (new j=0 ; j<MAX_PLAYERS ; j++) if (IsPlayerConnected(j)) {
			    if (player_class[j]==class_bodyguard_medic ||
				    player_class[j]==class_cop_medic ||
				    player_class[j]==class_terrorist_medic) {
				    if (DistanceFromPlayerToPlayer(i,j)<10 && MessagesGoTo(class_team[player_class[j]],class_team[player_class[j]])) {
						new Float:health;
						GetPlayerHealth(i,health);
						if (health<100) SetPlayerHealth(i,health+1);
					}
				}
			}
		}
	}

/*
	if (round_timer_counter == 60) {
	    GameTextForAll("~w~Don't forget to /mapvote~n~ for next round!", 4000, GAME_TEXT_STYLE_SMALL);
	}
*/

/*
	if (obj_counter > 0  && round_timer_counter == 20) {
	    for (new i=0 ; i<MAX_PLAYERS ; i++)
	        if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS && class_team[player_class[i]]!=TEAM_PSYCHO)
	 		   GameTextForPlayer(i,"~w~Las Venturas is unlike the other maps~n~See /duty for more info", 10000, GAME_TEXT_STYLE_SMALL);
	}
*/

	if (obj_counter > 0 && pm!=INVALID_PLAYER_ID && round_timer_counter % 30 == 0 && !obj_was_in) {
	    for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS)
	            SetUpObjectiveCheckPoint(i);
	}
	
	if (task_counter>0) {
		for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS) {
		    new Float:x, Float:y, Float:z;
		    GetPlayerPos(pm,x,y,z);
	        DisablePlayerCheckpoint(i);
		    for (new j=0 ; j<task_counter ; j++) {
			    new Float:d = floatsqroot(floatpower(x-task_x[j],2)+floatpower(y-task_y[j],2));
			    if (d<=100) {
			        SetPlayerCheckpoint(i,task_x[j],task_y[j],task_z[j],task_size[j]);
				}
			}
		}
	}
	
	if (task_counter > 0 && pm!=INVALID_PLAYER_ID) {
	    new Float:x, Float:y, Float:z;
	    GetPlayerPos(pm,x,y,z);
	    for (new i=0 ; i<task_counter ; i++) {
	        if (task_time[i]==0) continue;
		    new Float:d = floatsqroot(floatpower(x-task_x[i],2)+floatpower(y-task_y[i],2));
		    if (d<=task_size[i]/2) {
		        if (task_time[i]%10==0) {
			        new text[256];
			        format(text,sizeof text,"%d seconds until PM\'s task complete.",task_time[i]);
			        SendClientMessageToAll(COLOUR_IMPORTANT,text);
				}
		        task_time[i]--;
				if (task_time[i]==0) {
			        SendClientMessageToAll(COLOUR_IMPORTANT,"PM has completed his task.");
					new Float:pmh;
					GetPlayerHealth(pm,pmh);
					SetPlayerHealth(pm, pmh*2>100 ? 100.0 : pmh*2);
			        switch (task_type[i]) {
			            case TASK_LAKE: {
							SendClientMessageToAll(COLOUR_IMPORTANT,"The PM has discovered a small ammunition stash on one of the abandoned boats.");
							GivePlayerWeapon(pm,WEAPON_MINIGUN,30);
						}
						case TASK_BEER: {
							SendClientMessageToAll(COLOUR_IMPORTANT,"It has been discovered that the terrorists have been drinking out-of-date");
							SendClientMessageToAll(COLOUR_IMPORTANT,"beer from the Fleischberg brewery, as a result they have contracted an illness.");
							for (new j=0 ; j<NUM_CLASSES ; j++)
							    if (class_team[j]==TEAM_TERRORIST)
									class_initial_hp[j] = 50;
						}
						case TASK_SHIPPING: {
							SendClientMessageToAll(COLOUR_IMPORTANT,"The Prime Minister has intercepted an import of illegal weaponry.");
							GivePlayerWeapon(pm,WEAPON_DEAGLE,15);
							GivePlayerWeapon(pm,WEAPON_TEC9,120);
							GivePlayerWeapon(pm,WEAPON_AK47,80);
						}
						case TASK_MOTEL: {
							SendClientMessageToAll(COLOUR_IMPORTANT,"The Prime Minister's recent meeting with an unknown client has resulted in an increase");
							SendClientMessageToAll(COLOUR_IMPORTANT,"in funding. The PM has temporarily evaded the terrorist and psychopathic forces.");
							pm_radar_time = 60;
							SetPlayerColor(pm,ClassColour(player_class[pm]));
						}
						case TASK_HIGHWAY: {
							SendClientMessageToAll(COLOUR_IMPORTANT,"After an anonymous tip, the PM has discovered a set of keys buried under the");
							SendClientMessageToAll(COLOUR_IMPORTANT,"highway, gaining him access to some of the fastest vehicles on the map.");
							for (new j=0; j<vehicle_counter; j++) {
								if (vehicle_modelid[j]==V_NRG500 || vehicle_modelid[j]==V_CHEETAH)
									cant_drive_vehicle[TEAM_PRIMEMINISTER][j] = 0;
							}
						}
						case TASK_FARM: {
							SendClientMessageToAll(COLOUR_IMPORTANT,"A meeting with an undercover agent has given the PM some vital information about");
							SendClientMessageToAll(COLOUR_IMPORTANT,"the terrorists' movements. They must act faster if they are to eliminate the PM.");
						    round_timer_counter+=240;
							if (round_timer_counter >= round_time)
							    round_timer_counter = round_time - 1; // finish early
						}
						default: printf("ERROR: Completed a task with invalid task_type %d",task_type[i]);
					}
				}
			}
		}
	}

	if (pm_radar_time>0) {
		pm_radar_time--;
		if  (pm_radar_time == 0) {
			SendClientMessageToAll(COLOUR_IMPORTANT,"The funding has now been used, the PM is once again");
			SendClientMessageToAll(COLOUR_IMPORTANT,"visible to the terrorist and psychopathic forces.");
			SetPlayerColor(pm,ClassColour(player_class[pm]));
		}
	}
}




public OnPlayerDisconnect(playerid)
{
	if (!IsPlayerConnected(playerid)) {
		printf("ERROR: OnPlayerDisconnect(%d) but not connected.\n",playerid);
		return 1;
	}

	for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i)) {
		if (player_watching[i] == playerid) {
			player_watching[i] = INVALID_PLAYER_ID;
			SetPlayerPosAtSelf(i);
		}
		if (player_query_target[i] == playerid) {
		    player_query_target[i] = INVALID_PLAYER_ID;
            SendClientMessage(i,COLOUR_PERSONAL,"Query partner disconnected.");
		}
	}

	if (player_already_voted[playerid])
		votes_left--; // array reset on OnPlayerConnect

	if (vote_victim==playerid) {
		GameTextForAll("Poll closed, player disconnected.",3000,4);
		vote_victim = INVALID_PLAYER_ID;
		KillTimer(vote_timer);
	}
	if (vote_initiator==playerid) {
		vote_initiator = INVALID_PLAYER_ID;
	}

	for (new i=0 ; i<NUM_PICKUPS ; i++) {
		if (pickup_last_used_by[i]==playerid)
		    pickup_last_used_by[i] = INVALID_PLAYER_ID;
	}

	SetPlayerClass(playerid,INVALID_CLASS);
	return 1;
}



public GameModeExitFunc()
{
	KillTimer(round_timer);
	ResetVoteOnEndGame();
	KillTimer(regular_task_timer);
	GameModeExit();
}



public OnPlayerText(playerid,text[])
{
	if (!IsPlayerConnected(playerid)) {
		printf("ERROR: OnPlayerText(%d,\"%s\") but not connected.\n",playerid,text);
		return 1;
	}

	if (text[0]=='@') {

		if (player_query_target[playerid]!=INVALID_PLAYER_ID) {
		    new msg[256];
			strmid(msg,text,1,strlen(text),sizeof(msg));
			new output[255];
			GetPlayerName(playerid,output,sizeof(output));
			format(output,sizeof output,"<%s> %s",output,msg);
			SendClientMessage(playerid,COLOUR_QUERY,output);
			SendClientMessage(player_query_target[playerid],COLOUR_QUERY,output);
		} else {
			SendClientMessage(playerid,COLOUR_IMPORTANT,"No query established.");
		}

		return 0;

	}

    if (player_muted[playerid])  {
		SendClientMessage(playerid,COLOUR_PERSONAL,"You are muted.");
	    return 0;
	}

	if (text[0]=='!') {

		if (player_class[playerid]==INVALID_CLASS) return 1;

		new myteam = class_team[player_class[playerid]];

		for (new i=0 ; i<MAX_PLAYERS ; i++) {
			if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS) {
				new yourteam = class_team[player_class[i]];
				if (MessagesGoTo(myteam,yourteam) || MessagesGoTo(yourteam,myteam)) {
					new text2[256];
					GetPlayerName(playerid,text2,sizeof text2);
					format(text2,sizeof text2, "%s: %s", text2, text);
					SendClientMessage(i,COLOUR_IMPORTANT,text2);
				}
			}
		}


		return 0;

	} else if (text[0]=='.' && strlen(text)>1 && text[1]!='.') {

		for (new i=0 ; i<MAX_PLAYERS ; i++) {
			if (IsPlayerConnected(i) && player_op[i]) {
				new text2[256];
				GetPlayerName(playerid,text2,sizeof text2);
				format(text2,sizeof text2, "%s: %s", text2, text);
				SendClientMessage(i,COLOUR_GLOBAL,text2);
			}
		}


		return 0;

	}

	return 1;

}

MessagesGoTo(team1, team2)
{
	if (team1==team2 && team1!=TEAM_PSYCHO) return 1;
	if (team1==TEAM_PRIMEMINISTER && team2==TEAM_BODYGUARD) return 1;
	if (team1==TEAM_PRIMEMINISTER && team2==TEAM_COP) return 1;
	if (team1==TEAM_BODYGUARD && team2==TEAM_COP) return 1;
	return 0;
}

CouldntSpawnAs(playerid,team)
{
	new team_name[80];
	GetTextFromTeam(team_name,team);

	new text[80];
	format (text, 80, "Could not spawn as %s, that class is full.", team_name);
	SendClientMessage(playerid,COLOUR_PERSONAL,text);
}

native Float:floatstr(const string[]);

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (!IsPlayerConnected(playerid)) {
		printf("ERROR: OnPlayerCommandText(%d,\"%s\") but not connected.\n",playerid,cmdtext);
		return 1;
	}

	new cmd[256];
	new rest[256];

    CmdLog(playerid,cmdtext);

	new numparams = parse_command(cmdtext,cmd,rest);

	if (numparams==0) {}

 	if (streq(cmd,"/reclass")) {

		if (player_class[playerid]==INVALID_CLASS) {
			return 1;
		}

		if (class_team[player_class[playerid]]==TEAM_PRIMEMINISTER  && !player_op[playerid]) {
			SendClientMessage(playerid,COLOUR_PERSONAL,"The prime minister must use /swapclass.");
			return 1;
		}

		new myclass = INVALID_CLASS;

		if (strlen(rest)==0) {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Usage: /reclass pm|terrorist|cop|bodyguard|psycho|tmedic|bmedic|cmedic");
			return 1;
		} else if (IsNatural(rest)) {
		    myclass = strvalfixed(rest);
		    if (myclass>=NUM_CLASSES) return 1;
		} else if (streq(rest,"cop") || streq(rest,"c")) {
		    myclass = class_cop1 + random(NUM_COPS);
		} else if (streq(rest,"terrorist") || streq(rest,"t")) {
		    myclass = class_terrorist1 + random(NUM_TERRORISTS);
		} else if (streq(rest,"bodyguard") || streq(rest,"b")) {
		    myclass = class_bodyguard1 + random(NUM_BODYGUARDS);
		} else if (streq(rest,"psycho") || streq(rest,"p")) {
		    myclass = class_psycho1 + random(NUM_PSYCHOS);
		} else if (streq(rest,"pm")) {
		    myclass = class_primeminister;
		} else if (streq(rest,"tmedic")) {
		    myclass = class_terrorist_medic;
		} else if (streq(rest,"cmedic")) {
		    myclass = class_cop_medic;
		} else if (streq(rest,"bmedic")) {
		    myclass = class_bodyguard_medic;
		} else {
			SendClientMessage(playerid,COLOUR_PERSONAL,"No such class.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"Usage: /reclass pm|terrorist|cop|bodyguard|psycho|tmedic|bmedic|cmedic");
			return 1;
		}

		if (myclass==INVALID_CLASS) {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Class not available.");
			return 1;
		}

		new veto = VetoPlayerClass(myclass,player_class[playerid]);
		if (veto==myclass) {
		    SetPlayerClass(playerid,myclass);
		} else if (veto!=INVALID_CLASS) {
		    new text[80];
		    GetTextFromTeam(text,class_team[veto]);
		    format (text,sizeof text,"vetoed to %s",text);
            SendClientMessage(playerid,COLOUR_PERSONAL,text);
		    CouldntSpawnAs(playerid,class_team[myclass]);
		} else {
		    printf("VETO RETURNED INVALID_CLASS!\n");
		}

		return 1;
 	} else if (streq(cmd,"/swapclass")) {
		if (player_class[playerid]==INVALID_CLASS || class_team[player_class[playerid]]!=TEAM_PRIMEMINISTER) {
			SendClientMessage(playerid,COLOUR_PERSONAL,"You must be the Prime Minister to use this.");
			return 1;
		}

		new id=GetId(playerid,rest);
		if (id==INVALID_PLAYER_ID) {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Usage: /swapclass <person>");
			return 1;
		}

		new victim_class = player_class[id];
		if (victim_class==INVALID_CLASS) {
			SendClientMessage(playerid,COLOUR_PERSONAL,"That person has not yet selected a class.");
			return 1;
		}

		if (id==playerid) {
		    SendClientMessage(playerid,COLOUR_PERSONAL,"You are the Prime Minister.");
		    return 1;
		}

	    SetPlayerClass(playerid,INVALID_CLASS);
	    SetPlayerClass(id,class_primeminister); // currently 2 pms running around but only the new one is recognised by the game code
	    SetPlayerClass(playerid,victim_class);

		return 1;
	} else if (streq(cmd,"/duty")) {
		ExplainRole(playerid);
		return 1;
	} else if (streq(cmd,"/intel")) {
	 	TellPlayerIntel(playerid);
		return 1;
	} else if (streq(cmd,"/callvote")) {
        new suspecttext[256], reason[256];
        parse_command(rest,suspecttext,reason);
        new suspectid=GetId(playerid,suspecttext);
        if (suspectid==INVALID_PLAYER_ID) return 1;
        InitiateVote(playerid,suspectid,reason);
        return 1;
	} else if (streq(cmd,"/vote")) {
		AddVote(playerid);
		return 1;
	} else if (streq(cmd,"/endvote")) {
		CancelVote(playerid);
		return 1;
	} else if (streq(cmd,"/time")) {
		new minutes = (round_time - round_timer_counter) / 60;
		new seconds = (round_time - round_timer_counter) % 60;
		new text[256];
		format(text,sizeof text, "time left: %d:%d", minutes, seconds);
		SendClientMessage(playerid, COLOUR_PERSONAL, text);
		return 1;
	} else if (streq(cmd,"/players")) {
		new text[256];
		format(text,sizeof text, "players connected: %d", NumPlayersConnected());
		SendClientMessage(playerid, COLOUR_PERSONAL, text);
		return 1;
	} else if (streq(cmd,"/obj")) {
		if (obj_counter==0) {
			SendClientMessage(playerid, COLOUR_PERSONAL, "This map has no objectives.");
			return 1;
		}
		if (player_class[playerid]==INVALID_CLASS) {
			SendClientMessage(playerid, COLOUR_PERSONAL, "You have not chosen a class.");
			return 1;
		}
		SetUpObjectiveCheckPoint(playerid);
		return 1;
	} else if (streq(cmd,"/ops")) {
		new text[256];
		for (new i=0 ; i<MAX_PLAYERS ; i++) {
		    if (IsPlayerConnected(i) && player_op[i]) {
		        new name[256];
		        GetPlayerName(i,name,sizeof name);
		        format(text, sizeof text, "%s %s", text, name);
			}
		}
		format(text, sizeof text, "ops: %s",text);
		SendClientMessage(playerid, COLOUR_PERSONAL, text);
		return 1;
	} else if (streq(cmd,"/pinfo")) {
		new id=GetId(playerid,rest);
		if (id==INVALID_PLAYER_ID) {
			SendAllIdsFromName(playerid,rest);
			return 1;
		}

		new text[256];
		GetPlayerName(id,text, sizeof text);

		new team[80];
		GetTextFromTeam(team,class_team[player_class[id]]);

		new Float:x, Float:y, Float:z;
		GetPlayerPos(id,x,y,z);

		format(text,sizeof text, "name: %s [%d] cl:%d %s (%.2f,%.2f,%.2f) d:%.2f tk:%d %s", text, id, player_class[id], team, x,y,z, DistanceFromPlayerToPlayer(playerid,id),player_teamkill_freeze_counter[id],player_legal_minigun[id]?"mini":"no_mini");

		if (IsPlayerInAnyVehicle(id)) {
		    format(text,sizeof text, "%s {%d:%d}", text, GetPlayerVehicleID(id), vehicle_modelid[GetPlayerVehicleID(id)]);
		}

		SendClientMessage(playerid, COLOUR_PERSONAL, text);

		return 1;

	} else if (streq(cmd,"/query")) {
		new id=GetId(playerid,rest);
		if (id==INVALID_PLAYER_ID) return 1;

		new text[256];
		GetPlayerName(id,text,sizeof text);
		format(text,sizeof text,"Query established with %s.",text);
		SendClientMessage(playerid, COLOUR_PERSONAL, text);
		player_query_target[playerid] = id;
		return 1;

	} else if (streq(cmd, "/unquery")) {
		player_query_target[playerid]=INVALID_PLAYER_ID;
		SendClientMessage(playerid,COLOUR_PERSONAL,"Query terminated.");
		return 1;

	} if(streq(cmd, "/me")) { // 3 is the length of /me
		if (player_muted[playerid])  {
			SendClientMessage(playerid,COLOUR_PERSONAL,"You are muted.");
			return 1;
		}
		new text[256];
		GetPlayerName(playerid, text, sizeof text);
		format(text, sizeof text, "* %s %s", text, rest);
		SendClientMessageToAll(GetPlayerColor(playerid), text);
		return 1;

	} else if (streq(cmd,"/heal") || streq(cmd,"/h")) {
		new patient = INVALID_PLAYER_ID;
	    if (strlen(rest)!=0) {
			patient=GetId(playerid,rest);
	    } else {
			new Float:d = 1000000.0;
		    for (new i=0 ; i<MAX_PLAYERS ; i++) if (i!=playerid && IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS) {
		        new Float:health;
				GetPlayerHealth(i,health);
				if (health == 100.0) continue;
		        new Float:d2 = DistanceFromPlayerToPlayer(playerid,i);
		        if (d2<d) {
					d = d2;
					patient = i;
				}
			}
		}

		if (patient == INVALID_PLAYER_ID) {
		    SendClientMessage(playerid, COLOUR_PERSONAL, "Couldn't find anyone to heal.");
		    return 1;
		}

		new text[256];
		GetPlayerName(patient,text,sizeof text);
		format(text,sizeof text,"Patient \"%s\" not yet selected class.",text);
		if (player_class[patient]==INVALID_CLASS) {
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		}

		PlayerHealPlayer(playerid, patient);

		return 1;
	} else if (streq(cmd,"/mapvote")) {
		PlayerMapVote(playerid, rest);
		return 1;
	} else if (streq(cmd,"/login")) {
			new username[256], password[256];
			parse_command(rest,username,password);
			if (strlen(username)==0 || strlen(password)==0) {
			    SendClientMessage(playerid, COLOUR_PERSONAL, "usage: /login <user> <pass>");
			    return 1;
			}
			PlayerLogin(playerid,username,password);
			return 1;
	} else if (streq(cmd,"/cmds") ||
			   streq(cmd,"/help") ||
			   streq(cmd,"/show_commands") ||
			   streq(cmd,"/show_cmds")) {
		if(player_op[playerid]) {
			SendClientMessage(playerid, COLOUR_PERSONAL, "/kick /ban  /gethealth /sethealth  /mute /unmute");
			SendClientMessage(playerid, COLOUR_PERSONAL, "/watch /unwatch  /whovote  /barvote /unbarvote");
			SendClientMessage(playerid, COLOUR_PERSONAL, "/force <name> <cmd>  /tell <text>  /say <text>  /restart ");
			SendClientMessage(playerid, COLOUR_PERSONAL, "/freeze /thaw /tk /kph");
		}
		SendClientMessage(playerid, COLOUR_PERSONAL, "/reclass <class>  (change class) /swapclass <person> (for pm)");
		SendClientMessage(playerid, COLOUR_PERSONAL, "/duty (get orders)   /intel (get PM position)   /pinfo");
		SendClientMessage(playerid, COLOUR_PERSONAL, "/callvote /vote /endvote (votekick a cheater)");
		SendClientMessage(playerid, COLOUR_PERSONAL, "/me /time /players /pinfo <person> /ops");
		SendClientMessage(playerid, COLOUR_PERSONAL, "/h /heal /login <user> <pass> /mapvote <map>");
		SendClientMessage(playerid, COLOUR_PERSONAL, "Messages starting with ! are team-only.");
		SendClientMessage(playerid, COLOUR_PERSONAL, "Messages starting with @ are PMs (use /query to initiate).");
		return 1;
	}

	if (player_op[playerid]) {
		if (streq(cmd,"/kick")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			SendClientMessage(playerid, COLOUR_PERSONAL, "Kick okay.");
			Kick(id);
			return 1;
		} else if (streq(cmd,"/tk")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			PlayerTeamKilled(id);
			return 1;
		} else if (streq(cmd,"/thaw")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			GameTextForPlayer(id,"~g~You were thawed by an admin.",6000,GAME_TEXT_STYLE_SMALL);
			TogglePlayerControllable(id,1);
			return 1;
		} else if (streq(cmd,"/freeze")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			GameTextForPlayer(id,"~g~You were frozen by an admin.",6000,GAME_TEXT_STYLE_SMALL);
			TogglePlayerControllable(id,0);
			return 1;
		} else if (streq(cmd,"/pwarp")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			new Float:x, Float:y, Float:z;
			GetPlayerPos(id,x,y,z);
			DisruptTrack(playerid);
			SetPlayerPos(playerid,x,y,z);
			SendClientMessage(playerid, COLOUR_PERSONAL, "Done.");
			return 1;
		} else if (streq(cmd,"/owarp")) {
			if (obj_counter==0) {
				SendClientMessage(playerid, COLOUR_PERSONAL, "This map has no objectives.");
				return 1;
			}
			new id=strvalfixed(rest);
			DisruptTrack(playerid);
			obj_current = id;
			obj_time_left = obj_time[obj_current];
			for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i) && player_class[i] != INVALID_CLASS) {
				SetUpObjectiveCheckPoint(i);
			}
			SetPlayerPos(playerid,obj_x[obj_current],obj_y[obj_current],obj_z[obj_current]);
			SendClientMessage(playerid, COLOUR_PERSONAL, "Done.");
			return 1;
		} else if (streq(cmd,"/pwarptome")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			new Float:x, Float:y, Float:z;
			GetPlayerPos(playerid,x,y,z);
			DisruptTrack(id);
			SetPlayerPos(id,x,y,z);
			SendClientMessage(playerid, COLOUR_PERSONAL, "Done.");
			return 1;
		} else if (streq(cmd,"/ban")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			SendClientMessage(playerid, COLOUR_PERSONAL, "Ban okay.");
			new banner[256];
			new banned[256];
			GetPlayerName(playerid,banner,sizeof banner);
			GetPlayerName(id,banned,sizeof banned);
			printf("%s banned by %s",banned,banner);  //miss the \n here because the ban does its own one !?
			Ban(id);
			return 1;
		} else if (streq(cmd,"/watch")) {
			new playertext[256], d[256];
			parse_command(rest,playertext,d);
			new id=GetId(playerid,playertext);
			if (id==INVALID_PLAYER_ID) return 1;
			if (player_class[id]==INVALID_CLASS) {
				SendClientMessage(playerid, COLOUR_PERSONAL, "Player not yet selected class.");
				return 1;
			}
			player_pos_faked_distance[playerid] = IsFloat(d) ? floatstr(d) : 10.0;
			player_watching[playerid] = id;
			SetPlayerColor(playerid,GetPlayerColor(playerid) & 0xFFFFFF00);  // for radar invisibility
			return 1;
		} else if (streq(cmd,"/kph")) {
			new id=GetId(playerid,rest);
			player_speed_watch[playerid] = id;
			return 1;
		} else if (streq(cmd,"/unwatch")) {
			player_watching[playerid] = INVALID_PLAYER_ID;
			DisruptTrack(playerid);
			SetPlayerColor(playerid,ClassColour(player_class[playerid]));  // for radar visibility
			SetPlayerPosAtSelf(playerid);
			return 1;
		} else if (streq(cmd,"/restart")) {
			MapVoteStore();
			MapVoteDisplayNextMap();
			GameModeExitFunc();
			return 1;
		} else if (streq(cmd,"/gethealth")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			if (player_class[id]==INVALID_CLASS) {
				SendClientMessage(playerid, COLOUR_PERSONAL, "Player not yet selected class.");
				return 1;
			}
			new Float:health;
			GetPlayerHealth(id,health);
			new text[256];
			format (text,sizeof text,"Health: %f",health);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/sethealth")) {
			new playertext[256], healthtext[256];
			parse_command(rest,playertext,healthtext);
			new id=GetId(playerid,playertext);
			if (id==INVALID_PLAYER_ID) return 1;
			if (player_class[id]==INVALID_CLASS) {
				SendClientMessage(playerid, COLOUR_PERSONAL, "Player not yet selected class.");
				return 1;
			}

			new Float:health = floatstr(healthtext);
			if (!IsFloat(healthtext) || health < 0 || health > 100) {
				SendClientMessage(playerid, COLOUR_PERSONAL, "Invalid health.");
				return 1;
			}

			SetPlayerHealth(id,health);
			new text[256];
			format (text,sizeof text,"Health now: %f",health);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/vinfo")) {
			new vidtext[256], comment[256];
			parse_command(rest,vidtext,comment);
			new vid=strvalfixed(vidtext);
			new text[256];
			format(text,sizeof text,"vehicle {%d/%d}:%d is %f,%f,%f // %s",vid, vehicle_counter-1, vehicle_modelid[vid], vehicle_spawn_x[vid], vehicle_spawn_y[vid], vehicle_spawn_z[vid],comment);
			printf("%s\n",text);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/vwarp")) {
			new vid=strvalfixed(rest);
			DisruptTrack(playerid);
			SetPlayerPos(playerid,vehicle_spawn_x[vid], vehicle_spawn_y[vid], vehicle_spawn_z[vid]+1.5);
			new text[256];
			format (text,sizeof text,"Warped to vid %d",vid);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/wwarp")) {
			new pickupid=strvalfixed(rest);
			DisruptTrack(playerid);
			SetPlayerPos(playerid,pickup_x[pickupid], pickup_y[pickupid], pickup_z[pickupid]+1.5);
			new text[256];
			format (text,sizeof text,"Warped to pickupid %d",pickupid);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/disp")) {
			new playertext[256], xtext[256], ytext[256], ztext[256];
			parse_command(rest,playertext,ztext);
			new id=GetId(playerid,playertext);
			if (id==INVALID_PLAYER_ID) return 1;
			if (player_class[id]==INVALID_CLASS) {
				SendClientMessage(playerid, COLOUR_PERSONAL, "Player not yet selected class.");
				return 1;
			}
			parse_command(ztext,xtext,rest);
			parse_command(rest,ytext,ztext);
			new Float:dx = floatstr(xtext), Float:dy = floatstr(ytext), Float:dz = floatstr(ztext);

			new Float:x, Float:y, Float:z;
			GetPlayerPos(id,x,y,z);

			DisruptTrack(id);
			SetPlayerPos(id,x+dx,y+dy,z+dz);
			new text[256];
			format (text,sizeof text,"Warped by (%.2f,%.2f,%.2f) to (%.2f,%.2f,%.2f)",dx,dy,dz,x+dx,y+dy,z+dz);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/balancedness")) {
		    new dualpm = 0, toomanybg = 0;
		    new b = Balancedness(INVALID_CLASS, INVALID_CLASS, dualpm, toomanybg);
			new text[256];
			format (text,sizeof text,"balancedness: %d, dualpm=%d, toomanybg=%d",b,dualpm, toomanybg);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/barvote")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			player_vote_muted[id] = 1;
			SendClientMessage(playerid, COLOUR_PERSONAL, "Player's voting right removed.");
			return 1;
		} else if (streq(cmd,"/unbarvote")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			player_vote_muted[id] = 0;
			SendClientMessage(playerid, COLOUR_PERSONAL, "Player's voting right re-established.");
			return 1;
		} else if (streq(cmd,"/whovote")) {
			new text[256];
			if (vote_initiator==INVALID_PLAYER_ID) {
			    text = "noone or player logged out";
			} else {
				GetPlayerName(vote_initiator,text,sizeof text);
			}
			format (text,sizeof text,"Last vote-kick called by by %s [%d]",text,vote_initiator);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/force")) {
			new playertext[256], rest2[256];
			parse_command(rest,playertext,rest2);
			new id=GetId(playerid,playertext);
			if (id==INVALID_PLAYER_ID) return 1;
			OnPlayerCommandText(id,rest2);
			return 1;
		} else if (streq(cmd,"/sp")) {
			new team = class_team[player_class[playerid]];
			new spawn = strvalfixed(rest);
			DisruptTrack(playerid);
			SetPlayerPos(playerid, team_spawn_x[team][spawn],
		                           team_spawn_y[team][spawn],
		                           team_spawn_z[team][spawn]);
			SetPlayerFacingAngle(playerid, team_spawn_a[team][spawn]);
			SetCameraBehindPlayer(playerid);
			return 1;
		} else if (streq(cmd,"/svp")) {
			new vidtext[256], xtext[256], ytext[256], ztext[256];
			parse_command(rest,vidtext,ztext);
			new id=strvalfixed(vidtext);
			parse_command(ztext,xtext,rest);
			parse_command(rest,ytext,ztext);
			new Float:x = floatstr(xtext), Float:y = floatstr(ytext), Float:z = floatstr(ztext);
			SetVehiclePos(id,x,y,z);
			new text[256];
			format (text,sizeof text,"Vehicle[%d] warped to (%f,%f,%f)",id,x,y,z);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/ppiv")) {
			new pidtext[256], vidtext[256], seattext[256];
			parse_command(rest,pidtext,rest);
			parse_command(rest,vidtext,seattext);
			new pid=GetId(playerid,pidtext);
			new vid=strvalfixed(vidtext);
			new seat=strvalfixed(seattext);
			PutPlayerInVehicle(pid,vid,seat);
			new text[256];
			format (text,sizeof text,"Player %d put in vehicle %d seat %d",pid,vid,seat);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/embark")) {
			new vidtext[256], xtext[256], ytext[256], ztext[256];
			parse_command(rest,vidtext,ztext);
			new id=strvalfixed(vidtext);
			parse_command(ztext,xtext,rest);
			parse_command(rest,ytext,ztext);
			new Float:x = floatstr(xtext), Float:y = floatstr(ytext), Float:z = floatstr(ztext);
			Embark(playerid,id,x,y,z);
			new text[256];
			format (text,sizeof text,"Embarked in vehicle[%d] at (%f,%f,%f)",id,x,y,z);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
        } else if (streq(cmd,"/say")) {
            new text[256];
            format(text,sizeof text,"* Admin: %s",rest);
            SendClientMessageToAll(COLOUR_BROADCAST,text);
			return 1;
		} else if (streq(cmd,"/tell")) {
		    if (strlen(rest)==0) {
				SendClientMessage(playerid, COLOUR_PERSONAL, "You didn't enter a message.");
				return 1;
			}
			GameTextForAll(rest,4000,GAME_TEXT_STYLE_SMALL);
			return 1;
        } else if (streq(cmd,"/disarm")) {
            new id=GetId(playerid,rest);
            if (id==INVALID_PLAYER_ID) return 1;
            GameTextForPlayer(id,"~g~Your weapons have been removed by an admin.",6000,GAME_TEXT_STYLE_SMALL);
            ResetPlayerWeapons(id);
            SendClientMessage(playerid,COLOUR_PERSONAL,"Player disarmed.");
            return 1;
		} else if (streq(cmd,"/unmute")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			GameTextForPlayer(id,"~g~You have been unmuted by an admin.",6000,GAME_TEXT_STYLE_SMALL);
			player_muted[id] = 0;
			SendClientMessage(playerid,COLOUR_PERSONAL,"Player successfully unmuted.");
			return 1;
		} else if (streq(cmd,"/mute")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			GameTextForPlayer(id,"~g~You have been muted by an admin.",6000,GAME_TEXT_STYLE_SMALL);
			player_muted[id] = 1;
			SendClientMessage(playerid,COLOUR_PERSONAL,"Player successfully muted.");
			return 1;
		}

	}

	return 0;
}


CmdLog(playerid, cmdtext[])
{
	new name[256];
	GetPlayerName(playerid,name, sizeof name);
	printf("[%s]: %s", name, cmdtext);
}



streq(str1[],str2[])
{
	if (strlen(str1)!=strlen(str2)) return 0;

	return strcmp(str1,str2,true)==0;
}

PlayerLogin(playerid,username[],password[])
{

	if (strlen(password)==0)
	    return;


	new l=strlen(username);

	if (l==0) return;

	for (new i=0 ; i<l ; i++)
		if (username[i]=='.' || username[i]=='/') return;

	new filename[256];

	format(filename,sizeof filename,"userdb/%s.pwd",username);

	new File:passwordfile = fopen(filename, io_read);
	if (!passwordfile) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"Access denied (no such user).");
		return;
	}

	new line[256];
	fread(passwordfile, line);
	fclose(passwordfile);


	if (!streq(line,password)) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"Access denied.");
		return;
	}

	new text[256];
	GetPlayerName(playerid,text,sizeof text);
	printf("Player %s id %d opped up using account %s\n",text,playerid,username);
	format (text,sizeof text,"%s is now an operator.",text);
	SendClientMessageToAll(COLOUR_GLOBAL,text);

	player_op[playerid] = 1;
}

PlayerHealPlayer(medic, patient)
{

    if (player_class[medic]!=class_bodyguard_medic &&
	    player_class[medic]!=class_cop_medic &&
	    player_class[medic]!=class_terrorist_medic) {
		SendClientMessage(medic, COLOUR_PERSONAL, "You are not a medic!");
		return;
	}

    if (medic==patient) {
		SendClientMessage(medic, COLOUR_PERSONAL, "Physicians may not heal themselves.");
		return;
	}

	new text[256];

	new Float:d = DistanceFromPlayerToPlayer(medic,patient);
    if (d > 2) {
        if (!IsPlayerInAnyVehicle(medic) || !IsPlayerInAnyVehicle(patient) || GetPlayerVehicleID(medic) != GetPlayerVehicleID(patient)) {
			GetPlayerName(medic,text,sizeof text);
			format(text,sizeof text,"You are too far from \"%s\" (%.0f).",text,d);
			SendClientMessage(medic, COLOUR_PERSONAL, text);
			return;
		}
	}

	new Float:patient_health;
	new Float:medic_health;


	GetPlayerHealth(patient,patient_health);
	GetPlayerHealth(medic,medic_health);


	new Float:medicine = floatround((100 - patient_health)/2, floatround_floor);
	if ((medic_health-1) < medicine) medicine = medic_health-1;

	format(text,sizeof text,"initial health -- medic:%.0f patient:%.0f medicine:%.0f",medic_health,patient_health,medicine);
	SendClientMessage(medic, COLOUR_PERSONAL, text);
	SendClientMessage(patient, COLOUR_PERSONAL, text);

	if (medicine<=0.0) {
		SendClientMessage(medic, COLOUR_PERSONAL, "There is nothing you can do.");
		return;
	}

	SetPlayerHealth(medic, medic_health - medicine);
	SetPlayerHealth(patient, patient_health + medicine*2);

	format(text,sizeof text,"Gave %.0f health to patient.",medicine*2);
	SendClientMessage(medic, COLOUR_PERSONAL, text);

	format(text,sizeof text,"You were healed by %.0f health.",medicine*2);
	SendClientMessage(patient, COLOUR_PERSONAL, text);

}


GetId(playerid, rest[])
{
	//printf("%d called GetId(%s)",playerid,rest);
	if (!IsNatural(rest)) {
		//printf("not a number");
		return GetIdFromName(playerid, rest);
	}
	new id = strvalfixed(rest);
	//printf("is a number: %d",id);
	if (id<0 || id >=MAX_PLAYERS) {
		//printf("Id out of range");
		SendClientMessage(playerid, COLOUR_PERSONAL, "Id out of range");
		return INVALID_PLAYER_ID;
	}
	if (!IsPlayerConnected(id)) {
		//printf("Player not connected");
		SendClientMessage(playerid, COLOUR_PERSONAL, "Player not connected");
		return INVALID_PLAYER_ID;
	}
	return id;
}


GetIdFromName(playerid,victimname[])
{
	new victimid;
	new num_matches = 0;
	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		if (IsPlayerConnected(i)) {
			new text[MAX_PLAYER_NAME];
			GetPlayerName(i,text,MAX_PLAYER_NAME);
			if (strfind(text,victimname,true)>=0) {
				victimid = i;
				num_matches++;
			}
		}
	}
	new text[256];
	switch (num_matches) {
		case 0: {
			format(text,sizeof text,"No match for \"%s\".",victimname);
			SendClientMessage(playerid,COLOUR_PERSONAL,text);
		}
		case 1: return victimid;
		default: {
			format(text,sizeof text,"Too many (%d) matches for \"%s\".",num_matches,victimname);
			SendClientMessage(playerid,COLOUR_PERSONAL,text);
		}
	}
	return INVALID_PLAYER_ID;
}


SendAllIdsFromName(playerid,fragment[])
{
	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		if (IsPlayerConnected(i)) {
			new name[MAX_PLAYER_NAME];
			GetPlayerName(i,name,sizeof name);
			if (strfind(name,fragment,true)>=0) {
				new output[100];
				format(output,sizeof output,"%s [%d]",name,i);
				SendClientMessage(playerid,COLOUR_PERSONAL,output);
			}
		}
	}
}

Embark(pid,vid,Float:x,Float:y,Float:z)
{
	PutPlayerInVehicle(pid,vid,0);
	SetVehiclePos(vid,x,y,z);
}



public RegularTask()
{
	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS) {
			new Float:x;
			new Float:y;
			new Float:z;
			GetPlayerPos(i, x, y, z);

			if (pm_can_drown && class_team[player_class[i]]==TEAM_PRIMEMINISTER && z<0) {
			    SetPlayerHealth(i,0);
			}

			if (player_vehicle_driver[i]) {
				new vehicleid = GetPlayerVehicleID(i);
				if (cant_drive_vehicle[class_team[player_class[i]]][vehicleid]) {
					GameTextForPlayer(i,"~y~You are ~r~not qualified~n~ ~y~to use this vehicle!",3000,GAME_TEXT_STYLE_SMALL);

					RemovePlayerFromVehicle(i);
				}

				if (vehicle_safehouse_excluded[vehicleid] && safehouse_exists) {

					// from safehouse to player
					new Float:vx = x - safehouse_x;
					new Float:vy = y - safehouse_y;
					new Float:vz = z - safehouse_z;

					// distance
					new Float:bound_max_x = game_boundary_max_x;
					new Float:bound_min_x = game_boundary_min_x;
					new Float:bound_max_y = game_boundary_max_y;
					new Float:bound_min_y = game_boundary_min_y;

					new Float:d = floatsqroot(floatpower(vx,2) + floatpower(vy,2) + floatpower(vz,2));
					if (d<safehouse_exclusion) {
						if (d!=0) {
						    vx = (vx / d) * safehouse_exclusion;
						    vy = (vy / d) * safehouse_exclusion;
					    } else {
					        vx = safehouse_exclusion;
							vy = 0;
			            }
					    if (vx > 0) {
					        bound_min_x = safehouse_x+vx;
					    } else {
					        bound_max_x = safehouse_x+vx;
					    }
					    if (vy > 0) {
					        bound_min_y = safehouse_y+vy;
					    } else {
					        bound_max_y = safehouse_y+vy;
					    }
					}

					SetPlayerWorldBounds(i,bound_max_x,bound_min_x,bound_max_y,bound_min_y);

				}
			}
			if (player_watching[i]!=INVALID_PLAYER_ID)
				SetPlayerPosAtPlayer(i,player_watching[i]);

			if (player_vehicle_passenger[i]) {
				new vehicleid = GetPlayerVehicleID(i);
				if (cant_passenger_vehicle[class_team[player_class[i]]][vehicleid]) {
					GameTextForPlayer(i,"~y~You are ~r~not qualified~n~ ~y~to enter this vehicle!",3000,GAME_TEXT_STYLE_SMALL);

					RemovePlayerFromVehicle(i);
				}
			}

			if (banned_cuboid) {
			    if (x>=banned_cuboid_min_x &&
					x<=banned_cuboid_max_x &&
					y<=banned_cuboid_max_y &&
					y>=banned_cuboid_min_y &&
					z<=banned_cuboid_max_z &&
					z>=banned_cuboid_min_z) {
					if (strlen(banned_cuboid_message)>0)
						GameTextForPlayer(i,banned_cuboid_message,4000,GAME_TEXT_STYLE_SMALL);
					DisruptTrack(i);
					SetPlayerPos(i,banned_cuboid_tele_x,banned_cuboid_tele_y,banned_cuboid_tele_z);
					SetPlayerFacingAngle(i,banned_cuboid_tele_a);
					SetCameraBehindPlayer(i);
				}
			}

			new num_pickups_squatting = 0;
			for (new j=0 ; j<pickup_counter ; j++) {
			    new Float:d = floatsqroot(floatpower(x-pickup_x[j],2) + floatpower(y-pickup_y[j],2) + floatpower(z-pickup_z[j],2));
			    if (d<1) {
			        num_pickups_squatting++;
					OnPlayerStepOnPickup(i,j);
				}
			}
			if (num_pickups_squatting == 0) {
			    player_pickup_squatting[i] = 0;
			}


			for (new j=1 ; j<NUM_PLOTS ; j++) {
				player_plot_x[i][j-1] = player_plot_x[i][j];
				player_plot_y[i][j-1] = player_plot_y[i][j];
				player_plot_z[i][j-1] = player_plot_z[i][j];
			}

			player_plot_x[i][NUM_PLOTS-1] = x;
			player_plot_y[i][NUM_PLOTS-1] = y;
			player_plot_z[i][NUM_PLOTS-1] = z;

			PlayerCalculateSpeed(i);
		}
 	}

 	regular_task_counter++;

}

public PlayerCalculateSpeed(playerid)
{
	new Float:d[NUM_PLOTS-1];

	// work out distances between all the plots  (later we will do angles too)
	for (new i=0 ; i<sizeof d ; i++)
//		d[i] = floatsqroot(floatpower(player_plot_x[playerid][i+1]-player_plot_x[playerid][i],2) + floatpower(player_plot_y[playerid][i+1]-player_plot_y[playerid][i],2) + floatpower(player_plot_z[playerid][i+1]-player_plot_z[playerid][i],2)) / 0.1;
		d[i] = floatsqroot(floatpower(player_plot_x[playerid][i+1]-player_plot_x[playerid][i],2) + floatpower(player_plot_y[playerid][i+1]-player_plot_y[playerid][i],2)) / 0.1;




	new Float:mean = 0.0;

	for (new i=0 ; i<sizeof d ; i++)
	    mean += d[i];

	//mean /= sizeof d;  // doesn't work, suspect compiler bug
	mean = mean / sizeof d;

	new Float:dv[NUM_PLOTS-1];

	for (new i=0 ; i<sizeof dv ; i++)
		dv[i] = floatpower(d[i]- mean,2);

	new Float:variance = 0.0;

	for (new i=0 ; i<sizeof dv ; i++)
	    variance += dv[i];

	//variance /= sizeof dv;  // doesn't work, suspect compiler bug
	variance = variance / sizeof dv;


	new Float:sd = floatsqroot(variance);


	new text[256];

	if (sd<100) {
		// speed measurement is valid

		new Float:speedkph = mean * 3.6;

	    GetPlayerName(playerid, text, sizeof text);

		// ops warning if too fast
	    if (player_vehicle_driver[playerid]) {
	        new Float:maxspeed = vehicle_velocity[vehicle_modelid[GetPlayerVehicleID(playerid)]-400];  // in kph (assumedly)

	        if (speedkph > maxspeed*1.25 && player_last_speed_warning[playerid] < round_timer_counter - 5) {
			    format (text, sizeof text, "%s is going rather fast (%.0f kph) %s max: %.0f kph (STILL IN TESTING)",text,speedkph,vehicle_name[vehicle_modelid[GetPlayerVehicleID(playerid)]-400],maxspeed);
			    for (new i=0 ; i<MAX_PLAYERS ; i++) {
					if (IsPlayerConnected(i) && player_op[i]) {
					    SendClientMessage(i,COLOUR_IMPORTANT,text);
					    player_last_speed_warning[playerid] = round_timer_counter;
					}
				}
			}
		}

		if (!IsPlayerInAnyVehicle(playerid) && player_watching[playerid]==INVALID_PLAYER_ID) {
			if (speedkph > 60 && player_last_speed_warning[playerid] < round_timer_counter - 5) {
			    format (text, sizeof text, "%s is going rather fast (%.0f kph) (on foot)",text,speedkph);
			    for (new i=0 ; i<MAX_PLAYERS ; i++) {
					if (IsPlayerConnected(i) && player_op[i]) {
					    SendClientMessage(i,COLOUR_IMPORTANT,text);
					    player_last_speed_warning[playerid] = round_timer_counter;
					}
				}
			}
		}


		// anyone can watch speed
	    for (new i=0 ; i<MAX_PLAYERS ; i++) {
			if (IsPlayerConnected(i) && player_speed_watch[i] == playerid) {
			    text = "~b~on foot";
			    if (IsPlayerInAnyVehicle(playerid)) {
			        new Float:maxspeed = vehicle_velocity[vehicle_modelid[GetPlayerVehicleID(playerid)]-400];  // in kph (assumed)
			        format (text,sizeof text,"~r~%s max: %.0f kph",vehicle_name[vehicle_modelid[GetPlayerVehicleID(playerid)]-400],maxspeed);
				}
				format (text, sizeof text, "~w~mean: %.0f kph~n~%s~n~~y~(sd: %.2f kph)", speedkph, text, sd*3.6);
			    GameTextForPlayer(i,text,1000,GAME_TEXT_STYLE_SMALL);
			}
		}
	}

}

public OnPlayerStepOnPickup(playerid, pickupid)
{
	if (!IsPlayerConnected(playerid)) {
		printf("ERROR: OnPlayerStepOnPickup(%d,%d) but not connected.\n",playerid,pickupid);
		return;
	}

	new last = player_pickup_when[playerid][pickupid];

	if (pickup_respawn_time[pickupid] != WP_NO_RESPAWN) {

		if (last != -1 && round_timer_counter-last<pickup_respawn_time[pickupid]) {
		    if (!player_pickup_squatting[playerid]) {
		        new text[256];
				format(text, sizeof text, "~w~respawns in ~r~%d seconds", pickup_respawn_time[pickupid]-(round_timer_counter-last));
				if (pickup_synced[pickupid]) {
			        new name[256];
					if (pickup_last_used_by[pickupid]==INVALID_PLAYER_ID) {
						name = "~b~(logged out)";
					} else {
						GetPlayerName(pickup_last_used_by[pickupid],name,sizeof name);
					}
					format(text, sizeof text, "%s~n~~w~last used by ~y~%s", text, name);
				}
	        	GameTextForPlayer(playerid,text,6000,GAME_TEXT_STYLE_SMALL);
				player_pickup_squatting[playerid] = 1;
			}
		} else {
			GivePlayerWeapon2(playerid,pickupid);
			player_pickup_squatting[playerid] = 1;
		}

	} else if (pickup_respawn_time[pickupid] == WP_NO_RESPAWN) {

		if (player_pickup_when[playerid][pickupid] == -1) {
		    /* never been picked up before */
			GivePlayerWeapon2(playerid,pickupid);
			player_pickup_squatting[playerid] = 1;
		} else if (!player_pickup_squatting[playerid]) {
	        new text[256];
			format(text, sizeof text, "~w~Weapon ~r~unavailable");
	        if (pickup_synced[pickupid]) {
		        new name[256];
				if (pickup_last_used_by[pickupid]==INVALID_PLAYER_ID) {
					name = "~b~(logged out)";
				} else {
					GetPlayerName(pickup_last_used_by[pickupid],name,sizeof name);
				}
				format(text,sizeof text, "%s~n~~w~Already taken by ~y~%s", text,name);
			} else {
				format(text,sizeof text, "%s~n~~y~(Until you next die)", text);
			}
        	GameTextForPlayer(playerid,text,6000,GAME_TEXT_STYLE_SMALL);
			player_pickup_squatting[playerid] = 1;
		}

	}
}

public GivePlayerWeapon2(playerid, pickupid)
{
	if (player_class[playerid]==INVALID_CLASS) {
	    printf("ERROR: player picked up weapon without first picking a class.\n");
	    return;
	}
	if (pickup_unauthorised[class_team[player_class[playerid]]][pickupid]) {
		GameTextForPlayer(playerid,"~w~You are ~r~not qualified~w~~n~to use this weapon!",7000,GAME_TEXT_STYLE_SMALL);
	} else {
	    if (pickup_synced[pickupid]) {
	        for (new i=0 ; i<MAX_PLAYERS ; i++) {
				player_pickup_when[i][pickupid] = round_timer_counter;
			}
		} else {
			player_pickup_when[playerid][pickupid] = round_timer_counter;
		}
		GivePlayerWeapon(playerid,pickup_weaponid[pickupid],pickup_ammo[pickupid]);
		PlayerPlaySound(playerid,SOUND_PICKUP_STANDARD,pickup_x[pickupid],pickup_y[pickupid],pickup_z[pickupid]);
		if (pickup_weaponid[pickupid]==WEAPON_MINIGUN) {
			new text[80];
			GetPlayerName(playerid,text,sizeof text);
			player_legal_minigun[playerid] = 1;
			format(text,sizeof text,"~w~%s has the ~y~minigun!",text);
		    GameTextForAll(text,3000,GAME_TEXT_STYLE_SMALL);
		}
		pickup_last_used_by[pickupid] = playerid;
	}
}

public DisruptTrack(playerid)
{
	for (new i=0 ; i<NUM_PLOTS ; i++) {
		player_plot_x[playerid][i] = 0;
		player_plot_y[playerid][i] = 0;
		player_plot_y[playerid][i] = 0;
	}
}

public OnPlayerStateChange(playerid,newstate,oldstate) {
	if (!IsPlayerConnected(playerid)) {
		printf("ERROR: OnPlayerStateChange(%d,%d,%d) but not connected.\n",playerid,newstate,oldstate);
		return;
	}

	switch (newstate) {
		case PLAYER_STATE_ONFOOT: {
			player_vehicle_passenger[playerid] = 0;
			player_vehicle_driver[playerid] = 0;
			DisruptTrack(playerid); // intention is to disrupt the track when exiting vehicle
		}
		case PLAYER_STATE_WASTED: {
			player_vehicle_passenger[playerid] = 0;
			player_vehicle_driver[playerid] = 0;
			DisruptTrack(playerid); // (you also exit vehicles when you die!)
		}
		case PLAYER_STATE_SPAWNED: {
			player_vehicle_passenger[playerid] = 0;
			player_vehicle_driver[playerid] = 0;
		}
		case PLAYER_STATE_DRIVER: {
		    player_vehicle_driver[playerid] = 1;
			if (class_team[player_class[playerid]]==TEAM_PRIMEMINISTER) {
			    pm_fresh = 0;
		    	SetPlayerWorldBounds(playerid,game_boundary_max_x,game_boundary_min_x,game_boundary_max_y,game_boundary_min_y);
			}
		}
		case PLAYER_STATE_PASSENGER: {
		    player_vehicle_passenger[playerid] = 1;
			if (class_team[player_class[playerid]]==TEAM_PRIMEMINISTER) {
			    pm_fresh = 0;
		    	SetPlayerWorldBounds(playerid,game_boundary_max_x,game_boundary_min_x,game_boundary_max_y,game_boundary_min_y);
			}
		}
	}
}


public OnPlayerExitVehicle(playerid, vehicleid)
{
	if (!IsPlayerConnected(playerid)) {
		printf("ERROR: OnPlayerExitVehicle(%d,%d) but not connected.\n",playerid,vehicleid);
		return 1;
	}
	SetPlayerWorldBounds(playerid,game_boundary_max_x,game_boundary_min_x,game_boundary_max_y,game_boundary_min_y);
	return 1;
}


GetPM() {
	for (new i=0 ; i<MAX_PLAYERS ; i++)
	    if (IsPlayerConnected(i) && player_class[i]==class_primeminister)
	        return i;
	return INVALID_PLAYER_ID;
}

TellPlayerIntel(playerid)
{
	new pm = GetPM();
	if (pm==INVALID_PLAYER_ID) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"Prime Minister is not connected.");
		return;
	}

	new text[256];
	LocationToText(pm,text);

	SendClientMessage(playerid,COLOUR_PERSONAL,text);

}

LocationToText(pm, text[], size=sizeof text)
{
	new src[256];
	new location = CalcLocation(pm);
	switch (location) {
	    case -1:src = "is out of bounds (indoors).";
	    case -2:src = "is in the Airport.";
	    case 0:	src = "is North West of";
	    case 1:	src = "is North of";
	    case 2:	src = "is North East of";
    	case 3:	src = "is West of";
	    case 4:	src = "is in the centre of";
	    case 5:	src = "is East of";
	    case 6:	src = "is South West of";
	    case 7:	src = "is South of";
	    case 8:	src = "is South East of";
	}
	new name[MAX_PLAYER_NAME];
	GetPlayerName(pm,name,sizeof name);
	if (location >=0)
		format(text, size, "%s %s %s.",name,src,intel_feature);
	else
		format(text, size, "%s %s",name,src);

}

CalcLocation(playerid)
{

	new Float:x,Float:y,Float:z;
	GetPlayerPos(playerid,x,y,z);

	if (x<game_boundary_min_x ||
        x>game_boundary_max_x ||
        y<game_boundary_min_y ||
        y>game_boundary_max_y) {
        return -1;
	}


	if (x<2058.2620 &&
	    x>1848.9244 &&
	    z<50 &&
	    y<-2176.9812 &&
	    y>=-2388.2996) {

	    return -2;

	} else if (z>=13 &&
	           z<50 &&
	           x<2123.8440 &&
	           x>1379.7856 &&
	           y>-2633.9453 &&
	           y<-2388.2996 &&
	           (x>1464.2719 || y<-2403.9871)) {
		return -2;
	}



	new loc = 0;

	if (y<intel_south) {
	    loc += 6;
	} else if (y<intel_north) {
		loc += 3;
	} else {
	    loc += 0;
	}

	if (x<intel_west) {
	    loc += 0;
	} else if (x<intel_east) {
		loc += 1;
	} else {
		loc += 2;
	}

/*    N
    0 1 2
  W 3 4 5 E
    6 7 8
	  S
*/

	return loc;
}


// thanks to Y_Less for this, via http://forum.sa-mp.com/index.php?topic=638.0
// i shortened it a bit though...

parse_command(cmd_text[], cmd[256], text[256])
{
	new index = strfind(cmd_text," ");

	if (index==-1) {
		memcpy(cmd,cmd_text,0,256);
		text = "";
		return 0;
	}

	strmid(cmd,cmd_text,0,index);
 	strmid(text, cmd_text, index + 1, strlen(cmd_text));

	new pars = 0;

	for (new i=0 ; cmd_text[i] != EOS ; i++)
		if (cmd_text[i]==' ') pars++;

	return pars;
}








InitiateVote(playerid,victimid,reason[])
{

	if (victimid<0 || victimid >= MAX_PLAYERS) {
		printf("ERROR: Callvote called with an invalid victimid.");
		return;
	}

	if (!IsPlayerConnected(victimid)) {
		printf("ERROR: Callvote called on a disconnected player.");
		return;
	}
    if (strlen(reason)==0) {
            SendClientMessage(playerid, COLOUR_PERSONAL, "You didn't enter a reason.  Usage: /callvote <id> <reason>");
            return;
    }
    if (strlen(reason) > 25) {
            SendClientMessage(playerid, COLOUR_PERSONAL, "Please shorten your reason to 25 characters or less.");
            return;
    }

    if (ContainsTilde(reason)) {
            SendClientMessage(playerid, COLOUR_PERSONAL, "You cannot use a tilde(~) in vote reasons.");
            return;
    }
    
    if (player_vote_muted[playerid]) {
		SendClientMessage(playerid, COLOUR_PERSONAL, "Your voting privileges have been removed by an admin.");
		return;
	}


	if (vote_victim!=INVALID_PLAYER_ID) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"A vote is already in progress.");
		return;
	}


	// ok, let's begin the vote
	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		player_already_voted[i] = 0;
	}
	
	vote_victim = victimid;
	vote_initiator = playerid;
	format(vote_reason,sizeof vote_reason,"%s",reason);
	
	votes_left = 1 + (NumPlayersConnected()*5)/10;
	if (votes_left==NumPlayersConnected())
		votes_left--;
	if (votes_left<2)
		votes_left = 2;
		
	vote_timer = SetTimer("ResetVote",90000,0);
	
	PrintVoteInfo();
}

NumPlayersConnected()
{
	new total = 0;
	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		if (IsPlayerConnected(i)) total++;
	}
	return total;
}

AddVote(playerid)
{
	if (vote_victim==INVALID_PLAYER_ID) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"There is no vote currently.");
		return;
	}

	if (!player_already_voted[playerid]) {
		player_already_voted[playerid] = 1;
		votes_left--;
		SendClientMessage(playerid,COLOUR_PERSONAL,"Vote cast.");
		PrintVoteInfo();
		if (votes_left<=0) {
			new banned[256];
			new banner[256];
			GetPlayerName(vote_victim,banned,sizeof banned);
			GetPlayerName(vote_initiator,banner,sizeof banner);
			printf("%s vote-banned, called by %s\n",banned,banner);
			Ban(vote_victim);
			vote_victim = INVALID_PLAYER_ID; // reset for another go
			KillTimer(vote_timer);
		}
	} else {
		SendClientMessage(playerid,COLOUR_PERSONAL,"You have already voted.");
	}
}

PrintVoteInfo()
{
	if (vote_victim==INVALID_PLAYER_ID) {
		printf("ERROR: PrintVoteInf(): vote_victim==INVALID_PLAYER_ID :(\n");
		return;  //fail gracefully
	}
	new name[MAX_PLAYER_NAME];
	GetPlayerName(vote_victim,name,MAX_PLAYER_NAME);
	new info[200];
	if (votes_left)
		format(info,sizeof info,"~r~ban %s (id %d)?~n~~g~Reason: %s~n~~y~need %d votes~n~/vote if you agree",name,vote_victim,vote_reason,votes_left);
	else
		format(info,sizeof info,"%s (id %d) voted off the server!",name,vote_victim);
	GameTextForAll(info,4000,4);
}


public ResetVote()
{
	if (vote_victim!=INVALID_PLAYER_ID) {
		GameTextForAll("Poll closed, not enough votes.",3000,4);
		vote_victim = INVALID_PLAYER_ID;
	}
}


public ResetVoteOnEndGame()
{
	KillTimer(vote_timer);
}


CancelVote(playerid)
{
	if (vote_victim!=INVALID_PLAYER_ID && playerid==vote_initiator) {
		GameTextForAll("Poll closed by initiator.",3000,4);
		vote_victim = INVALID_PLAYER_ID;
	} else if (vote_victim!=INVALID_PLAYER_ID && player_op[playerid]) {
		GameTextForAll("Poll closed by admin.",3000,4);
		vote_victim = INVALID_PLAYER_ID;
	} else {
		SendClientMessage(playerid,COLOUR_PERSONAL,"No vote, or you are not the initiator.");
	}
}



/* thanks to "Mike", from http://forum.sa-mp.com/index.php?topic=638.0 */
IsNatural(const string[])
{
	new l=strlen(string);

	if (l==0) return 0;

	for (new i=0 ; i<l ; i++)
		if (string[i] > '9' || string[i] < '0') return 0;

	return 1;
}

// similar idea
IsFloat(const string[])
{
	new l=strlen(string);

	if (l==0) return 0;

	new pointctr = 0;

	for (new i=0 ; i<l ; i++) {
		if (string[i]!='-' && string[i]!='.' && (string[i]>'9' || string[i]<'0')) return 0;
		if (string[i]=='-' && i!=0) return 0;
		if (string[i]=='.' && ++pointctr>1) return 0;
	}

	return 1;
}


ContainsTilde(const string[])
{
	for (new i=0 ; i<strlen(string) ; i++) {
	    if (string[i]=='~') return 1;
	}
	return 0;
}
