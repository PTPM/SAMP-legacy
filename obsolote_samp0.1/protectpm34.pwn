new mode_name[] = "Protect the Prime Minister 3.4";


#include <a_samp>

#include <file>

#define COLOUR_PERSONAL  0x8080FFAA
#define COLOUR_IMPORTANT 0xFF0000AA
#define COLOUR_GLOBAL    0xD0D0FFAA


#define GAME_TEXT_STYLE_BIG 6
#define GAME_TEXT_STYLE_SMALL 4


//#define PICKUP_BRASS_KNUCKLES 331
#define PICKUP_GOLFCLUB 333
#define PICKUP_NITESTICK 334
#define PICKUP_KNIFE 335
#define PICKUP_BAT 336
#define PICKUP_SHOVEL 337
#define PICKUP_POOLSTICK 338
#define PICKUP_KATANA 338
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
#define PICKUP_HYDRAFLARE 354
#define PICKUP_AK47 355
#define PICKUP_TEC9 372
#define PICKUP_RIFLE 357
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


#define TOWTRUCK 525
#define CEMENT 524
#define FLATBED 455
#define PACKER 443
#define SWEEPER 574
#define VAN 499
#define SMALLVAN 482

#define FBIRANGER 490
#define COPCAR 596
#define COPRANGER 599
#define COPSWAT 427
#define COPBIKE 523
#define COPTANK 601

#define COMET 480
#define BANSHEE 429
#define STALLION 439
#define WINDSOR 555

#define CHEETAH 415
#define ZR350 477
#define BULLET 541
#define SUPERGT 506
#define PHOENIX 603

#define HUNTLEY 579
#define RANCHER 489
#define PATRIOT 470
#define MONSTER 556

#define SUV1	561
#define SUV2	458
#define SUV3	479

#define LOW1	536
#define LOW2	567
#define LOW3	412

#define STRETCH 409
#define NEWSVAN 582
#define COACH 437
#define CAMPER 508

#define BIKEFAST 522  //nrg
#define BIKESLOW 461  //pcj600   was 468 - sanchez
#define BIKEBIG  586  //wayfarer
#define MOUNTAINBIKE 510
#define SANCHEZ 468
#define BANDITO 568
#define QUAD 471

#define GLENSHIT 604
#define SADLSHIT 605

#define SALOON1 562 //elegy
#define SALOON2 GLENSHIT //glenshit
#define SALOON3 551 //merit
#define SALOON4 421 //washington
#define TAHOMA 566


#define AMBULANCE 416
#define TAXI 420

#define CADDY 457

#define BOATFAST 446
#define YACHT 484
#define HOVERCRAFT 539

#define GOKART 571

#define BEAGLE 511
#define AT400 577
#define SHAMAL 519
#define RUSTLER 476
#define POLICEMAV 497
#define SEASPARROW 447
#define STAIRS 608
#define BAGGAGE 485
#define HYDRA 520





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
    160.0, // quad (471)
    190.0, // coastg (472)
    190.0, // dinghy (473)
    160.0, // hermes (474)
    160.0, // sabre (475)
    200.0, // rustler (476)
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
    "quad",
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
#define NUM_TRAMPS 4
#define NUM_TERRORISTS 8
#define NUM_BODYGUARDS 6
#define NUM_COPS 10
#define NUM_CLASSES (NUM_TRAMPS+NUM_TERRORISTS+1+NUM_BODYGUARDS+NUM_COPS)

new class_tramp1;
new class_tramp2;
new class_tramp3;
new class_tramp4;

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

#define TEAM_TRAMP 0
#define TEAM_TERRORIST 1
#define TEAM_PRIMEMINISTER 2
#define TEAM_BODYGUARD 3
#define TEAM_COP 4
#define NUM_TEAMS 5

#define MAX_SPAWNS 256
#define MAX_PICKUPS 1024

new class_teams[NUM_CLASSES];


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

new wardrobe_interior;
new Float:wardrobe_player_x;
new Float:wardrobe_player_y;
new Float:wardrobe_player_z;
new Float:wardrobe_player_orientation;
new Float:wardrobe_camera_x;
new Float:wardrobe_camera_y;
new Float:wardrobe_camera_z;

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

new player_map[MAX_PLAYERS];

new player_pickup_when[MAX_PLAYERS][MAX_PICKUPS];
new player_pickup_squatting[MAX_PLAYERS];

new player_speed_watch[MAX_PLAYERS];

new player_last_speed_warning[MAX_PLAYERS];


#define NUM_PLOTS 20
new Float:player_plot_x[MAX_PLAYERS][NUM_PLOTS];
new Float:player_plot_y[MAX_PLAYERS][NUM_PLOTS];
new Float:player_plot_z[MAX_PLAYERS][NUM_PLOTS];




new pickup_unauthorised[NUM_TEAMS][MAX_PICKUPS];





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


new vote_timer;
new vote_victim = INVALID_PLAYER_ID;
new vote_initiator = INVALID_PLAYER_ID;
new votes_left = 0;
new player_already_voted[MAX_PLAYERS];





public Float:DistanceFromPlayerToPlayer(id1, id2) {

	new Float:px, Float:py, Float:pz;
	GetPlayerPos(id1,px,py,pz);

	new Float:mx, Float:my, Float:mz;
	GetPlayerPos(id2,mx,my,mz);

    return floatsqroot(floatpower(px-mx,2)+floatpower(py-my,2)+floatpower(pz-mz,2));
}


GetTextFromTeam(str[80], team)
{
	switch(team) {
		case TEAM_TRAMP: str = "a psychopath";
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
		case TEAM_TRAMP:		 return 0xFF7F0050;
		case TEAM_TERRORIST:	 return 0xFF00AF60;
		case TEAM_PRIMEMINISTER: return 0xFFFF40FF;
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
	    return TeamColour(class_teams[class]);
	}
	
	return 0x00000000;
}

ExplainRole(playerid)
{

	if (player_class[playerid]==INVALID_CLASS) return;

	new team = class_teams[player_class[playerid]];

	switch(team) {
		case TEAM_TRAMP: {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Your role is kill everything that moves.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"Beware of the other psychopaths(orange) on the map.");
		}
		case TEAM_TERRORIST: {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Your role is to try and kill the Prime Minister(yellow).");
			SendClientMessage(playerid,COLOUR_PERSONAL,"You must work with the other terrorists(pink) as a team.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"You must avoid the cops(blue) as they will hunt you.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"Beware of the psychopaths(orange) on the map.");
		}
		case TEAM_PRIMEMINISTER: {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Your role is to avoid being killed for as long as possible.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"You must work with your loyal bodyguards(green), they will protect you.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"You are to co-operate with the local police(blue), who will hunt the terrorists.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"Beware of the psychopaths(orange) on the map.");
		}
		case TEAM_BODYGUARD: {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Your duty is to stay with the Prime Minister(yellow) and protect him from harm.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"The terrorists(pink) will soon try and murder him.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"You are to co-operate with the local police(blue), who will hunt the terrorists.");
			SendClientMessage(playerid,COLOUR_PERSONAL,"Beware of the psychopaths(orange) on the map.");
		}
		case TEAM_COP: {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Your orders are to kill the terrorists(pink) without harming");
			SendClientMessage(playerid,COLOUR_PERSONAL,"the bodyguards(green) or the Prime Minister(yellow).");
			SendClientMessage(playerid,COLOUR_PERSONAL,"Beware of the psychopaths(orange) on the map.");
		}
	}
	SendClientMessage(playerid,COLOUR_PERSONAL,"Only terrorists and bodyguards may fly the hydra or seasparrow.");
	if (player_class[playerid]==class_terrorist_medic ||
		player_class[playerid]==class_bodyguard_medic ||
		player_class[playerid]==class_cop_medic) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"You are a medic, you can heal people with /heal!");
	}
	
	if (safehouse_exists) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"The Prime Minister's safehouse (red) is a hydra/seasparrow free zone.");
	}
}

Float:atan(Float:y) {
	for (new Float:a = 0 ; a<=90 ; a++)
		if (floattan(a,degrees)>=y) return a;
	return 90.0;
}

main()
{
	print("\n"); // why is this needed?
	printf("Loaded \"%s\" mode.\n",mode_name);
}


CarCol() {
	return random(126);
}


new pickup_counter = 0;
new pickup_id[MAX_PICKUPS];
new pickup_weaponid[MAX_PICKUPS];
new pickup_ammo[MAX_PICKUPS];
new Float: pickup_x[MAX_PICKUPS];
new Float: pickup_y[MAX_PICKUPS];
new Float: pickup_z[MAX_PICKUPS];
new pickup_type[MAX_PICKUPS];
new pickup_synced[MAX_PICKUPS];
new pickup_last_used_by[MAX_PICKUPS];

#define WP_RESPAWN 0
#define WP_NO_RESPAWN 1

#define WP_UNSYNCED 0
#define WP_SYNCED 1

AddWeaponPickup(pickupid, weaponid, ammo, Float:x, Float:y, Float:z, type=WP_RESPAWN, synced=WP_UNSYNCED)
{
	if (pickup_counter>=MAX_PICKUPS) {
		printf("Too many weapon pickups, pickup ignored %d,%d,%d,%f,%f,%f!\n",pickupid,weaponid,ammo,x,y,z);
		return 0;
	}
	pickup_id[pickup_counter] = pickupid;
	pickup_weaponid[pickup_counter] = weaponid;
	pickup_ammo[pickup_counter] = ammo;
	pickup_x[pickup_counter] = x;
	pickup_y[pickup_counter] = y;
	pickup_z[pickup_counter] = z;
	pickup_type[pickup_counter] = type;
	pickup_synced[pickup_counter] = synced;
	pickup_last_used_by[pickup_counter] = INVALID_PLAYER_ID;
	new pickuptype;
	if (type==WP_RESPAWN) pickuptype = 1;  // constantly visible
	if (type==WP_NO_RESPAWN) pickuptype = 19;  // pickupable with no effect
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

AddStaticVehicle2(modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, color1, color2)
{
	if (vehicle_counter>MAX_VEHICLES) {
		printf("Too many vehicle spawns, ignoring vehicle %d,%f,%f,%f,%f,%d,%d!\n",modelid,spawn_x,spawn_y,spawn_z,z_angle,color1,color2);
		return 0;
	}
	vehicle_modelid[vehicle_counter] = modelid;
	vehicle_spawn_x[vehicle_counter] = spawn_x;
	vehicle_spawn_y[vehicle_counter] = spawn_y;
	vehicle_spawn_z[vehicle_counter] = spawn_z;
	vehicle_z_angle[vehicle_counter] = z_angle;
	vehicle_colour1[vehicle_counter] = color1;
	vehicle_colour2[vehicle_counter] = color2;
	AddStaticVehicle(modelid, spawn_x, spawn_y, spawn_z, z_angle, color1, color2);
	// return vehicle_counter++ doesn't work -- suspect compiler bug
	new retval = vehicle_counter++;
	return retval;
}


new class_counter = 0;
new class_modelid[MAX_PLAYERS];
new class_weapon1[MAX_PLAYERS];
new class_weapon1_ammo[MAX_PLAYERS];
new class_weapon2[MAX_PLAYERS];
new class_weapon2_ammo[MAX_PLAYERS];
new class_weapon3[MAX_PLAYERS];
new class_weapon3_ammo[MAX_PLAYERS];


new team_spawn_counter[NUM_TEAMS];
new Float:team_spawn_x[NUM_TEAMS][MAX_SPAWNS];
new Float:team_spawn_y[NUM_TEAMS][MAX_SPAWNS];
new Float:team_spawn_z[NUM_TEAMS][MAX_SPAWNS];
new Float:team_spawn_a[NUM_TEAMS][MAX_SPAWNS];

AddTeamSpawn(team, Float:x, Float:y, Float:z, Float:a)
{
	if (team_spawn_counter[team]>=MAX_SPAWNS) {
		printf("Too many player spawns (team %d)!\n",team);
		return 0;
	}
	//printf("Spawn (team %d) at (%f,%f,%f) (%f)\n",team,x,y,z,a);
	team_spawn_x[team][team_spawn_counter[team]] = x;
	team_spawn_y[team][team_spawn_counter[team]] = y;
	team_spawn_z[team][team_spawn_counter[team]] = z;
	team_spawn_a[team][team_spawn_counter[team]] = a;

	new retval = team_spawn_counter[team]++;
	return retval;
}

AddTeamLineSpawn(team, Float:x1, Float:y1, Float:z1, Float:x2, Float:y2, Float: z2, Float:separation = 1.0)
{
	new Float:length = floatsqroot(floatpower(x2-x1,2)+floatpower(y2-y1,2)+floatpower(z2-z1,2));
	
	if (length<1.0) {
	    printf("AddTeamLineSpawn: This line is too short (%f,%f,%f) -> (%f,%f,%f)\n",x1,y1,z1,x2,y2,z2);
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
	    AddTeamSpawn(team, x1+i*xv, y1+i*yv, z1+i*zv,face_angle);
	}
}

AddPlayerClass2(modelid, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo)
{
    class_modelid[class_counter] = modelid;
    class_weapon1[class_counter] = weapon1;
    class_weapon1_ammo[class_counter] = weapon1_ammo;
    class_weapon2[class_counter] = weapon2;
    class_weapon2_ammo[class_counter] = weapon2_ammo;
    class_weapon3[class_counter] = weapon3;
    class_weapon3_ammo[class_counter] = weapon3_ammo;
	AddPlayerClass(modelid, (game_boundary_max_x-game_boundary_min_x)/2,(game_boundary_max_y-game_boundary_min_y)/2,0,0, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
	new retval = class_counter++;
	return retval;
}


#define NUM_MAPS 3

public PlayerMapVote(playerid, map[])
{
	if (streq(map,"ls")) {
		player_map[playerid] = 0;
	} else if (streq(map,"sf")) {
	    player_map[playerid] = 1;
	} else if (streq(map,"desert")) {
	    player_map[playerid] = 2;
	} else
	    PlayerMapVoteHelp(playerid);

	PlayerMapVoteStatus(playerid);
}

public PlayerMapVoteHelp(playerid)
{
	SendClientMessage(playerid,COLOUR_PERSONAL,"Usage: /mapvote ls|sf|desert");
}


public PlayerMapVoteStatus(playerid)
{
	new score[NUM_MAPS];
	for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i)) {
		if (player_map[i]!=INVALID_MAP) score[player_map[i]]++;
	}

	new text[256];
	format(text, sizeof text,"Current scores: ls %d, sf %d, desert %d", score[0], score[1], score[2]);
	SendClientMessage(playerid,COLOUR_PERSONAL,text);
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
	    //printf("score={%d,%d,%d} max_score=%d map=%d proposal=%d\n",score[0],score[1],score[2],max_score,map,proposal);
	}
	return map;

}


public MapVoteStore() {

	new filename[256] = "mapvote.txt";

	new File:mapvotefile = fopen(filename, io_write);
	if (!mapvotefile) {
		printf("ERROR: writing to mapvote file\n");
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
		printf("ERROR: reading from mapvote file\n");
		return MapVoteWinner(); // a random map since no votes are present when the map starts
	}

	new line[256];
	fread(mapvotefile, line);
	fclose(mapvotefile);

	return strval(line);
}



public OnGameModeInit()
{
	SetGameModeText(mode_name);

	ShowPlayerMarkers(1);
	ShowNameTags(1);
	
	new map = MapVoteGetVotedMap();

	if (map==0) {
	
		AddStaticVehicle2(HYDRA,1967,-2637.3569,14.1309,359.9997,43,0); // hydra west
		AddStaticVehicle2(HYDRA,1977,-2637.3569,14.1309,359.9997,43,0); // hydra east

		AddStaticVehicle2(STRETCH,1272.0273,-2052.5105,58.9108,268.6577,1,1); // pm limo
		AddStaticVehicle2(COPSWAT,1248.0804,-2041.6018,59.8980,269.1785,0,1); // pm swat van south
		AddStaticVehicle2(COPSWAT,1248.4545,-2029.4104,59.8854,269.3774,0,1); // pm swat van middle
		AddStaticVehicle2(COPSWAT,1247.5862,-2016.4684,59.9106,270.2272,0,1); // pm swat van north
		AddStaticVehicle2(COPCAR,1258.5917,-2052.1367,59.2043,267.4406,0,1); // pm police car behind limo
		AddStaticVehicle2(COPCAR,1283.4066,-2052.5417,58.5057,267.8666,0,1); // pm police car infront of limo
		AddStaticVehicle2(NEWSVAN,1307.8915,-2061.7043,58.2399,269.3047,CarCol(),CarCol()); // pm news van
		AddStaticVehicle2(NEWSVAN,1323.5018,-2061.6367,57.7726,270.4650,CarCol(),CarCol()); // pm news van
		AddStaticVehicle2(NEWSVAN,1275,-2013,59.1134,89.3634,CarCol(),CarCol()); // pm newsvan
		AddStaticVehicle2(FBIRANGER,1275,-2023,59.1450,88.3334,0,0); // pm fbiranch north
		AddStaticVehicle2(FBIRANGER,1275,-2028,59.1616,88.3310,0,0); // pm fbiranch south

		AddStaticVehicle2(STRETCH,1330.2595,-626.7542,108.9349,289.3475,0,0); // safe house limo
		AddStaticVehicle2(FBIRANGER,1339.3717,-623.1824,109.2619,289.7454,0,0); // safe house escort before limo
		AddStaticVehicle2(FBIRANGER,1320.3932,-630.0724,109.2656,286.9799,0,0); // safe house escort behind limo
		AddStaticVehicle2(COPCAR,1356.0096,-610.3824,108.8543,105.9892,0,1); // safe house cop car north
		AddStaticVehicle2(COPCAR,1357.4025,-614.4976,108.9018,106.5213,0,1); // safe house cop car middle
		AddStaticVehicle2(COPCAR,1358.7394,-618.5698,108.9018,105.6476,0,1); // safe house cop car south
		AddStaticVehicle2(COPBIKE,1360.5815,-622.1605,108.7038,106.0725,0,0); // safe house cop bike next to cop cars

		AddStaticVehicle2(COPBIKE,1555,-1609,12.9486,180,0,0); // police station bike 1 (north)
		AddStaticVehicle2(COPBIKE,1560,-1609,12.9486,180,0,0); // police station bike 2
		AddStaticVehicle2(COPBIKE,1565,-1609,12.9474,180,0,0); // police station bike 3
		AddStaticVehicle2(COPBIKE,1570,-1609,12.9557,180,0,0); // police station bike 4
		AddStaticVehicle2(COPBIKE,1575,-1609,12.9540,180,0,0); // police station bike 5 (south)
		AddStaticVehicle2(COPSWAT,1601.7515,-1623.7999,13.6164,91.0440,0,1); // police station swat van 2
		AddStaticVehicle2(COPSWAT,1601.8759,-1629.7356,13.6197,88.7999,0,1); // police station swat van 1
		AddStaticVehicle2(COPTANK,1534.5927,-1645.1713,5.6494,179.6766,1,1); // police station swat tank 1 (corner)
		AddStaticVehicle2(COPTANK,1545.3734,-1655.2261,5.6494,270.4727,1,1); // police station swat tank 2
		AddStaticVehicle2(COPCAR,1544.4673,-1667.9943,5.6599,269.0485,0,1); // police station cop car indoors
		AddStaticVehicle2(COPCAR,1529.6506,-1683.7926,5.6578,91.2372,0,1); // police station cop car indoors
		AddStaticVehicle2(COPCAR,1544.2897,-1684.2386,5.6589,90.3812,0,1); // police station cop car indoors
		AddStaticVehicle2(COPCAR,1558.9119,-1709.6991,5.6586,181.0041,0,1); // police station cop car indoors
		AddStaticVehicle2(COPCAR,1591.4161,-1711.0702,5.6598,0.3255,0,1); // police station cop car indoors
		AddStaticVehicle2(COPCAR,1601.5614,-1700.2463,5.6598,89.8913,0,1); // police station cop car indoors
		AddStaticVehicle2(COPRANGER,1585.3955,-1671.6195,6.0846,269.2602,0,1); // police station ranger
		AddStaticVehicle2(COPRANGER,1584.6819,-1667.6851,6.0791,269.2272,0,1); // police station ranger
		AddStaticVehicle2(COPRANGER,1601.9421,-1684.0054,6.0797,89.9971,0,1); // police station ranger
		AddStaticVehicle2(COPRANGER,1602.3267,-1691.9391,6.1032,91.0921,0,1); // police station ranger
		AddStaticVehicle2(COPRANGER,1603.4213,-1614.9706,13.6899,86.7397,0,1); // police station ranger outdoors
		AddStaticVehicle2(COPRANGER,1603.1095,-1604.8138,13.6777,89.8504,0,1); // police station ranger outdoors

		AddStaticVehicle2(BIKESLOW,1767.4407,-1689.3885,12.9402,180.4357,CarCol(),CarCol()); // terrorist bike 1
		AddStaticVehicle2(BIKESLOW,1771.0730,-1688.7708,13.0141,181.8331,CarCol(),CarCol()); // terrorists bike 2
		AddStaticVehicle2(HUNTLEY,1808.7601,-1715.5109,13.4829,180.1130,CarCol(),CarCol()); // terrorists huntley
		AddStaticVehicle2(HUNTLEY,1808.7458,-1707.0656,13.4865,180.0818,CarCol(),CarCol()); // terrorists huntley north
		AddStaticVehicle2(BIKEBIG,1774.7974,-1688.7113,12.9956,176.7240,CarCol(),CarCol()); // terrorists bike 3
		AddStaticVehicle2(BIKEBIG,1778.2140,-1688.9255,12.9975,181.9484,CarCol(),CarCol()); // terrorists bike 4
		AddStaticVehicle2(VAN,1795.7860,-1691.3322,13.4844,181.4520,CarCol(),CarCol()); // terrorists van
		AddStaticVehicle2(VAN,1805.5522,-1690.5121,13.5993,152.4614,CarCol(),CarCol()); // terrorists van corner
		AddStaticVehicle2(RANCHER,1766.9115,-1695.8004,13.5906,91.9755,CarCol(),CarCol()); // terrorists 4x4
		AddStaticVehicle2(SMALLVAN,1767.4751,-1704.2063,13.6066,91.5783,CarCol(),CarCol()); // terrorists small van
		AddStaticVehicle2(SALOON2,1786.7887,-1689.5065,13.1861,89.9475,CarCol(),CarCol()); // terrorists old car

		AddStaticVehicle2(POLICEMAV,1987,-2286.9893,15.1966,85.8866,0,1); //
		AddStaticVehicle2(POLICEMAV,1987,-2314.5679,13.6807,86.7669,0,1); //
		AddStaticVehicle2(POLICEMAV,1992,-2400,13.7241,90.2958,0,1); //
		AddStaticVehicle2(POLICEMAV,1992,-2375,13.7236,77.8665,0,1); // police mav
		AddStaticVehicle2(POLICEMAV,1992,-2350,13.7236,94.8186,0,1); // police mav 2
		AddStaticVehicle2(SEASPARROW,2737.4866,-1760.1506,44.1182,224.5974,75,2); // sparrow1
		AddStaticVehicle2(SEASPARROW,1568.8612,-1238.7914,277.8883,49.2131,75,2); // sparrow2


		AddStaticVehicle2(SHAMAL,1596.1857,-2450,14.4836,0.0000,1,1); // shamal
		AddStaticVehicle2(SHAMAL,1559.7833,-2450,14.4836,0.0000,1,1); // shamal
		AddStaticVehicle2(RUSTLER,1516.4668,-2455,14.2437,359.9142,7,6); // rustler
		AddStaticVehicle2(RUSTLER,1486.6560,-2455,14.2642,359.9445,1,6); // rustler
		AddStaticVehicle2(BEAGLE,1457.6503,-2446.1963,14.9146,0.0000,4,90); // beagle
		AddStaticVehicle2(BEAGLE,1442.9895,-2493.7166,14.9277,270.0598,7,68); // beagle runway
		AddStaticVehicle2(AT400,1470.1775,-2593.4873,13.4630,269.6879,8,7); // massive fucking plane
		AddStaticVehicle2(STAIRS,1489.0352,-2590,13.2065,180.2330,1,76); // stairs for plane
		AddStaticVehicle2(BAGGAGE,1877.1975,-2419.0972,13.2110,117.3680,1,78); // baggage
		AddStaticVehicle2(BAGGAGE,1807.3389,-2449.4619,13.2110,129.6533,1,78); // baggage
		AddStaticVehicle2(BAGGAGE,1697.7036,-2434.6035,13.2111,116.7797,1,78); // baggage

		AddStaticVehicle2(ZR350,1465.7742,-899.0321,54.8603,3.2162,CarCol(),CarCol()); // posh house 1
		AddStaticVehicle2(CHEETAH,1527.2067,-886.2890,61.1146,254.2985,CarCol(),CarCol()); // roof top
		AddStaticVehicle2(BULLET,1535.1796,-841.1790,64.8940,94.3109,CarCol(),CarCol()); // posh 3
		AddStaticVehicle2(SUPERGT,1528.4613,-811.7554,71.8663,89.1012,CarCol(),CarCol()); // posh 4
		AddStaticVehicle2(CHEETAH,1025.5624,-800.0936,101.8734,20.1116,CarCol(),CarCol()); // posh
		AddStaticVehicle2(ZR350,920.5785,-786.9205,114.3464,68.2807,CarCol(),CarCol()); // posh
		AddStaticVehicle2(BULLET,855.9669,-815.3113,87.7593,19.6388,CarCol(),CarCol()); // posh
		AddStaticVehicle2(BULLET,684.5640,-1074.3420,49.5645,60.4335,CarCol(),CarCol()); // posh
		AddStaticVehicle2(CHEETAH,404.5968,-1155.5228,77.6275,143.8123,CarCol(),CarCol()); // posh
		AddStaticVehicle2(BULLET,289.7317,-1167.9216,80.9028,220.8520,CarCol(),CarCol()); // very posh
		AddStaticVehicle2(BULLET,292.9161,-1162.0803,80.9022,220.1603,CarCol(),CarCol()); // very posh
		AddStaticVehicle2(SUPERGT,288.0584,-1327.9247,53.5295,218.3855,CarCol(),CarCol()); // posh
		AddStaticVehicle2(BULLET,1241.8268,-749.5003,94.2435,18.4917,CarCol(),CarCol()); //
		AddStaticVehicle2(CHEETAH,872.4854,-872.3334,77.2855,200.1391,CarCol(),CarCol()); // posh
		AddStaticVehicle2(ZR350,833.5978,-926.3884,54.9567,246.7931,CarCol(),CarCol()); // posh
		AddStaticVehicle2(ZR350,842.0680,-896.1290,68.4778,232.5096,CarCol(),CarCol()); // posh
		AddStaticVehicle2(SUPERGT,1086.8040,-637.7476,112.9547,5.5657,CarCol(),CarCol()); // posh
		AddStaticVehicle2(HUNTLEY,1528.2061,-800.0825,73.0617,90.4437,CarCol(),CarCol()); // posh 4b (rancher)
		AddStaticVehicle2(BIKEFAST,1018.2570,-777.7994,102.6511,90.7938,CarCol(),CarCol()); // posh bike
		AddStaticVehicle2(HUNTLEY,848.0241,-818.4172,87.0807,22.0264,CarCol(),CarCol()); // posh rancher
		AddStaticVehicle2(BIKEFAST,718.9101,-1001.8113,52.4130,148.8447,CarCol(),CarCol()); // posh bike
		AddStaticVehicle2(BIKEFAST,278.7959,-1257.6844,73.9157,215.0338,CarCol(),CarCol()); // posh bike
		AddStaticVehicle2(BIKESLOW,337.6167,-1308.5352,54.2161,209.8673,CarCol(),CarCol()); // sanchez
		AddStaticVehicle2(BIKESLOW,346.4070,-1300.6411,54.2168,206.8296,CarCol(),CarCol()); // sanchez
		AddStaticVehicle2(PATRIOT,914.0649,-665.7319,116.7606,241.1865,CarCol(),CarCol()); // patriot
		AddStaticVehicle2(MONSTER,946.1701,-705.2098,121.9152,29.1216,CarCol(),CarCol()); // bandito
		AddStaticVehicle2(HUNTLEY,940.8948,-695.8306,121.1879,29.9158,CarCol(),CarCol()); // sand king
		AddStaticVehicle2(HUNTLEY,1097.4353,-642.2601,112.5732,267.1823,CarCol(),CarCol()); // huntley
		AddStaticVehicle2(RANCHER,1413.9097,-481.3066,42.9720,297.0425,CarCol(),CarCol()); // rancher

		AddStaticVehicle2(COMET,1659.2822,-1426.8878,13.3985,88.7621,CarCol(),CarCol()); // com
		AddStaticVehicle2(BANSHEE,1590.5114,-1317.7780,17.2589,49.2585,CarCol(),CarCol()); // com
		AddStaticVehicle2(STALLION,1809.2898,-1430.6573,13.1695,184.9688,CarCol(),CarCol()); // com
		AddStaticVehicle2(WINDSOR,1725.2581,-1217.3599,19.0807,2.3763,CarCol(),CarCol()); // com
		AddStaticVehicle2(COMET,1531.0547,-1066.9626,24.7978,90.4579,CarCol(),CarCol()); // com
		AddStaticVehicle2(ZR350,1451.6792,-1146.7477,23.7968,133.4617,CarCol(),CarCol()); // com
		AddStaticVehicle2(STALLION,1328.1886,-1188.7338,23.3185,176.1219,CarCol(),CarCol()); // com
		AddStaticVehicle2(WINDSOR,1252.2759,-1430.6191,13.2775,183.7629,CarCol(),CarCol()); // com
		AddStaticVehicle2(COMET,1357.4553,-1570.0588,13.2831,163.9771,CarCol(),CarCol()); // com
		AddStaticVehicle2(BANSHEE,1677.5549,-1680.1785,13.2813,182.6165,CarCol(),CarCol()); // com

		AddStaticVehicle2(STALLION,1462.1278,-1356.1224,13.6903,0.6286,CarCol(),CarCol()); // com
		AddStaticVehicle2(CHEETAH,1294.6667,-984.6381,32.8379,180.0905,CarCol(),CarCol()); // cheetah
		AddStaticVehicle2(SUV1,1205.1552,-1070.0197,29.3908,178.9626,CarCol(),CarCol()); // res
		AddStaticVehicle2(CEMENT,1256.7892,-1261.7640,13.3957,272.3957,CarCol(),CarCol()); // ind
		AddStaticVehicle2(STALLION,1429.0876,-1408.5740,13.7150,179.6099,CarCol(),CarCol()); // com
		AddStaticVehicle2(STALLION,1479.4669,-1415.0720,12.0265,125.8019,CarCol(),CarCol()); // com
		AddStaticVehicle2(LOW1,1947.7089,-1055.4075,24.3895,261.2244,CarCol(),CarCol()); // low
		AddStaticVehicle2(SALOON4,2149.6853,-1137.7899,25.6585,90.4148,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(SALOON1,2160.4878,-1192.2114,23.9636,272.4233,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(SALOON3,2241.3850,-1317.9384,24.1282,269.8383,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(SALOON4,2347.2151,-1274.0010,22.6479,272.8961,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(LOW2,2427.8301,-1241.7535,24.4136,273.2498,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(LOW3,2413.4661,-1229.0675,24.5211,182.1959,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(BIKESLOW,2463.7815,-1424.0723,23.8932,83.3706,CarCol(),CarCol()); // slow bike
		AddStaticVehicle2(SALOON4,2460.6946,-1551.0662,24.1444,273.1476,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(LOW2,2479.3372,-1748.7130,13.6900,180.5300,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(SALOON2,2393.3811,-1927.7556,13.5243,0.1380,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(LOW1,2390.0774,-1884.8796,13.6899,265.9858,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(SALOON2,2728.9060,-1970.3724,13.6880,269.7400,CarCol(),CarCol()); // saloon cheap

		AddStaticVehicle2(SUV3,976.4387,-1230.6876,17.0708,88.5852,41,41); // suv
		AddStaticVehicle2(FLATBED,834.1715,-1216.6764,17.0872,84.6204,41,41); // ind
		AddStaticVehicle2(TOWTRUCK,860.5280,-1285.6953,14.0937,182.9245,41,41); // ind
		AddStaticVehicle2(SALOON3,920.2068,-1292.6371,13.8247,270.7137,41,41); // saloon
		AddStaticVehicle2(SUV2,1012.5267,-1346.8806,13.4797,267.5486,41,41); // suv
		AddStaticVehicle2(SUV3,1117.3052,-1378.9901,14.4011,89.1945,41,41); // suv
		AddStaticVehicle2(BIKEFAST,1132.5653,-1614.6372,13.9194,85.6389,41,41); // fast bike in shopping centre
		AddStaticVehicle2(WINDSOR,1160.2629,-1770.1327,16.7116,359.6430,41,41); // com
		AddStaticVehicle2(BANSHEE,1284.9130,-1732.6017,13.6673,0.8082,41,41); // com

		AddStaticVehicle2(SUV3,974.6439,-1089.6545,24.2836,177.6930,CarCol(),CarCol()); // suv
		AddStaticVehicle2(SALOON1,785.2358,-1064.5126,24.9404,49.4555,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(COMET,922.8809,-996.1521,38.3117,97.5416,CarCol(),CarCol()); // com
		AddStaticVehicle2(SUV1,1140.2466,-927.7980,43.3007,271.3280,CarCol(),CarCol()); // suv
		AddStaticVehicle2(SALOON2,1337.9901,-901.7728,36.4426,180.8606,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(SWEEPER,1646.3864,-1062.6378,24.0274,155.3884,CarCol(),CarCol()); // sweeper
		AddStaticVehicle2(VAN,1649.0890,-1111.7745,24.0429,267.8602,CarCol(),CarCol()); // van
		AddStaticVehicle2(SMALLVAN,1657.3999,-1134.4487,24.0332,180.5504,CarCol(),CarCol()); // smallvan
		AddStaticVehicle2(FLATBED,1564.0852,-1019.3521,24.0372,81.4864,CarCol(),CarCol()); // flatbed
		AddStaticVehicle2(BIKEFAST,1518.3389,-1257.1481,14.6713,180.1029,CarCol(),CarCol()); // fastbike
		AddStaticVehicle2(SALOON3,1999.5741,-1445.1320,13.6917,217.9478,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(LOW1,2086.8411,-1327.5076,24.1078,0.7111,CarCol(),CarCol()); // low
		AddStaticVehicle2(SALOON4,1993.6346,-1276.0702,23.9460,357.9409,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(SWEEPER,1816.7452,-1133.7300,24.2091,273.6008,CarCol(),CarCol()); // sweeper
		AddStaticVehicle2(COACH,1775.9677,-1022.6566,24.0901,333.2864,CarCol(),CarCol()); // coach
		AddStaticVehicle2(SALOON1,2051.7642,-1121.0273,24.7394,176.2412,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(LOW2,2080.0862,-1284.8212,24.0993,178.8542,CarCol(),CarCol()); // lowrider
		AddStaticVehicle2(LOW3,2143.8416,-1422.6912,25.2155,89.4439,CarCol(),CarCol()); // low
		AddStaticVehicle2(BIKESLOW,2199.1309,-1497.6111,24.1060,275.7724,CarCol(),CarCol()); // slowbike
		AddStaticVehicle2(SUV2,2200.7722,-1660.7334,15.1396,164.7502,CarCol(),CarCol()); // sub
		AddStaticVehicle2(BIKEBIG,2321.2974,-1756.2679,13.6757,273.8248,CarCol(),CarCol()); // bikebig

		AddStaticVehicle2(STRETCH,1460.0215,-1025.5533,23.5681,90.6347,22,1); // limo bingo
		AddStaticVehicle2(STRETCH,1439.1008,-1025.7854,23.5682,90.6346,22,1); // limo bingo


		AddStaticVehicle2(COACH,1567.8092,-1891.4109,13.7520,356.6625,CarCol(),CarCol()); // coach
		AddStaticVehicle2(SUV1,1370.2388,-1889.9265,13.7022,359.3041,CarCol(),CarCol()); // suv
		AddStaticVehicle2(SALOON2,1206.1053,-1829.6782,13.5963,92.9658,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(BANSHEE,1022.5290,-1832.1632,13.8703,62.2289,CarCol(),CarCol()); // com
		AddStaticVehicle2(WINDSOR,860.6016,-1756.1599,13.7098,17.1219,CarCol(),CarCol()); // com
		AddStaticVehicle2(CHEETAH,721.0599,-1809.3398,12.5489,71.5726,CarCol(),CarCol()); // posh
		AddStaticVehicle2(SUV2,479.5703,-1765.3434,5.7271,87.6614,CarCol(),CarCol()); // suv
		AddStaticVehicle2(SUV3,266.6155,-1746.7922,4.5722,91.5479,CarCol(),CarCol()); // suv
		AddStaticVehicle2(COMET,276.7425,-1594.9742,33.2880,348.6675,CarCol(),CarCol()); // com
		AddStaticVehicle2(STALLION,425.1006,-1440.8821,31.4193,36.4924,CarCol(),CarCol()); // com
		AddStaticVehicle2(SUV1,551.6909,-1505.2357,14.7316,182.8906,CarCol(),CarCol()); // suv
		AddStaticVehicle2(SALOON3,649.7829,-1620.6465,15.2105,112.6496,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(BIKEFAST,682.0504,-1259.6924,13.7628,106.4779,CarCol(),CarCol()); // bikefast
		AddStaticVehicle2(BIKEBIG,2175.6335,-993.5605,63.1809,169.8002,CarCol(),CarCol()); // bikebig
		AddStaticVehicle2(RANCHER,2453.6128,-1016.0901,59.8982,177.5543,CarCol(),CarCol()); // rancher
		AddStaticVehicle2(SALOON4,2536.1904,-1104.8235,59.8875,180.5492,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(LOW1,2328.6465,-1407.3834,24.1766,178.8325,CarCol(),CarCol()); // low
		AddStaticVehicle2(MONSTER,2492.1194,-1663.3529,13.5302,82.4906,CarCol(),CarCol()); // monster
		AddStaticVehicle2(SALOON2,2066.3311,-1694.5254,13.7310,268.5239,CarCol(),CarCol()); // saloon2
		AddStaticVehicle2(CEMENT,2054.1970,-1767.7522,13.7393,181.0835,CarCol(),CarCol()); // cement
		AddStaticVehicle2(FLATBED,1939.3959,-1815.7340,13.7385,77.9876,CarCol(),CarCol()); // flatbed
		AddStaticVehicle2(TOWTRUCK,1937.9028,-1939.7325,13.7375,89.1628,CarCol(),CarCol()); // towtruck
		AddStaticVehicle2(BIKESLOW,1941.1481,-2140.8420,13.7440,175.4044,CarCol(),CarCol()); // bikeslow
		AddStaticVehicle2(SWEEPER,2125.8816,-2165.4050,13.7341,320.7342,CarCol(),CarCol()); // sweeper
		AddStaticVehicle2(PATRIOT,2076.9661,-1994.8885,13.7389,41.9139,CarCol(),CarCol()); // patriot

		AddStaticVehicle2(SALOON2,1502.1649,-2212.7788,13.3136,359.6183,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(SUV1,1407.0730,-2261.8484,13.3164,180.3750,CarCol(),CarCol()); // suv
		AddStaticVehicle2(BANSHEE,1365.5696,-2365.7705,13.3159,90.6723,CarCol(),CarCol()); // com
		AddStaticVehicle2(VAN,1789.8521,-2180.6389,13.3187,270.2510,CarCol(),CarCol()); // van
		AddStaticVehicle2(SALOON4,1922.5924,-1605.3048,13.1082,269.9615,118,118); // saloon
		AddStaticVehicle2(BIKEBIG,2070.1260,-1591.6121,13.0664,182.2131,118,118); // bikebig
		AddStaticVehicle2(SALOON3,2705.9854,-1844.6924,9.8701,340.3920,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(SUV2,2813.2185,-1671.5564,10.3166,2.8114,CarCol(),CarCol()); // suv
		AddStaticVehicle2(LOW2,2644.6707,-2023.4589,13.9219,1.6210,CarCol(),CarCol()); // low
		AddStaticVehicle2(CEMENT,2743.6338,-2138.0737,11.5750,94.0439,CarCol(),CarCol()); // cement
		AddStaticVehicle2(FLATBED,2300.8748,-2043.2729,13.9219,93.1316,CarCol(),CarCol()); // flatbed
		AddStaticVehicle2(SALOON1,2241.5413,-2111.0176,13.9195,134.0082,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(BIKEFAST,2228.4226,-1811.8547,13.8943,269.9799,CarCol(),CarCol()); // bikefast
		AddStaticVehicle2(LOW1,2505.4697,-1235.4440,37.6099,356.9889,CarCol(),CarCol()); // lowr
		AddStaticVehicle2(SMALLVAN,2587.6326,-1322.8219,40.4727,91.7934,CarCol(),CarCol()); // smallvan
		AddStaticVehicle2(BIKESLOW,2527.5496,-1465.3361,24.3251,86.3631,CarCol(),CarCol()); // slowbike
		AddStaticVehicle2(SALOON3,2698.6609,-1191.8911,69.7986,270.9197,CarCol(),CarCol()); // saloon
		AddStaticVehicle2(RANCHER,2706.4719,-1274.8931,58.4590,135.3378,CarCol(),CarCol()); // rancher

		AddStaticVehicle2(BANSHEE,894.8080,-1518.4893,12.8387,9.3645,CarCol(),CarCol()); // com
		AddStaticVehicle2(RANCHER,1725.1200,-405.3828,45.0947,196.5883,CarCol(),CarCol()); // offroad
		AddStaticVehicle2(RANCHER,1970.6564,-813.4561,129.1876,281.6888,CarCol(),CarCol()); // rancher
		AddStaticVehicle2(RANCHER,2431.9832,-773.8238,113.2601,296.2740,CarCol(),CarCol()); // rancher
		AddStaticVehicle2(RANCHER,2662.3218,-438.5351,59.7808,318.4588,CarCol(),CarCol()); // rancher

		for (new i=0 ; i<vehicle_counter ; i++) {
		    if (vehicle_modelid[i]==HYDRA || vehicle_modelid[i]==SEASPARROW) {
		        cant_drive_vehicle[TEAM_TRAMP][i] = 1;
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
		    	AddTeamSpawn(TEAM_TRAMP, 1060+(2060-1060)/16.0*x, -1130-(1855-1130)/16.0*y, 333, 0.0);
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
		
		wardrobe_interior = 0;
		wardrobe_player_x = 1526.7882;
		wardrobe_player_y = -1346.4575;
		wardrobe_player_z = 330;
		wardrobe_player_orientation = 63;
		wardrobe_camera_x = 1517;
		wardrobe_camera_y = -1342;
		wardrobe_camera_z = 333;

		AddStaticPickup(PICKUP_PARACHUTE,2,1529.0437,-1364.1820,327.8988); // parachute


		class_tramp1 = AddPlayerClass2(230,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_tramp2 = AddPlayerClass2(212,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_tramp3 = AddPlayerClass2(200,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);
		class_tramp4 = AddPlayerClass2(137,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);

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



	} else if (map==1) {

        AddStaticVehicle2(SALOON1, -2118.9319,194.8274,35.7567,2.7513,-1,-1);
        AddStaticVehicle2(SALOON1, -2036.5212,305.6321,35.9090,359.8144,-1,-1);
        AddStaticVehicle2(VAN,     -2087.8369,255.6416,37.0341,357.9168,-1,-1);
        AddStaticVehicle2(CADDY,   -2652.9031,-297.2605,8.0617,315.6009,-1,-1);
        AddStaticVehicle2(CADDY,   -2659.7441,-289.6562,8.0920,313.6239,-1,-1);
        AddStaticVehicle2(CADDY,   -2642.9949,-301.7552,8.0090,47.6567,-1,-1);
        AddStaticVehicle2(SUV1,    -2618.9480,1376.7870,7.7322,181.1998,-1,-1);
        AddStaticVehicle2(SUPERGT,   -2645.5964,1376.7522,7.8935,267.8349,-1,-1);
        AddStaticVehicle2(STRETCH, -2628.6924,1377.4845,7.9350,180.7913,-1,-1);
        AddStaticVehicle2(STRETCH, -2633.1638,1332.7010,7.9953,269.6430,-1,-1);
        AddStaticVehicle2(SALOON2, -2126.2573,650.7344,53.2421,88.8335,-1,-1);
        AddStaticVehicle2(SALOON2, -2125.8604,658.0598,53.3040,92.1547,-1,-1);
        AddStaticVehicle2(SALOON3, -2158.0305,657.3961,53.2440,272.5298,-1,-1);
        AddStaticVehicle2(BIKEFAST,-2151.1257,629.7889,52.8293,180.7068,-1,-1);
        AddStaticVehicle2(SALOON3, -2156.6838,942.3219,80.8784,269.6746,-1,-1);
        AddStaticVehicle2(COMET,   -2223.2629,1083.2794,80.7819,359.6700,-1,-1);
        AddStaticVehicle2(MONSTER,-2517.2996,1229.3512,38.7999,209.3221,-1,-1);
        AddStaticVehicle2(BIKEFAST,-1654.1005,1211.9901,14.2380,315.9562,-1,-1);
        AddStaticVehicle2(CHEETAH,-1660.4161,1213.3704,8.0209,295.4768,-1,-1);
        AddStaticVehicle2(CHEETAH,-1553.3494,1089.8568,7.9584,89.1789,-1,-1);
        AddStaticVehicle2(TAXI,-1497.4607,845.8477,7.9671,88.5197,-1,-1);
        AddStaticVehicle2(SALOON4,-1699.4597,1035.9624,46.0932,91.6588,-1,-1);
        AddStaticVehicle2(ZR350,-1786.6871,1206.5266,25.7813,178.8742,-1,-1);
        AddStaticVehicle2(ZR350,-1703.9169,1339.6957,7.8358,133.6003,-1,-1);
        AddStaticVehicle2(SALOON4,-2438.0117,1340.9783,8.7316,86.7979,-1,-1);
        AddStaticVehicle2(SUPERGT,-2168.5137,1251.3845,27.4573,358.0133,-1,-1);
        AddStaticVehicle2(SUPERGT,-2636.3838,932.3286,72.5378,187.1212,-1,-1);
        AddStaticVehicle2(BIKESLOW,-2566.5906,989.6594,78.8568,358.1472,-1,-1);
        AddStaticVehicle2(BIKESLOW,-2464.8860,896.7036,63.6223,0.6326,-1,-1);
        AddStaticVehicle2(SALOON3,-2273.8679,921.3689,67.3102,359.9958,-1,-1);
        AddStaticVehicle2(SUV2,-2459.9055,786.4501,36.2643,89.8722,-1,-1);
        AddStaticVehicle2(SUV2,-2673.5830,802.1517,51.0693,0.3607,-1,-1);
        AddStaticVehicle2(MONSTER,-2902.7820,342.5712,6.3723,138.7612,-1,-1);
        AddStaticVehicle2(MONSTER,-2876.3977,26.3173,7.2123,118.5961,-1,-1);
        AddStaticVehicle2(PATRIOT,-1382.4279,455.8060,7.1838,359.9849,-1,-1);
        AddStaticVehicle2(PATRIOT,-1439.3396,455.1034,7.1739,0.1531,-1,-1);
        AddStaticVehicle2(SALOON3,-1465.0304,455.6730,7.9280,358.9676,-1,-1);
        AddStaticVehicle2(GOKART,-1677.1865,438.8195,7.4635,227.1910,-1,-1);
        AddStaticVehicle2(LOW2,-1872.5575,-820.7949,32.8273,90.7921,-1,-1);
        AddStaticVehicle2(MONSTER,-1898.3019,-915.5814,33.3947,91.2857,-1,-1);
        AddStaticVehicle2(SALOON1,-2124.4800,-929.0856,32.7397,269.1853,-1,-1);
        AddStaticVehicle2(SALOON1,-2133.3015,-847.1439,32.7396,88.8312,-1,-1);
        AddStaticVehicle2(SALOON2,-2134.1038,-775.5048,32.8568,91.5838,-1,-1);
        AddStaticVehicle2(SALOON2,-2134.1428,-453.9576,36.1699,95.0875,-1,-1);
        AddStaticVehicle2(BULLET,-2035.6851,170.2529,29.4610,268.9087,-1,-1);
        AddStaticVehicle2(SUV2,-2219.7209,-83.2318,36.4367,2.0481,-1,-1);
        AddStaticVehicle2(BULLET,-2018.4379,-98.9675,35.7890,358.5420,-1,-1);
        AddStaticVehicle2(BULLET,-2352.0959,-126.8848,35.9374,179.5324,-1,-1);
        AddStaticVehicle2(SALOON2,-2180.1277,41.8536,36.1953,269.9865,-1,-1);
        AddStaticVehicle2(BIKEFAST,-2269.4526,69.5823,35.7279,89.6104,-1,-1);
        AddStaticVehicle2(BIKEFAST,-2266.0090,145.0206,35.7322,92.0045,-1,-1);
        AddStaticVehicle2(LOW2,-2129.2864,787.6249,70.3666,87.1679,-1,-1);
        AddStaticVehicle2(LOW2,-2424.9958,740.8871,35.8205,177.6701,-1,-1);
        AddStaticVehicle2(SUV2,-2684.7639,636.4294,14.5454,179.2696,-1,-1);
        AddStaticVehicle2(SALOON1,-2545.7666,627.5895,15.1684,89.1952,-1,-1);
        AddStaticVehicle2(SALOON1,-2428.7107,514.7900,30.6451,207.9893,-1,-1);
        AddStaticVehicle2(BANSHEE,-2498.4822,357.5526,35.7969,58.0823,-1,-1);
        AddStaticVehicle2(BANSHEE,-2664.9673,268.9968,5.0156,357.6026,-1,-1);
        AddStaticVehicle2(TAXI,-2626.5276,-53.6779,5.1144,357.7703,-1,-1);
        AddStaticVehicle2(COMET,-2718.5354,-124.4790,5.3071,269.1429,-1,-1);
        AddStaticVehicle2(COMET,-2487.5295,-125.3075,26.5715,90.9363,-1,-1);
        AddStaticVehicle2(SUV2,-2486.0298,51.5018,27.7954,177.2178,-1,-1);
        AddStaticVehicle2(SUV2,-2574.9736,146.5981,5.4279,1.8790,-1,-1);
        AddStaticVehicle2(ZR350,-2800.0251,205.2155,7.8399,92.2606,-1,-1);
        AddStaticVehicle2(SALOON1,-1741.0009,811.0599,25.5879,270.6703,-1,-1);
        AddStaticVehicle2(SALOON1,-1920.7559,875.2713,36.1113,270.0973,-1,-1);
        AddStaticVehicle2(SUV2,-2040.4465,1107.7076,54.4032,89.8491,-1,-1);
        AddStaticVehicle2(SUV2,-1968.8488,465.6065,36.2766,89.3124,-1,-1);
        AddStaticVehicle2(SALOON1,-1938.2876,584.4863,35.9137,1.1244,-1,-1);
        AddStaticVehicle2(SALOON1,-1825.2035,-0.4858,15.8965,270.0104,-1,-1);
        AddStaticVehicle2(HUNTLEY,-1820.0182,-175.9391,10.3323,87.9147,-1,-1);
        AddStaticVehicle2(BANSHEE,-1687.9076,1003.5587,18.2656,91.3972,-1,-1);
        AddStaticVehicle2(STALLION,-1704.8613,1058.0004,18.4810,182.3475,-1,-1);
        AddStaticVehicle2(HUNTLEY,-1702.2262,1028.7677,18.5187,270.2923,-1,-1);
        AddStaticVehicle2(COMET,-1735.9534,1016.0621,18.3580,268.5771,-1,-1);
        AddStaticVehicle2(SUV2,-2782.3508,442.1533,5.5383,57.1401,-1,-1);
        AddStaticVehicle2(SUV2,-2836.3665,865.6495,44.1470,268.7662,-1,-1);
        AddStaticVehicle2(CHEETAH,-2899.3823,1112.4786,27.3954,268.9744,-1,-1);
        AddStaticVehicle2(SALOON2,-2654.5662,615.2198,15.2873,0.1598,-1,-1);
        AddStaticVehicle2(AMBULANCE,-2618.7363,627.2617,15.6024,179.6464,-1,-1);
        AddStaticVehicle2(SALOON1,-1968.8031,-400.9335,35.1227,88.2282,-1,-1);
        AddStaticVehicle2(SALOON2,-1904.3373,-599.6174,24.4277,344.2378,-1,-1);
        AddStaticVehicle2(LOW2,-1639.3912,-567.4948,13.9482,80.1914,-1,-1);
        AddStaticVehicle2(LOW2,-1405.5500,-309.2615,13.9504,174.9827,-1,-1);
        AddStaticVehicle2(LOW2,-2132.1143,160.2086,35.1341,270.0023,-1,-1);
        AddStaticVehicle2(SUV2,-2151.4924,428.9210,35.1902,176.6156,-1,-1);
        AddStaticVehicle2(SUV2,-2304.8279,360.0154,35.2835,201.6184,-1,-1);
        AddStaticVehicle2(BIKEFAST,-1696.7413,977.0867,17.1574,7.0263,-1,-1);
        AddStaticVehicle2(BANSHEE,-2641.7395,1333.0645,6.8700,356.7557,-1,-1);
        AddStaticVehicle2(CADDY,-2650.6292,-280.5106,7.0874,132.0127,-1,-1);
        AddStaticVehicle2(SALOON4,-1409.6693,456.0711,7.0672,3.2988,-1,-1);
        AddStaticVehicle2(PHOENIX,-2617.2964,1349.0765,7.0217,358.1852,-1,-1); //
        AddStaticVehicle2(LOW2,-2129.8242,288.0418,34.9864,269.9582,-1,-1); //
        AddStaticVehicle2(COPBIKE,-1628.6875,652.5107,6.9568,0.9097,-1,-1); //
        AddStaticVehicle2(COPBIKE,-1616.7957,652.5980,6.9551,0.6199,-1,-1); //
        AddStaticVehicle2(COPBIKE,-1594.2644,672.5858,6.9564,176.7420,-1,-1); //
        AddStaticVehicle2(COPBIKE,-1593.5823,652.3891,6.9567,1.3142,0,1); //
        AddStaticVehicle2(COPCAR,-1611.9730,673.5499,6.9567,181.6088,0,1); //

		AddStaticVehicle2(SUV3,-2553.0054,626.6677,27.6950,358.6974,-1,-1); // suv
		AddStaticVehicle2(BIKESLOW,-2242.9187,765.5427,49.3059,1.6011,-1,-1); // bikeslow
		AddStaticVehicle2(GOKART,-1965.3051,720.0149,45.3278,268.9010,-1,-1); // gokart
		AddStaticVehicle2(BIKESLOW,-1787.6517,745.9218,36.2055,272.1465,-1,-1); // bikeslow

		AddStaticVehicle2(COMET,-2391.2390,1125.9204,55.8569,339.7648,-1,-1); // conv
		AddStaticVehicle2(SUV3,-2421.8684,1133.9849,55.8559,345.8843,-1,-1); // suv
		AddStaticVehicle2(BANSHEE,-2485.5100,1137.4042,55.8537,359.9205,-1,-1); // conv
		AddStaticVehicle2(BIKESLOW,-2561.9558,1146.1674,55.8537,281.0753,-1,-1); // slowbike

		// PM SPAWN POINT
		AddStaticVehicle2(CADDY,-2615.2432,-296.0932,22.3635,44.6924,34,1);
		AddStaticVehicle2(CADDY,-2622.9700,-310.6605,22.1746,14.7554,34,1);
		AddStaticVehicle2(CADDY,-2623.6943,-301.5168,21.9019,4.1876,34,1);
		AddStaticVehicle2(FBIRANGER,-2696.1272,-282.0655,6.6658,315.9437,0,0);
		AddStaticVehicle2(SALOON4,-2688.7402,-274.1584,6.9215,315.4178,0,0); // washington
		AddStaticVehicle2(FBIRANGER,-2679.0486,-264.3250,6.8715,315.4175,0,0);
		AddStaticVehicle2(CADDY,-2617.6021,-300.3896,22.2979,65.0813,34,1); // another caddy
		AddStaticVehicle2(NEWSVAN,-2682.7249,-251.1302,6.5105,319.0648,-1,-1); // newsvan
		AddStaticVehicle2(NEWSVAN,-2708.5098,-277.6510,6.7756,316.4557,-1,-1); // newsvan
		AddStaticVehicle2(BIKEBIG,-2709.3982,-259.5328,6.6492,353.2961,-1,-1); // bikebig

		AddStaticVehicle2(COPTANK,-1639.3496,678.0804,-5.5212,270.5469,0,1); // swat tank1
		AddStaticVehicle2(COPTANK,-1639.0546,670.0349,-5.5225,270.1779,0,1); // swat tank 2
		AddStaticVehicle2(COPCAR,-1612.4198,691.3272,-5.5208,178.9291,0,1); // cop car
		AddStaticVehicle2(COPCAR,-1572.7882,726.3871,-5.5206,89.3208,0,1); // cop car
		AddStaticVehicle2(COPCAR,-1588.2332,749.4512,-5.5218,359.9219,0,1); // cop car
		AddStaticVehicle2(COPRANGER,-1612.4628,749.3665,-5.5211,178.7688,0,1); // cop 4x4
		AddStaticVehicle2(COPRANGER,-1612.2714,733.6174,-5.5221,359.8494,0,1); // cop 4x4
		AddStaticVehicle2(COPRANGER,-1616.9042,733.5754,-5.5214,1.2638,0,1); // cop 4x4
		AddStaticVehicle2(COPBIKE,-1574.5774,748.6456,-5.5200,142.5166,0,1); // cop bike
		AddStaticVehicle2(COPSWAT,-1637.4391,662.2834,6.9071,270.4799,0,1); // swat van
		AddStaticVehicle2(COPSWAT,-1637.2936,672.0524,6.9071,273.6113,0,1); // swat van
		AddStaticVehicle2(COPSWAT,-1637.9066,658.2620,6.9066,267.4762,0,1); // swat van
		AddStaticVehicle2(COPRANGER,-1588.5615,673.4885,6.9084,178.4371,0,1); // police 4x4

		// near pm start
        AddStaticVehicle2(HOVERCRAFT,-2952.4602,495.9247,1.9517,0.4375,-1,-1);
        AddStaticVehicle2(BOATFAST,-2970.6746,497.2838,1.3557,4.0073,-1,1);

        AddStaticVehicle2(YACHT,   -1476.5386,700.1740,1.1248,355.3123,-1,-1);
		AddStaticVehicle2(YACHT,-1572.3998,1370.7104,0.2841,252.0055,79,74); // yacht
		AddStaticVehicle2(YACHT,-1503.8254,1300.6124,0.6895,273.7650,79,74); // yacht

        AddStaticVehicle2(BOATFAST,-1571.3143,1263.2914,1.2879,269.1020,-1,-1);
        AddStaticVehicle2(BOATFAST,-1720.0265,1436.3821,1.4272,3.3108,-1,-1);
		AddStaticVehicle2(BOATFAST,-1464.9600,1023.3726,-0.6029,270.2424,1,5);

        AddStaticVehicle2(HOVERCRAFT,-2441.2109,1414.1995,1.4429,86.1079,-1,-1);
        AddStaticVehicle2(HOVERCRAFT,-1835.1257,1425.9342,1.5476,184.1130,-1,-1);

		AddStaticVehicle2(HOVERCRAFT,-2587.4680,1444.1047,0.3254,4.6667,79,74); // vortex
		AddStaticVehicle2(HOVERCRAFT,-1891.6384,1396.1394,0.7461,271.1545,79,74); // another vortex


		// near psychos
		AddStaticVehicle2(GOKART,-2451.3318,556.0181,22.6719,267.4335,-1,-1); // gokart
		AddStaticVehicle2(HOVERCRAFT,-2377.0471,649.9578,35.3007,359.7591,-1,-1); // vortex


		//terrorist spawn point
		AddStaticVehicle2(VAN,-2065.8750,1346.3484,7.2452,179.4297,-1,-1); // van
		AddStaticVehicle2(TOWTRUCK,-2094.1772,1345.9810,7.3105,88.1415,-1,-1); // van
		AddStaticVehicle2(SMALLVAN,-2063.2434,1398.5623,7.2271,178.7124,-1,-1); // smallvan
		AddStaticVehicle2(BIKESLOW,-2073.9851,1374.2258,7.2329,172.5076,-1,-1); // bikeslow
		AddStaticVehicle2(BIKEFAST,-2079.8274,1371.4542,7.2302,180.3891,-1,-1); // bikeslow
		AddStaticVehicle2(BIKEBIG,-2088.0586,1371.1990,7.2287,179.4680,-1,-1); // bikebig
		AddStaticVehicle2(BIKEBIG,-2087.9033,1387.9725,7.2257,179.4678,-1,-1); // bikebig
		AddStaticVehicle2(HUNTLEY,-2087.6611,1413.9387,7.2278,179.4678,-1,-1); // huntley
		AddStaticVehicle2(HUNTLEY,-2082.3779,1414.4132,7.2291,180.7033,-1,-1); // huntley
		AddStaticVehicle2(BIKESLOW,-2068.6760,1369.5734,6.6863,178.4523,-1,-1); // fast bike
		AddStaticVehicle2(BIKESLOW,-2068.3259,1382.5973,6.6855,178.4524,-1,-1); // slowbike
		AddStaticVehicle2(BIKEBIG,-2084.0664,1371.8256,6.6868,181.7741,-1,-1); // bigbike
		AddStaticVehicle2(BIKEBIG,-2088.7297,1362.1067,6.6868,181.7492,-1,-1); // bigbike
		AddStaticVehicle2(BIKESLOW,-2073.7957,1384.0508,6.6907,177.6445,79,1); //
		AddStaticVehicle2(BIKESLOW,-2073.4456,1392.5313,6.6856,177.6445,79,1); //
		AddStaticVehicle2(HUNTLEY,-2077.5728,1413.7444,7.0339,179.4285,53,53); //
		AddStaticVehicle2(BIKEBIG,-2084.2048,1361.7908,6.6211,203.1954,32,1); //

		AddStaticVehicle2(BOATFAST,-1782.7452,1550.7842,0.2427,298.0088,-1,-1); // fastboat
		AddStaticVehicle2(BOATFAST,-1617.7899,1433.6151,0.1265,241.6499,-1,-1); // fastboat
		AddStaticVehicle2(BOATFAST,-1476.5730,1201.7140,0.3884,187.7503,-1,-1); // fastboat
		AddStaticVehicle2(HOVERCRAFT,-2571.3198,1386.4089,6.5449,351.2159,-1,-1); // new hover
		AddStaticVehicle2(HOVERCRAFT,-2467.5503,1388.8195,6.5475,271.6523,-1,-1); // hover
        AddStaticVehicle2(HOVERCRAFT,-2335.7229,1397.4176,7.0563,249.1124,-1,-1); // hover

		AddStaticVehicle2(HOVERCRAFT,-2121.6143,1351.7623,6.7545,88.0823,75,1); // hover
		AddStaticVehicle2(HOVERCRAFT,-2217.0090,1351.9673,6.7745,88.6992,75,1); // hover
		AddStaticVehicle2(HOVERCRAFT,-2192.4121,1351.1522,6.7707,284.6617,75,1); // hover
		AddStaticVehicle2(BOATFAST,-1476.0929,786.0922,-0.6458,182.0836,1,5); // boatfast
		AddStaticVehicle2(BOATFAST,-1427.3295,1502.5604,-0.8800,89.7601,1,5); // containership boat
		AddStaticVehicle2(BOATFAST,-1847.7698,1423.7585,-0.5177,359.4388,1,5); // fastboat alcove

		for (new i=0 ; i<vehicle_counter ; i++) {
		    if (vehicle_modelid[i]==BIKEFAST || vehicle_modelid[i]==BIKESLOW) {
		        cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			}
		}


		game_boundary_max_x = -910;
		game_boundary_min_x = -3000;
		game_boundary_max_y = 1750;
		game_boundary_min_y = -700;



		for (new Float:y=0 ; y<16 ; y++) {
		    for (new x=0 ; x<16 ; x++) {
		    	AddTeamSpawn(TEAM_TRAMP, -2797+(2797-1710)/16.0*x, -220+(1279+220)/16.0*y, 333, 0.0);
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
		
		
		class_tramp1 = AddPlayerClass2(230,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_tramp2 = AddPlayerClass2(212,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_SAWEDOFF,300);
		class_tramp3 = AddPlayerClass2(200,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);
		class_tramp4 = AddPlayerClass2(137,WEAPON_PARACHUTE,-1,WEAPON_AK47,300,WEAPON_FLAMETHROWER,300);

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



	} else if (map==2) {



		AddStaticVehicle2(COPRANGER,-373.4946,2229.2224,42.6745,103.8068,-1,-1); // Cop
		AddStaticVehicle2(COPRANGER,-372.0769,2223.4812,42.6760,103.3467,-1,-1); // Cop
		AddStaticVehicle2(COPRANGER,-370.6270,2217.8696,42.6781,102.8179,-1,-1); // Cop
		AddStaticVehicle2(COPRANGER,-369.5875,2212.5266,42.6767,104.3322,-1,-1); // Cop
		AddStaticVehicle2(GLENSHIT,-392.1177,2234.2717,42.1881,286.7657,-1,-1); // Car
		AddStaticVehicle2(SADLSHIT,-393.1129,2239.7837,42.2510,286.0437,-1,-1); // Car
		AddStaticVehicle2(GLENSHIT,-378.9341,2252.8047,42.2196,103.4142,-1,-1); // Vehicle

		AddStaticVehicle2(QUAD,-333.4667,1513.3398,74.8400,179.6975,-1,-1); // Terrorororor
		AddStaticVehicle2(CAMPER,-315.4058,1515.2224,75.7326,179.3794,-1,-1); // Terror RV
		AddStaticVehicle2(MOUNTAINBIKE,-320.9330,1513.6566,74.9672,184.2828,-1,-1); // Terror
		AddStaticVehicle2(MOUNTAINBIKE,-324.0143,1514.1841,74.9702,192.7250,-1,-1); // Terror Bike
		AddStaticVehicle2(BANDITO,-327.4584,1514.8817,75.2251,177.9374,-1,-1); // Terror
		AddStaticVehicle2(BANDITO,-330.8202,1515.2344,75.2245,178.2083,-1,-1); // Terror
		AddStaticVehicle2(BANDITO,-287.6006,1519.2936,75.2256,223.3827,-1,-1); // Terr or
		AddStaticVehicle2(SANCHEZ,-306.1739,1535.9799,75.2306,276.8695,-1,-1); // Dirtyt
		AddStaticVehicle2(SANCHEZ,-313.9410,1538.3921,75.2314,182.0586,-1,-1); // No
		AddStaticVehicle2(SANCHEZ,-344.7124,1521.8835,75.0285,280.9128,-1,-1); // Molll
		AddStaticVehicle2(SANCHEZ,-345.1044,1519.1165,75.0279,288.5814,-1,-1); // Bike
		
		AddStaticVehicle2(RUSTLER,291.1415,2541.4473,17.5427,179.1035,-1,-1); // Muster
		AddStaticVehicle2(RUSTLER,325.2618,2538.6426,17.5348,175.0817,-1,-1); // Muster
		AddStaticVehicle2(RUSTLER,344.1243,2541,17.4814,180,-1,-1); // rustler1
		AddStaticVehicle2(RUSTLER,358.3794,2541,17.3897,180,-1,-1); // rustler2
		AddStaticVehicle2(RUSTLER,372.5980,2541,17.2544,180,-1,-1); // rustler3
		AddStaticVehicle2(RUSTLER,425,2484,17.1988,90,-1,-1); // rustler1 runway east
		AddStaticVehicle2(RUSTLER,425,2500,17.2057,90,-1,-1); // rustler2 runway east
		AddStaticVehicle2(RUSTLER,425,2516,17.1910,90,-1,-1); // rustler3 runway east
		AddStaticVehicle2(RUSTLER,-68,2484,17.1994,270,-1,-1); // rustler1 runway west
		AddStaticVehicle2(RUSTLER,-68,2500,17.1977,270,-1,-1); // rustler2 runway west
		AddStaticVehicle2(RUSTLER,-68,2516,17.1944,270,-1,-1); // rustler3 runway west
		AddStaticVehicle2(GLENSHIT,343.1581,2468.4836,16.2259,349.2015,-1,-1); // Glendale
		
		AddStaticVehicle2(478,512.5175,2375.1328,30.2694,142.5418,-1,-1); // Truck
		AddStaticVehicle2(TAHOMA,528.4246,2364.9326,30.2506,147.6309,-1,-1); // Car
		AddStaticVehicle2(SADLSHIT,-97.8073,1340.7292,10.1658,6.0542,-1,-1); // Sadde
		AddStaticVehicle2(SADLSHIT,-91.7327,1341.2476,10.3388,10.7399,-1,-1); // Sadler
		AddStaticVehicle2(GLENSHIT,-85.6100,1340.5928,10.4864,7.9968,-1,-1); // Vsel
		AddStaticVehicle2(GLENSHIT,-79.2864,1341.6671,10.7181,9.1289,-1,-1); // Vehicle
		AddStaticVehicle2(GLENSHIT,-7.1971,1366.4293,8.9140,147.0334,-1,-1); // Vehicke
		
		AddStaticVehicle2(PATRIOT,128.4070,1935.4491,19.2591,177.1867,-1,-1); // Patrio
		AddStaticVehicle2(PATRIOT,135.0211,1936.2513,19.2640,176.6158,-1,-1); // Partio
		AddStaticVehicle2(PATRIOT,141.6795,1935.5112,19.2536,178.8926,-1,-1); // Patrrr
		AddStaticVehicle2(PATRIOT,177.6861,1934.6136,18.0750,181.7777,-1,-1); // Pattt
		AddStaticVehicle2(PATRIOT,160.9952,1905.5656,18.7018,354.6314,-1,-1); // Patrrr
		AddStaticVehicle2(512,226.0780,1912.1439,17.9237,88.5602,-1,-1); // Croppy
		AddStaticVehicle2(SADLSHIT,-306.4304,1321.1613,54.0393,71.6058,-1,-1); // Vejoc
		AddStaticVehicle2(GLENSHIT,-308.1725,1313.7946,53.7000,56.4391,-1,-1); // Vee
		AddStaticVehicle2(GLENSHIT,-302.0185,1763.0840,42.4293,267.4570,-1,-1); // Car0r
		AddStaticVehicle2(SADLSHIT,-290.8565,1757.5781,42.5049,93.9924,-1,-1);
		AddStaticVehicle2(SADLSHIT,-302.7458,1749.1565,42.4293,269.6189,-1,-1);

		AddStaticVehicle2(SADLSHIT,265.3379,1385.5450,10.7759,355.3102,-1,-1); // Vehicle Sadlshit
		AddStaticVehicle2(SADLSHIT,278.3898,1394.5453,10.7750,3.6282,-1,-1); // Sadlshit

		AddStaticVehicle2(GLENSHIT,-37.5037,2343.7458,23.9176,186.5129,-1,-1); // Glenshit
		AddStaticVehicle2(GLENSHIT,-29.4181,2342.6941,23.9203,179.2358,-1,-1); // Glenshit

		AddStaticVehicle2(MOUNTAINBIKE,-436.9597,1528.6982,35.0200,78.4875,-1,-1); // Mountain Bike
		AddStaticVehicle2(MOUNTAINBIKE,-437.1234,1523.3080,34.8416,89.7792,-1,-1); // Mountain Bike
		AddStaticVehicle2(SADLSHIT,-461.2624,1840.4432,79.8521,5.2061,-1,-1); // Sadlshit
		AddStaticVehicle2(MONSTER,-650.4379,2064.0884,60.0519,254.1844,-1,-1); // Monster Truck
		AddStaticVehicle2(QUAD,-639.3491,2044.7014,60.0518,306.4698,-1,-1); // Quad
		AddStaticVehicle2(QUAD,-651.7520,2049.6462,60.0528,318.2614,-1,-1); // Quad
		AddStaticVehicle2(GLENSHIT,-56.6189,2071.8889,17.3831,272.0660,-1,-1); // Glenshit
		AddStaticVehicle2(TOWTRUCK,-42.8314,2072.4724,17.3776,272.8621,-1,-1); // Towtruck
		AddStaticVehicle2(COACH,139.1421,2402.3652,16.3514,183.3682,-1,-1); // Bus
		AddStaticVehicle2(SADLSHIT,546.0180,2273.2808,34.6324,163.6258,-1,-1); // Sadlshit
		AddStaticVehicle2(RANCHER,613.8723,1695.1948,6.7766,126.8590,-1,-1); // Rancher
		AddStaticVehicle2(SADLSHIT,579.9173,1694.9648,6.7756,125.5006,-1,-1); // Sadlshit
		AddStaticVehicle2(RANCHER,441.1465,1452.1217,6.6511,180.1733,-1,-1); // Rancher
		AddStaticVehicle2(SANCHEZ,419.9347,1396.7889,7.3782,275.6075,-1,-1); // Sanchez
		AddStaticVehicle2(BANDITO,158.9563,1289.6885,20.7672,119.3067,-1,-1); // Bandito
		AddStaticVehicle2(CAMPER,-28.1202,1392.3749,8.9534,115.3400,-1,-1); // Camper
		AddStaticVehicle2(GLENSHIT,-105.6378,1657.1228,18.7260,1.5408,-1,-1); // Glenshit
		AddStaticVehicle2(TOWTRUCK,-103.1216,1680.6563,19.3278,353.2779,-1,-1); // Towtruck
		AddStaticVehicle2(SANCHEZ,-307.9980,2278.7800,69.6654,118.5181,-1,-1); // Sanchez
		AddStaticVehicle2(COACH,-511.9582,2342.5620,68.8873,42.4001,-1,-1); // Bus
		AddStaticVehicle2(TAHOMA,-653.6816,2453.1689,108.5600,235.7774,-1,-1); // Tahoma
		AddStaticVehicle2(CAMPER,-520.7234,2559.4729,53.1944,273.0922,-1,-1); // Camper
		AddStaticVehicle2(SADLSHIT,-270.1139,2528.6023,33.6351,180.0996,-1,-1); // Sadlshit
		AddStaticVehicle2(MOUNTAINBIKE,9.6867,2566.6843,16.2201,275.5639,-1,-1); // Mountain Bike
		AddStaticVehicle2(SUPERGT,405.6807,2451.9543,16.2418,0.2241,-1,-1); // Super GT
		AddStaticVehicle2(GLENSHIT,-137.3023,1495.3257,20.8097,185.5890,-1,-1); // Glenshit
		AddStaticVehicle2(SADLSHIT,307.2332,2224.7744,34.5744,279.0383,-1,-1); // Sadlshit
		AddStaticVehicle2(PACKER,159.0350,1794.4323,17.6331,267.3149,-1,-1); // Packer
		AddStaticVehicle2(PACKER,217.6115,1794.5244,17.6330,90.9282,-1,-1); // Packer
		AddStaticVehicle2(TAHOMA,185.3955,1779.2295,17.6334,38.4860,0,0); // Tahoma

		AddStaticVehicle2(CAMPER,-305.7203,1582.0869,75.7340,314.6775,-1,-1); // Camper
		AddStaticVehicle2(BANDITO,-298.0320,1577.2061,75.2261,314.9534,-1,-1); // Bandito
		AddStaticVehicle2(BANDITO,-294.2787,1570.9336,75.2273,315.6023,-1,-1); // Bandito
		AddStaticVehicle2(SANCHEZ,-289.3582,1565.8213,75.2249,311.6503,-1,-1); // Sancher
		AddStaticVehicle2(SANCHEZ,-283.7643,1561.8212,75.2252,311.5244,-1,-1); // Sanchez

		AddStaticVehicle2(SADLSHIT,-169.6647,2530.4236,26.4566,172.2570,-1,-1); // Sadlshit
		AddStaticVehicle2(SADLSHIT,-179.5176,2523.3569,26.8471,270.6300,-1,-1); // Sadlshit
		AddStaticVehicle2(SADLSHIT,-95.7158,1578.8989,18.4041,316.8269,-1,-1); // Sadlshit
		AddStaticVehicle2(SADLSHIT,-88.9240,1587.0151,19.6654,148.3202,-1,-1); // Sadlshit
		AddStaticVehicle2(QUAD,159.6595,1503.9028,9.9643,260.0487,-1,-1); // Quad
		AddStaticVehicle2(BIKEFAST,-326.1484,2002.7172,131.2548,322.1792,-1,-1); // NRG-500
		AddStaticVehicle2(SANCHEZ,-323.8958,1994.4108,131.0051,267.4394,-1,-1); // Sanchez (new new)

		AddWeaponPickup(PICKUP_SHOVEL,WEAPON_SHOVEL,-1,-140.2877,1496.0981,21.3760,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_SHOVEL,WEAPON_SHOVEL,-1,-137.3183,1500.3707,20.3800,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_CHAINSAW,WEAPON_CHAINSAW,-1,-102.5674,1368.8951,10.2734,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_DILDO,WEAPON_DILDO,-1,540.9449,2358.8433,30.9870,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_FLOWER,WEAPON_FLOWER,-1,553.3507,2274.7832,34.4340,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_POOLSTICK,WEAPON_POOLSTICK,-1,23.6597,1363.0038,9.1719,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_BAT,WEAPON_BAT,-1,6.1200,1382.3802,9.1781,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_DILDO2,WEAPON_DILDO2,-1,-21.2242,1390.1115,9.1719,WP_NO_RESPAWN);
		AddWeaponPickup(PICKUP_CHAINSAW,WEAPON_CHAINSAW,-1,-171.3368,2526.1011,26.2891,WP_NO_RESPAWN); // Chainsaw
		AddWeaponPickup(PICKUP_KATANA,WEAPON_KATANA,-1,-597.6247,2022.2175,60.3818,WP_NO_RESPAWN);
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

		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,150,102.0130,1900.9927,33.8984); // Uzis
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,150,102.0130,1900.9927,33.8984); // Uzis
		AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,300,-329.5251,1860.5280,44.5668,WP_RESPAWN,WP_SYNCED); // MP5
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,-220.5080,1801.8065,103.7095,WP_RESPAWN,WP_SYNCED); // SMG
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,-98.1209,2270.3389,122.4016,WP_NO_RESPAWN,WP_SYNCED); // Flamethrower (pm spawn?)
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-83.6319,1525.7402,17.2205); // Dessert Eagle on top of lonely shack
		AddWeaponPickup(PICKUP_MP5,WEAPON_MP5,300,-127.1452,2258.0967,28.3973,WP_RESPAWN); // MP5 (campfire)
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,278.0169,2023.8375,17.6406,WP_RESPAWN,WP_SYNCED); // SMG
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,246.4423,1411.0696,23.3703,WP_RESPAWN,WP_SYNCED); // Flamethrower
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,246.7062,1385.9924,23.3750,WP_RESPAWN,WP_SYNCED); // Flamethrower
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,300,215.0238,1468.0563,23.7344,WP_RESPAWN,WP_SYNCED); // Flamethrower
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,487.3661,1535.1282,1.0032,WP_RESPAWN,WP_SYNCED); // DesertEagle
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-480.4825,2180.6299,41.8672,WP_RESPAWN,WP_SYNCED);
		AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,60,136.8696,1875.2312,22.4375,WP_RESPAWN,WP_SYNCED);
		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,150,-336.0703,1293.3424,53.6643,WP_RESPAWN,WP_SYNCED);
		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,150,-653.5152,2040.8524,60.3906,WP_RESPAWN,WP_SYNCED);
		AddWeaponPickup(PICKUP_SILENCED,WEAPON_SILENCED,50,-127.5074,1926.5990,15.3981,WP_RESPAWN,WP_SYNCED);
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,-35.9747,2349.6221,24.3026,WP_RESPAWN,WP_SYNCED); // Tec-9 (new)
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,100,-149.8675,1596.4629,17.4454,WP_RESPAWN,WP_SYNCED); // Micro Uzi
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,-152.0274,1320.9338,13.8111,WP_RESPAWN,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,100,-249.2702,1314.6149,36.9502,WP_RESPAWN,WP_SYNCED); // Micro Uzi
		AddWeaponPickup(PICKUP_SILENCED,WEAPON_SILENCED,50,1.5069,1517.4351,12.7500,WP_RESPAWN,WP_SYNCED); // Silenced Pistol
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,161.8201,1504.1044,10.5859,WP_RESPAWN,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,392.8684,1430.7505,7.7917,WP_RESPAWN,WP_SYNCED); // Tec 9
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,548.5426,2273.8989,34.7579,WP_RESPAWN,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_SHOTGUN,WEAPON_SHOTGUN,60,399.8705,2429.5833,16.4885,WP_RESPAWN,WP_SYNCED); // Shotgun (regular)
		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,150,113.2080,2406.0139,17.3938,WP_RESPAWN,WP_SYNCED); // AK 47
		AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,60,414.3580,2533.0876,23.3131,WP_RESPAWN,WP_SYNCED); // Combat Shotgun
		AddWeaponPickup(PICKUP_FLAMETHROWER,WEAPON_FLAMETHROWER,6660,-338.3566,1985.2874,131.4921,WP_NO_RESPAWN,WP_SYNCED); // Flamethrower (lots of ammo)
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,-258.8873,2042.0297,48.1047,WP_RESPAWN,WP_SYNCED); // Tec-9
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,100,-149.3102,1989.7598,30.4239,WP_RESPAWN,WP_SYNCED); // Micro Uzi


		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,60,-285.3163,1262.9303,24.8750,WP_RESPAWN,WP_SYNCED); // Sawnoff
		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,60,-56.4050,1294.1333,12.1404,WP_RESPAWN,WP_SYNCED); // Sawn-off
		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF,60,541.1504,2361.0249,33.9793,WP_RESPAWN,WP_SYNCED); // Sawnoff
		AddWeaponPickup(PICKUP_TEC9,WEAPON_TEC9,100,605.8316,2147.7361,41.3062,WP_RESPAWN,WP_SYNCED); // Tec-9
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,492.0047,1719.7748,11.2410,WP_RESPAWN,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_DEAGLE,WEAPON_DEAGLE,50,165.1940,1283.6234,20.7728,WP_RESPAWN,WP_SYNCED); // Desert Eagle
		AddWeaponPickup(PICKUP_SAWEDOFF,WEAPON_SAWEDOFF, 60,-343.2186,1546.4620,80.4334); // SAWN OFF
		AddWeaponPickup(PICKUP_SHOTGSPA,WEAPON_SHOTGSPA,60,-336.2724,1595.2528,95.5666); // Combat Shotgun
		AddWeaponPickup(PICKUP_UZI,WEAPON_UZI,100,-346.5265,1584.6504,95.5346); // Uzi
		AddWeaponPickup(PICKUP_AK47,WEAPON_AK47,150,-357.0659,1594.8313,95.5090); // AK-47

		AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,300,-185.0072,1886.8285,115.7031,WP_NO_RESPAWN); // Minigun
		AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,300,-371.6570,2128.8850,133.1797,WP_NO_RESPAWN); // Minigun (new set)
		AddWeaponPickup(PICKUP_MINIGUN,WEAPON_MINIGUN,10000,-347.2831,1600.8020,165.7395,WP_NO_RESPAWN,WP_SYNCED); // Minigun


		AddStaticPickup(PICKUP_PARACHUTE,2,-86.2668,2267.6125,124.8475); // Parachute
		AddStaticPickup(PICKUP_ARMOR,2,-361.4214,1595.8302,76.4161); // Armor
		AddStaticPickup(PICKUP_ARMOR,2,-504.9502,2027.8844,43.7017); // Armour
		AddStaticPickup(PICKUP_PARACHUTE,2,-352.3621,1601.4336,164.5686); // Parachute Maybe

		for (new i=0 ; i<vehicle_counter ; i++) {
	        cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			if (vehicle_modelid[i]==RUSTLER) {
			    cant_drive_vehicle[TEAM_COP][i] = 1;
			    cant_drive_vehicle[TEAM_TRAMP][i] = 1;
			}
			if (vehicle_modelid[i]==BIKEFAST) {
			    cant_drive_vehicle[TEAM_COP][i] = 1;
			    cant_drive_vehicle[TEAM_TRAMP][i] = 1;
			    cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			    cant_drive_vehicle[TEAM_BODYGUARD][i] = 1;
			}
			if (vehicle_modelid[i]==AT400) {
			    cant_drive_vehicle[TEAM_COP][i] = 1;
			    cant_drive_vehicle[TEAM_TRAMP][i] = 1;
			    cant_drive_vehicle[TEAM_PRIMEMINISTER][i] = 1;
			    cant_drive_vehicle[TEAM_BODYGUARD][i] = 1;
			    cant_drive_vehicle[TEAM_TERRORIST][i] = 1;
			}
		}


		for (new i=0 ; i<pickup_counter ; i++) {
	        pickup_unauthorised[TEAM_PRIMEMINISTER][i] = 1;
		}

		game_boundary_max_x = 639;
		game_boundary_min_x = -661;
		game_boundary_max_y = 2567;
		game_boundary_min_y = 1230;


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


		AddStaticVehicle2(AT400,-158.2105,2269.3345,400,304.3342,-1,-1); // crashed plane

		AddTeamSpawn(TEAM_PRIMEMINISTER,-158.2105,2269.3345,430,304.3342);
		AddTeamLineSpawn(TEAM_BODYGUARD, 124.5988,1916.5383,18.9541, 165.6270,1917.3433,18.4533);
		AddTeamLineSpawn(TEAM_COP, -388.2652, 2253.8987, 42.0938, -376.3261, 2202.0403, 42.0938);
		AddTeamLineSpawn(TEAM_TERRORIST, -345.4248,1530.7903,75.3570, -294.2874,1531.7491,75.3594);
		AddTeamLineSpawn(TEAM_TRAMP, -82.2612,1383.4824,10.2407, -77.5519,1347.3890,10.8599);


		intel_north = game_boundary_min_y + 0.66 * (game_boundary_max_y-game_boundary_min_y);
		intel_south = game_boundary_min_y + 0.33 * (game_boundary_max_y-game_boundary_min_y);
		intel_east = game_boundary_min_x + 0.66 * (game_boundary_max_x-game_boundary_min_x);
		intel_west = game_boundary_min_x + 0.33 * (game_boundary_max_x-game_boundary_min_x);


		wardrobe_interior = 0;
		wardrobe_player_x = -346.3293;
		wardrobe_player_y = 1626.5712;
		wardrobe_player_z = 136.3119;
		wardrobe_player_orientation = 0.0;
		wardrobe_camera_x = wardrobe_player_x+5;
		wardrobe_camera_y = wardrobe_player_y+3;
		wardrobe_camera_z = wardrobe_player_z+5;


		class_tramp1 = AddPlayerClass2(230,WEAPON_DEAGLE,100,WEAPON_DILDO,-1,0,0);
		class_tramp2 = AddPlayerClass2(212,WEAPON_DEAGLE,100,WEAPON_DILDO,-1,0,0);
		class_tramp3 = AddPlayerClass2(200,WEAPON_DEAGLE,100,WEAPON_DILDO,-1,0,0);
		class_tramp4 = AddPlayerClass2(137,WEAPON_DEAGLE,100,WEAPON_DILDO,-1,0,0);

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


	}


	printf("\nNumber of vehicles: %d\n",vehicle_counter);
	
	new car_modelid_used[1000];
	
	for (new i=0 ; i<MAX_VEHICLES ; i++) {
	    car_modelid_used[vehicle_modelid[i]] = 1;
	}
	
	new total_modelids_used = 0;
	
	for (new i=0 ; i<sizeof car_modelid_used ; i++) {
	    if (car_modelid_used[i]) total_modelids_used++;
	}
	
	printf("\nNumber of vehicles types: %d\n",total_modelids_used);

	class_teams[class_tramp1] = TEAM_TRAMP;
	class_teams[class_tramp2] = TEAM_TRAMP;
	class_teams[class_tramp3] = TEAM_TRAMP;
	class_teams[class_tramp4] = TEAM_TRAMP;

	class_teams[class_terrorist1] = TEAM_TERRORIST;
	class_teams[class_terrorist2] = TEAM_TERRORIST;
	class_teams[class_terrorist3] = TEAM_TERRORIST;
	class_teams[class_terrorist4] = TEAM_TERRORIST;
	class_teams[class_terrorist5] = TEAM_TERRORIST;
	class_teams[class_terrorist6] = TEAM_TERRORIST;
	class_teams[class_terrorist7] = TEAM_TERRORIST;
	class_teams[class_terrorist_medic] = TEAM_TERRORIST;

	class_teams[class_primeminister] = TEAM_PRIMEMINISTER;
	class_teams[class_bodyguard1] = TEAM_BODYGUARD;
	class_teams[class_bodyguard2] = TEAM_BODYGUARD;
	class_teams[class_bodyguard3] = TEAM_BODYGUARD;
	class_teams[class_bodyguard4] = TEAM_BODYGUARD;
	class_teams[class_bodyguard5] = TEAM_BODYGUARD;
	class_teams[class_bodyguard_medic] = TEAM_BODYGUARD;

	class_teams[class_cop1] = TEAM_COP;
	class_teams[class_cop2] = TEAM_COP;
	class_teams[class_cop3] = TEAM_COP;
	class_teams[class_cop4] = TEAM_COP;
	class_teams[class_cop5] = TEAM_COP;
	class_teams[class_cop6] = TEAM_COP;
	class_teams[class_cop7] = TEAM_COP;
	class_teams[class_cop8] = TEAM_COP;
	class_teams[class_cop9] = TEAM_COP;
	class_teams[class_cop_medic] = TEAM_COP;

	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		player_class[i] = INVALID_CLASS;
		player_map[i] = INVALID_MAP;
		for (new j=0 ; j<MAX_PICKUPS ; j++) {
	        player_pickup_when[i][j] = -1;
		}
 	}

	regular_task_timer = SetTimer("RegularTask", 100, 1);

	round_timer_counter = 0;
	round_timer = SetTimer("RoundTick", 1000, 1);

	return 1;
}




public OnPlayerConnect(playerid)
{
	player_watching[playerid] = INVALID_PLAYER_ID;
	new text[256];
	format (text, sizeof text, "Welcome to \"%s\".", mode_name);
	SendClientMessage(playerid,COLOUR_IMPORTANT,text);
	SendClientMessage(playerid,COLOUR_IMPORTANT,"Select a character class, and have fun!");
	SendClientMessage(playerid,COLOUR_IMPORTANT,"(New weapon pickup code)");
	SendClientMessage(playerid,COLOUR_IMPORTANT,"(New weapon pickups have saner balance)");
	SendClientMessage(playerid,COLOUR_IMPORTANT,"(More features and sync for the weapon pickups)");
	SendClientMessage(playerid,COLOUR_IMPORTANT,"(Speed measurement tools for admins)");
	SendClientMessage(playerid,COLOUR_IMPORTANT,"(Coming soon: new indoor and outdoor maps!)");
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
	player_op[playerid] = 0;
	player_map[playerid] = INVALID_MAP;
	player_speed_watch[playerid] = INVALID_PLAYER_ID;
	player_last_speed_warning[playerid] = -1;
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{

 	SetPlayerInterior(playerid, wardrobe_interior);
 	
	SetPlayerPos(playerid,wardrobe_player_x,wardrobe_player_y,wardrobe_player_z);
	SetPlayerFacingAngle(playerid, wardrobe_player_orientation);
	SetPlayerCameraPos(playerid,wardrobe_camera_x,wardrobe_camera_y,wardrobe_camera_z);
	SetPlayerCameraLookAt(playerid,wardrobe_player_x,wardrobe_player_y,wardrobe_player_z);


	player_class_requested[playerid] = classid;

	player_class[playerid] = INVALID_CLASS;

	if (VetoPlayerClass(classid, INVALID_CLASS) == classid) {

		new name[80];
		GetTextFromTeam(name, class_teams[classid]);

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
		GetTextFromTeam(name, class_teams[classid]);

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
				new team = class_teams[player_class[i]];
			    num_players[team] += 1;
	        	if (team!=TEAM_PRIMEMINISTER && team!=TEAM_TRAMP)
					team_players_count++;
			}
		}
	}

	if (proposedclassid!=INVALID_CLASS) {
		new team = class_teams[proposedclassid];
	    num_players[team] += 1;
       	if (team!=TEAM_PRIMEMINISTER && team!=TEAM_TRAMP)
			team_players_count++;
	}

	if (oldclassid!=INVALID_CLASS) {
		new team = class_teams[oldclassid];
	    num_players[team] -= 1;
       	if (team!=TEAM_PRIMEMINISTER && team!=TEAM_TRAMP)
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

	// tramps & pm do not affect balancedness



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
			new team = class_teams[player_class[i]];
			if (player_class[i]!=INVALID_CLASS && team!=TEAM_PRIMEMINISTER && team!=TEAM_TRAMP)
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


	if (!dualpm && (players_count<=5 || postbalancedness<=10 || postbalancedness < prebalancedness) && (!toomanybg || class_teams[classid]!=TEAM_BODYGUARD || players_count<=5)) {
		// everything ok
	    return classid;
	}
	
	// otherwise choice vetoed
	switch (class_teams[classid]) {
		case TEAM_TRAMP: {
		    // spawning as tramp always works
		    return classid;
		}
		case TEAM_TERRORIST: {
			new class_trampx = class_tramp1 + random(NUM_TRAMPS);
			return class_trampx;
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
			new class_trampx = class_tramp1 + random(NUM_TRAMPS);
			return class_trampx;
		}
	}

	printf("error: This should never happen: VetoPlayerClass\n");

	return classid;
}

public OnPlayerSpawn(playerid)
{
	if (player_class[playerid] == INVALID_CLASS) { // if "first" spawn
		new classid = player_class_requested[playerid];
		// override class if unavailable
		new veto = VetoPlayerClass(classid,player_class[playerid]);
		if (classid != veto)
			SendClientMessage(playerid,COLOUR_IMPORTANT,"The class you selected was full, picking something else...");
		SetPlayerClass(playerid,veto);
		return 1;
 	}

	SetPlayerInterior(playerid,0);
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid,POCKET_MONEY);
	SetPlayerHealth(playerid,100.0);

	TogglePlayerControllable(playerid,1);

	if (safehouse_exists)
		SetPlayerCheckpoint(playerid,safehouse_x,safehouse_y,safehouse_z,130);

	new team = class_teams[player_class[playerid]];
	new spawn = random(team_spawn_counter[team]);
	SetPlayerPos(playerid, team_spawn_x[team][spawn],
                           team_spawn_y[team][spawn],
                           team_spawn_z[team][spawn]);
	SetPlayerFacingAngle(playerid, team_spawn_a[team][spawn]);

	SetCameraBehindPlayer(playerid);
	SetPlayerWorldBounds(playerid,game_boundary_max_x,game_boundary_min_x,game_boundary_max_y,game_boundary_min_y);
	
	for (new i=0 ; i<MAX_PICKUPS ; i++) {
	    if (!pickup_synced[i] && pickup_type[i]==WP_NO_RESPAWN)
	    	player_pickup_when[playerid][i] = -1;
	}

    player_pickup_squatting[playerid] = 0;

	return 1;
}

SetPlayerClass(playerid, class)
{
	new team_name[80];
	new text[80];
	new player_name[80];
	GetPlayerName(playerid,player_name,80);

	if (player_class[playerid]!=INVALID_CLASS) {

		GetTextFromTeam(team_name,class_teams[player_class[playerid]]);

		format (text, sizeof text, "%s is nolonger %s.", player_name, team_name);
		//SendClientMessageToAll(ClassColour(player_class[playerid]),text);
	}

	player_class[playerid] = class;

	if (class==INVALID_CLASS) return;

	SetPlayerColor(playerid,ClassColour(class));

	SetSpawnInfo(playerid,0,
        class_modelid[class],
        (game_boundary_max_x-game_boundary_min_x)/2,(game_boundary_max_y-game_boundary_min_y)/2,0,0,
        class_weapon1[class],
        class_weapon1_ammo[class],
        class_weapon2[class],
        class_weapon2_ammo[class],
        class_weapon3[class],
        class_weapon3_ammo[class]);

	GetTextFromTeam(team_name,class_teams[class]);

	format (text, 80, "~y~You are %s~n~~w~/duty to get orders~n~ /reclass to change", team_name);

	format (text, 80, "%s is now %s.",player_name, team_name);
	//SendClientMessageToAll(ClassColour(class),text);

	if (IsPlayerInAnyVehicle(playerid)) {
	    // RemovePlayerFromVehicle(playerid); // doesnt fucking work
	    SetPlayerPos(playerid,0,0,0);
	}

	SpawnPlayer(playerid);
	
}

public OnPlayerDeath(playerid, killerid, reason)
{
	if (player_class[playerid]==INVALID_CLASS) {
		printf("error: a player died without a class");
		return 1;
	}
	
	if (killerid!=INVALID_PLAYER_ID && player_class[killerid]==INVALID_CLASS) {
		printf("error: a player killed without a class");
		return 1;
	}

	if (killerid!=INVALID_PLAYER_ID) {
		new score = GetPlayerScore(killerid);
		SetPlayerScore(killerid,score+1);
	}

	SendDeathMessage(killerid, playerid, reason);

	if (playerid!=killerid && killerid!=INVALID_PLAYER_ID) {
		new victimteam = class_teams[player_class[playerid]];
		new killerteam = class_teams[player_class[killerid]];
		if (MessagesGoTo(victimteam,killerteam) || MessagesGoTo(killerteam,victimteam)) {
		    PlayerTeamKilled(killerid);
		}
	}

	if (class_teams[player_class[playerid]]==TEAM_PRIMEMINISTER) {
		if (killerid==INVALID_PLAYER_ID)
			killerid = playerid;
		switch (class_teams[player_class[killerid]]) {
			case TEAM_PRIMEMINISTER:
				GameTextForAll("The Prime Minister was killed in an accident!", 3000, GAME_TEXT_STYLE_SMALL);
			case TEAM_BODYGUARD:
				GameTextForAll("The Prime Minister was killed by his treacherous bodyguards", 3000, GAME_TEXT_STYLE_SMALL);
			case TEAM_COP:
				GameTextForAll("The Prime Minister was killed by the cops", 3000, GAME_TEXT_STYLE_SMALL);
			case TEAM_TERRORIST:
				GameTextForAll("The Prime Minister was killed by the terrorists", 3000, GAME_TEXT_STYLE_SMALL);
			case TEAM_TRAMP:
				GameTextForAll("The Prime Minister was killed by a psychopath", 3000, GAME_TEXT_STYLE_SMALL);
			default: printf("error: OnPlayerDeath (invalid team)");
		}

		EveryoneViewsBody(killerid,playerid);

		SetTimer("GameModeExitFunc", 3000, 0);
	}

/*
    if(reason == 38) { //minigun death
      	Ban(killerid);
	}
*/

	return 1;
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
			SetPlayerClass(playerid,class_tramp1 + random(NUM_TRAMPS));
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
		vz = vz / d * 5 + 1;
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
		        SetPlayerPos(i,bx+vx*5,by+vy*5,bz+vz*5);
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
	//SetWorldTime(round_timer_counter/60);  // doesn't work very well
	
	// GAME TIMER MESSAGE
	if (round_timer_counter%150==0 && round_timer_counter>0 && round_timer_counter<round_time) {
		new msg[256];
		format(msg,sizeof msg,"~b~%d minutes remaining",(round_time-round_timer_counter)/60);
		GameTextForAll(msg,5000,GAME_TEXT_STYLE_SMALL);
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
	    if (IsPlayerConnected(i) && player_class[i]!= INVALID_CLASS && class_teams[player_class[i]] == TEAM_TERRORIST && CalcLocation(i)==-2)
			terrorists_in_airport_now = 1;
	}
	if (terrorists_in_airport_now!=terrorists_in_airport && ticks_since_loc_update>10) {
        terrorists_in_airport = terrorists_in_airport_now;
		if (terrorists_in_airport_now) {
			ticks_since_loc_update = 0;
			for (new i=0 ; i<MAX_PLAYERS ; i++) {
			    if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS && (
				    class_teams[player_class[i]]==TEAM_PRIMEMINISTER ||
				    class_teams[player_class[i]]==TEAM_BODYGUARD ||
				    class_teams[player_class[i]]==TEAM_COP))
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
			LocationToText(pml,text,sizeof text);
			for (new i=0 ; i<MAX_PLAYERS ; i++) {
			    if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS && (
				    class_teams[player_class[i]]==TEAM_TERRORIST ||
				    class_teams[player_class[i]]==TEAM_BODYGUARD ||
				    class_teams[player_class[i]]==TEAM_COP))
					GameTextForPlayer(i,text,3000,GAME_TEXT_STYLE_SMALL);
			}
		}
	}


	if (round_timer_counter>round_time) {
		if (pm!=INVALID_PLAYER_ID) EveryoneViewsBody(pm,pm);
		GameTextForAll("The Prime Minister survived!", 3000, GAME_TEXT_STYLE_SMALL);
		SetTimer("GameModeExitFunc", 3000, 0);
	}


	if (pm!=INVALID_PLAYER_ID && round_timer_counter % 5 == 0) { // 1% health every 5 seconds
		new Float:health;
		GetPlayerHealth(pm,health);
		if (health < 100) {
			SetPlayerHealth(pm,floatadd(health,1));
		}
	}


	for (new i=0 ; i<MAX_PLAYERS ; i++) if (IsPlayerConnected(i)) {
	    if (player_class[i]==class_bodyguard_medic ||
		    player_class[i]==class_cop_medic ||
		    player_class[i]==class_terrorist_medic) {
			new Float:health;
			GetPlayerHealth(i,health);
			health = health + 1;
			if (health > 100) health = 100;
			SetPlayerHealth(i,health);
		}
		if (round_timer_counter % 5 == 0) {
			for (new j=0 ; j<MAX_PLAYERS ; j++) if (IsPlayerConnected(j)) {
			    if (player_class[j]==class_bodyguard_medic ||
				    player_class[j]==class_cop_medic ||
				    player_class[j]==class_terrorist_medic) {
				    if (DistanceFromPlayerToPlayer(i,j)<10) {
						new Float:health;
						GetPlayerHealth(i,health);
						health = health + 1;
						if (health > 100) health = 100;
						SetPlayerHealth(i,health);
					}
				}
			}
		}
	}
	

	if (round_timer_counter == 60) {
	    GameTextForAll("~w~Don't forget to /mapvote~n~ for next round!", 4000, GAME_TEXT_STYLE_SMALL);
	}

}




public OnPlayerDisconnect(playerid)
{
	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		if (player_watching[i] == playerid) {
			player_watching[i] = INVALID_PLAYER_ID;
			SetPlayerPosAtSelf(i);
		}
	}

	if (vote_victim==playerid) {
		GameTextForAll("Poll closed, player disconnected.",3000,4);
		vote_victim = INVALID_PLAYER_ID;
		KillTimer(vote_timer);
	}
	if (vote_initiator==playerid) {
		vote_initiator = INVALID_PLAYER_ID;
	}
	
	for (new i=0 ; i<MAX_PICKUPS ; i++) {
		if (pickup_last_used_by[i]==playerid)
		    pickup_last_used_by[i] = INVALID_PLAYER_ID;
	}

	SetPlayerClass(playerid,INVALID_CLASS);
	return 1;
}



public GameModeExitFunc()
{
	MapVoteStore();
	KillTimer(round_timer);
	ResetVoteOnEndGame();
	KillTimer(regular_task_timer);
	GameModeExit();
}



public OnPlayerText(playerid,text[])
{
	if (text[0]!='!') return 1;

	if (player_class[playerid]==INVALID_CLASS) return 1;

	new myteam = class_teams[player_class[playerid]];

	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS) {
			new yourteam = class_teams[player_class[i]];
			if (MessagesGoTo(myteam,yourteam) || MessagesGoTo(yourteam,myteam)) {
				new text2[256];
				GetPlayerName(playerid,text2,sizeof text2);
				format(text2,sizeof text2, "%s: %s", text2, text);
				SendClientMessage(i,COLOUR_IMPORTANT,text2);
			}
		}
	}

	return 0;
}

MessagesGoTo(team1, team2)
{
	if (team1==team2 && team1!=TEAM_TRAMP) return 1;
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
	new cmd[256];
	new rest[256];

	new numparams = parse_command(cmdtext,cmd,rest);

	if (numparams==0) {}

 	if (streq(cmd,"/reclass")) {

		if (player_class[playerid]==INVALID_CLASS) {
			return 1;
		}

		if (class_teams[player_class[playerid]]==TEAM_PRIMEMINISTER  && !player_op[playerid]) {
			SendClientMessage(playerid,COLOUR_PERSONAL,"The prime minister must use /swapclass.");
			return 1;
		}

		new myclass = INVALID_CLASS;

		if (strlen(rest)==0) {
			SendClientMessage(playerid,COLOUR_PERSONAL,"Usage: /reclass pm|terrorist|cop|bodyguard|psycho|tmedic|bmedic|cmedic");
			return 1;
		} else if (IsNatural(rest)) {
		    myclass = strval(rest);
		    if (myclass>=NUM_CLASSES) return 1;
		} else if (streq(rest,"cop") || streq(rest,"c")) {
		    myclass = class_cop1 + random(NUM_COPS);
		} else if (streq(rest,"terrorist") || streq(rest,"t")) {
		    myclass = class_terrorist1 + random(NUM_TERRORISTS);
		} else if (streq(rest,"bodyguard") || streq(rest,"b")) {
		    myclass = class_bodyguard1 + random(NUM_BODYGUARDS);
		} else if (streq(rest,"psycho") || streq(rest,"p")) {
		    myclass = class_tramp1 + random(NUM_TRAMPS);
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

		new veto = VetoPlayerClass(myclass,player_class[playerid]);
		if (veto==myclass) {
		    SetPlayerClass(playerid,myclass);
		} else if (veto!=INVALID_CLASS) {
		    new text[80];
		    GetTextFromTeam(text,class_teams[veto]);
		    format (text,sizeof text,"vetoed to %s",text);
            SendClientMessage(playerid,COLOUR_PERSONAL,text);
		    CouldntSpawnAs(playerid,class_teams[myclass]);
		} else {
		    printf("VETO RETURNED INVALID_CLASS!\n");
		}

		return 1;
 	} else if (streq(cmd,"/swapclass")) {
		if (player_class[playerid]==INVALID_CLASS || class_teams[player_class[playerid]]!=TEAM_PRIMEMINISTER) {
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
		new id=GetId(playerid,rest);
		if (id!=INVALID_PLAYER_ID)
			InitiateVote(playerid,id);
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

		new Float:x, Float:y, Float:z;
		GetPlayerPos(id,x,y,z);

		format(text,sizeof text, "name: %s [%d] (%.2f,%.2f,%.2f) d:%.2f tk:%d", text, id, x,y,z, DistanceFromPlayerToPlayer(playerid,id),player_teamkill_freeze_counter[id]);

		if (IsPlayerInAnyVehicle(id)) {
		    format(text,sizeof text, "%s {%d:%d}", text, GetPlayerVehicleID(id), vehicle_modelid[GetPlayerVehicleID(id)]);
		}

		SendClientMessage(playerid, COLOUR_PERSONAL, text);

		return 1;

	} else if (streq(cmd,"/heal")) {
	    if (strlen(rest)==0) {
	        SendClientMessage(playerid, COLOUR_PERSONAL, "Usage: /heal <patient>   (must be next to patient)");
	        return 1;
	    }
	    
		new id=GetId(playerid,rest);
		if (player_class[id]==INVALID_CLASS) {
			SendClientMessage(playerid, COLOUR_PERSONAL, "Patient not yet selected class.");
			return 1;
		}

		PlayerHealPlayer(playerid, id);

		return 1;
	} else if (streq(cmd,"/mapvote")) {
		PlayerMapVote(playerid, rest);
		return 1;
	} else if (streq(cmd,"/getclass")) {
		new id=GetId(playerid,rest);
		if (id==INVALID_PLAYER_ID) return 1;
		if (player_class[id]==INVALID_CLASS) {
			SendClientMessage(playerid, COLOUR_PERSONAL, "Player not yet selected class.");
			return 1;
		}
		new text[256];
		format (text,sizeof text,"Class: %d   Team: %d",player_class[id],class_teams[player_class[id]]);
		SendClientMessage(playerid, COLOUR_PERSONAL, text);
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
			SendClientMessage(playerid, COLOUR_PERSONAL, "/kick /ban /gethealth /sethealth");
			SendClientMessage(playerid, COLOUR_PERSONAL, "/watch /unwatch /pinfo /restart /kph");
			SendClientMessage(playerid, COLOUR_PERSONAL, "/force <name> <cmd>  /tell <text>");
			SendClientMessage(playerid, COLOUR_PERSONAL, "/whovote /restart /thaw <person> /freeze <person> /tk <person>");
		}
		SendClientMessage(playerid, COLOUR_PERSONAL, "/reclass <class>  (change class) /swapclass <person> (for pm)");
		SendClientMessage(playerid, COLOUR_PERSONAL, "/duty (get orders)   /intel (get PM position)");
		SendClientMessage(playerid, COLOUR_PERSONAL, "/callvote /vote /endvote (votekick a cheater)");
		SendClientMessage(playerid, COLOUR_PERSONAL, "/time /players /pinfo <person> /ops");
		SendClientMessage(playerid, COLOUR_PERSONAL, "/heal /login <user> <pass> /mapvote <map>");
		SendClientMessage(playerid, COLOUR_PERSONAL, "Messages starting with ! are team-only.");
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
			TogglePlayerControllable(id,1);
			return 1;
		} else if (streq(cmd,"/freeze")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			TogglePlayerControllable(id,0);
			return 1;
		} else if (streq(cmd,"/pwarp")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			new Float:x, Float:y, Float:z;
			GetPlayerPos(id,x,y,z);
			SetPlayerPos(playerid,x,y,z);
			SendClientMessage(playerid, COLOUR_PERSONAL, "Done.");
			return 1;
		} else if (streq(cmd,"/pwarptome")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			new Float:x, Float:y, Float:z;
			GetPlayerPos(playerid,x,y,z);
			SetPlayerPos(id,x,y,z);
			SendClientMessage(playerid, COLOUR_PERSONAL, "Done.");
			return 1;
		} else if (streq(cmd,"/ban")) {
			new id=GetId(playerid,rest);
			if (id==INVALID_PLAYER_ID) return 1;
			SendClientMessage(playerid, COLOUR_PERSONAL, "Ban okay.");
			new banner[256];
			new banned[256];
			GetPlayerName(playerid,banned,sizeof banner);
			GetPlayerName(id,banner,sizeof banned);
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
			return 1;
		} else if (streq(cmd,"/kph")) {
			new id=GetId(playerid,rest);
			player_speed_watch[playerid] = id;
			return 1;
		} else if (streq(cmd,"/unwatch")) {
			player_watching[playerid] = INVALID_PLAYER_ID;
			SetPlayerPosAtSelf(playerid);
			return 1;
		} else if (streq(cmd,"/restart")) {
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
			new vid=strval(vidtext);
			new text[256];
			format(text,sizeof text,"vehicle {%d/%d}:%d is %f,%f,%f // %s",vid, vehicle_counter-1, vehicle_modelid[vid], vehicle_spawn_x[vid], vehicle_spawn_y[vid], vehicle_spawn_z[vid],comment);
			printf("%s\n",text);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/vwarp")) {
			new vid=strval(rest);
			SetPlayerPos(playerid,vehicle_spawn_x[vid], vehicle_spawn_y[vid], vehicle_spawn_z[vid]+1.5);
			new text[256];
			format (text,sizeof text,"Warped to vid %d",vid);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/wwarp")) {
			new pickupid=strval(rest);
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

			SetPlayerPos(playerid,x+dx,y+dy,z+dz);
			new text[256];
			format (text,sizeof text,"Warped to %f %f %f",x+dx,y+dy,z+dz);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
			return 1;
		} else if (streq(cmd,"/balancedness")) {
		    new dualpm = 0, toomanybg = 0;
		    new b = Balancedness(INVALID_CLASS, INVALID_CLASS, dualpm, toomanybg);
			new text[256];
			format (text,sizeof text,"balancedness: %d, dualpm=%d, toomanybg=%d",b,dualpm, toomanybg);
			SendClientMessage(playerid, COLOUR_PERSONAL, text);
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
			new team = class_teams[player_class[playerid]];
			new spawn = strval(rest);
			SetPlayerPos(playerid, team_spawn_x[team][spawn],
		                           team_spawn_y[team][spawn],
		                           team_spawn_z[team][spawn]);
			SetPlayerFacingAngle(playerid, team_spawn_a[team][spawn]);
			SetCameraBehindPlayer(playerid);
			return 1;
		} else if (streq(cmd,"/tell")) {
			GameTextForAll(rest,4000,GAME_TEXT_STYLE_SMALL);
			return 1;
		}

	}

	return 0;
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

    if (DistanceFromPlayerToPlayer(medic,patient)>1) {
		SendClientMessage(medic, COLOUR_PERSONAL, "You are too far from the patient.");
		return;
	}

	new Float:patient_health;
	new Float:medic_health;

	GetPlayerHealth(patient,patient_health);
	GetPlayerHealth(medic,medic_health);
	
	new Float:medicine = floatround((100 - patient_health)/2, floatround_floor);
	if ((medic_health-1) < medicine) medicine = medic_health-1;
	
	if (medicine<=0.0) {
		SendClientMessage(medic, COLOUR_PERSONAL, "There is nothing you can do.");
		return;
	}

	SetPlayerHealth(medic, medic_health - medicine);
	SetPlayerHealth(patient, patient_health + medicine*2);

	new text[256];
	format(text,sizeof text,"Gave %.0f health to patient.",medicine*2);
	SendClientMessage(medic, COLOUR_PERSONAL, text);

	format(text,sizeof text,"You were healed by %.0f health.",medicine*2);
	SendClientMessage(patient, COLOUR_PERSONAL, text);

}


GetId(playerid, rest[])
{
	if (!IsNatural(rest)) {
		return GetIdFromName(playerid, rest);
	}
	new id = strval(rest);
	if (id<0 || id >=MAX_PLAYERS || !IsPlayerConnected(id)) {
		SendClientMessage(playerid, COLOUR_PERSONAL, "Invalid id");
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
	new text[100];
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



public RegularTask()
{
	for (new i=0 ; i<MAX_PLAYERS ; i++) {
		if (IsPlayerConnected(i) && player_class[i]!=INVALID_CLASS) {
			new Float:x;
			new Float:y;
			new Float:z;
			GetPlayerPos(i, x, y, z);

			if (player_vehicle_driver[i]) {
				new vehicleid = GetPlayerVehicleID(i);
				if (cant_drive_vehicle[class_teams[player_class[i]]][vehicleid]) {
					GameTextForPlayer(i,"~y~You are ~r~not qualified~n~ ~y~to use this vehicle!",3000,GAME_TEXT_STYLE_SMALL);

					RemovePlayerFromVehicle(i);
				}

				if (vehicle_modelid[vehicleid] == HYDRA || vehicle_modelid[vehicleid] == SEASPARROW) {
					if (safehouse_exists) {

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
			}
			if (player_watching[i]!=INVALID_PLAYER_ID)
				SetPlayerPosAtPlayer(i,player_watching[i]);

			if (player_vehicle_passenger[i]) {
				new vehicleid = GetPlayerVehicleID(i);
				if (cant_passenger_vehicle[class_teams[player_class[i]]][vehicleid]) {
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
					GameTextForPlayer(i,"~w~Maybe in another samp mode.\n",4000,GAME_TEXT_STYLE_SMALL);
					SetPlayerPos(i,banned_cuboid_tele_x,banned_cuboid_tele_y,banned_cuboid_tele_z);
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
	        
	        if (speedkph > maxspeed*1.3 && player_last_speed_warning[playerid] < round_timer_counter - 5) {
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
			if (speedkph > 250 && player_last_speed_warning[playerid] < round_timer_counter - 5) {
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
	new last = player_pickup_when[playerid][pickupid];
	if (pickup_type[pickupid] == WP_RESPAWN) {
		if (last != -1 && round_timer_counter-last<30) {
		    if (!player_pickup_squatting[playerid]) {
		        new text[256];
				format(text, sizeof text, "~w~respawns in ~r~%d seconds", 30-(round_timer_counter-last));
				if (pickup_synced[pickupid]) {
			        new name[256];
					if (pickup_last_used_by[pickupid]==INVALID_PLAYER_ID) {
						name = "~b~(logged out)";
					} else {
						GetPlayerName(pickup_last_used_by[pickupid],name,sizeof name);
					}
					format(text, sizeof text, "%s~w~last used by ~y~%s", text, name);
				}
	        	GameTextForPlayer(playerid,text,6000,GAME_TEXT_STYLE_SMALL);
				player_pickup_squatting[playerid] = 1;
			}
		} else {
			GivePlayerWeapon2(playerid,pickupid);
			player_pickup_squatting[playerid] = 1;
		}
	} else if (pickup_type[pickupid] == WP_NO_RESPAWN) {
		if (player_pickup_when[playerid][pickupid] == -1) {
			GivePlayerWeapon2(playerid,pickupid);
			player_pickup_squatting[playerid] = 1;
		} else if (pickup_synced[pickupid] && pickup_last_used_by[pickupid] != playerid && !player_pickup_squatting[playerid]) {
	        new name[256];
			if (pickup_last_used_by[pickupid]==INVALID_PLAYER_ID) {
				name = "~b~(logged out)";
			} else {
				GetPlayerName(pickup_last_used_by[pickupid],name,sizeof name);
			}
	        new text[256];
			format(text, sizeof text, "~w~Already taken by ~y~%s", name);
        	GameTextForPlayer(playerid,text,6000,GAME_TEXT_STYLE_SMALL);
			player_pickup_squatting[playerid] = 1;
		}
	}
}

public GivePlayerWeapon2(playerid, pickupid)
{
	if (player_class[playerid]==INVALID_CLASS) {
	    printf("error: player picked up weapon without first picking a class\n");
	    return;
	}
	if (pickup_unauthorised[class_teams[player_class[playerid]]][pickupid]) {
		GameTextForPlayer(playerid,"~w~You are ~r~not qualified~r~~n~to use this weapon!",7000,GAME_TEXT_STYLE_SMALL);
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
			format(text,sizeof text,"~w~%s has the ~y~minigun!",text);
		    GameTextForAll(text,3000,GAME_TEXT_STYLE_SMALL);
		}
		pickup_last_used_by[pickupid] = playerid;
	}
}

public OnPlayerStateChange(playerid,newstate,oldstate) {
	switch (newstate) {
		case PLAYER_STATE_ONFOOT: {
			player_vehicle_passenger[playerid] = 0;
			player_vehicle_driver[playerid] = 0;
		}
		case PLAYER_STATE_WASTED: {
			player_vehicle_passenger[playerid] = 0;
			player_vehicle_driver[playerid] = 0;
		}
		case PLAYER_STATE_SPAWNED: {
			player_vehicle_passenger[playerid] = 0;
			player_vehicle_driver[playerid] = 0;
		}
		case PLAYER_STATE_DRIVER: {
		    player_vehicle_driver[playerid] = 1;
		}
		case PLAYER_STATE_PASSENGER: {
		    player_vehicle_passenger[playerid] = 1;
		}
	}
}


public OnPlayerExitVehicle(playerid, vehicleid)
{
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
	LocationToText(CalcLocation(pm),text);

	SendClientMessage(playerid,COLOUR_PERSONAL,text);

}

LocationToText(location, text[], size=sizeof text)
{
	new src[256];
	switch (location) {
	    case -1:src = "Prime Minister is out of bounds (indoors).";
	    case -2:src = "Prime Minister is in the Airport.";
	    case 0:	src = "Prime Minister is North West of the City.";
	    case 1:	src = "Prime Minister is North of the City.";
	    case 2:	src = "Prime Minister is North East of the City.";
    	case 3:	src = "Prime Minister is West of the City.";
	    case 4:	src = "Prime Minister is in the City Centre.";
	    case 5:	src = "Prime Minister is East of the City.";
	    case 6:	src = "Prime Minister is South West of the City.";
	    case 7:	src = "Prime Minister is South of the city.";
	    case 8:	src = "Prime Minister is South East of the City.";
	}
	memcpy(text,src,0,sizeof src,size);
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








InitiateVote(playerid,victimid)
{

	if (victimid<0 || victimid >= MAX_PLAYER_NAME) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"Invalid player id.");
		return;
	}

	if (!IsPlayerConnected(victimid)) {
		SendClientMessage(playerid,COLOUR_PERSONAL,"Nonexistant player id.");
		return;
	}

	if (vote_victim==INVALID_PLAYER_ID) {
		for (new i=0 ; i<MAX_PLAYERS ; i++) {
			player_already_voted[i] = 0;
		}
		vote_victim = victimid;
		vote_initiator = playerid;
		votes_left = 1+(NumPlayersConnected()*5) / 10;
		if (votes_left==NumPlayersConnected())
			votes_left--;
		if (votes_left==0)
			votes_left++;
		vote_timer = SetTimer("ResetVote",90000,0);
		PrintVoteInfo();
	} else {
		SendClientMessage(playerid,COLOUR_PERSONAL,"A vote is already in progress.");
	}
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
		printf("error: PrintVoteInf(): vote_victim==INVALID_PLAYER_ID :(");
		return;  //fail gracefully
	}
	new name[MAX_PLAYER_NAME];
	GetPlayerName(vote_victim,name,MAX_PLAYER_NAME);
	new info[200];
	if (votes_left)
		format(info,sizeof info,"~r~ban %s (id %d)?~n~~y~need %d votes~n~/vote if you agree",name,vote_victim,votes_left);
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



