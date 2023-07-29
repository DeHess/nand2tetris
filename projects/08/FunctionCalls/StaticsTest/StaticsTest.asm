//SP=256
@256                                                        //  0
D=A                                                         //  1
@SP                                                         //  2
M=D                                                         //  3
// call sys.init 0
//Arg zwischenspeichern in R15
@ARG                                                        //  4
D=M                                                         //  5
@R15                                                        //  6
M=D                                                         //  7
//Sets ARG
@SP                                                         //  8
D=M                                                         //  9
@0                                                          //  10
D=D-A                                                       //  11
@ARG                                                        //  12
M=D                                                         //  13
//return Addresse auf den Stack
@returnLabel1                                               //  14
D=A                                                         //  15
@SP                                                         //  16
A=M                                                         //  17
M=D                                                         //  18
@SP                                                         //  19
M=M+1                                                       //  20
//LCL auf Stack
@LCL                                                        //  21
D=M                                                         //  22
@SP                                                         //  23
A=M                                                         //  24
M=D                                                         //  25
@SP                                                         //  26
M=M+1                                                       //  27
//ARG auf Stack
@R15                                                        //  28
D=M                                                         //  29
@SP                                                         //  30
A=M                                                         //  31
M=D                                                         //  32
@SP                                                         //  33
M=M+1                                                       //  34
//THIS auf Stack
@THIS                                                       //  35
D=M                                                         //  36
@SP                                                         //  37
A=M                                                         //  38
M=D                                                         //  39
@SP                                                         //  40
M=M+1                                                       //  41
//THAT auf Stack
@THAT                                                       //  42
D=M                                                         //  43
@SP                                                         //  44
A=M                                                         //  45
M=D                                                         //  46
@SP                                                         //  47
M=M+1                                                       //  48
// Local auf neuen Wert setzen = SP
@SP                                                         //  49
D=M                                                         //  50
@LCL                                                        //  51
M=D                                                         //  52
@Sys.init                                                   //  53
0;JMP                                                       //  54
(returnLabel1) // hier geht es weiter nach dem call von sys.init






// function Class1.set 0
(Class1.set)
// push argument 0
@0                                                          //  55
D=A                                                         //  56
@2                                                          //  57
A=D+M                                                       //  58
D=M                                                         //  59
@SP                                                         //  60
A=M                                                         //  61
M=D                                                         //  62
@SP                                                         //  63
M=M+1                                                       //  64
// pop static 0
@SP                                                         //  65
A=M-1                                                       //  66
D=M                                                         //  67
@staticClass1.vm0                                           //  68
M=D                                                         //  69
@SP                                                         //  70
M=M-1                                                       //  71
// push argument 1
@1                                                          //  72
D=A                                                         //  73
@2                                                          //  74
A=D+M                                                       //  75
D=M                                                         //  76
@SP                                                         //  77
A=M                                                         //  78
M=D                                                         //  79
@SP                                                         //  80
M=M+1                                                       //  81
// pop static 1
@SP                                                         //  82
A=M-1                                                       //  83
D=M                                                         //  84
@staticClass1.vm1                                           //  85
M=D                                                         //  86
@SP                                                         //  87
M=M-1                                                       //  88
// push constant 0
@0                                                          //  89
D=A                                                         //  90
@SP                                                         //  91
A=M                                                         //  92
M=D                                                         //  93
@SP                                                         //  94
M=M+1                                                       //  95
// return
//zwischenspeichern ARG auf R13
@ARG                                                        //  96
D=M                                                         //  97
@R13                                                        //  98
M=D                                                         //  99
//ZwischenSpeichern der return address auf R14
@LCL                                                        //  100
D=M                                                         //  101
D=D-1                                                       //  102
D=D-1                                                       //  103
D=D-1                                                       //  104
D=D-1                                                       //  105
D=D-1                                                       //  106
A=D //zeigen auf return address                             //  107
D=M                                                         //  108
@R14                                                        //  109
M=D                                                         //  110
//return value into arg 0
@SP                                                         //  111
A=M-1                                                       //  112
D=M                                                         //  113
@ARG                                                        //  114
A=M                                                         //  115
M=D                                                         //  116
//restoring segment pointers
//restore THAT
@LCL                                                        //  117
A=M-1 // zeigen auf saved THAT                              //  118
D=M                                                         //  119
@THAT                                                       //  120
M=D                                                         //  121
//restore THIS
@LCL                                                        //  122
D=M                                                         //  123
D=D-1                                                       //  124
D=D-1                                                       //  125
A=D //zeigen auf saved THIS                                 //  126
D=M                                                         //  127
@THIS                                                       //  128
M=D                                                         //  129
//restore ARG
@LCL                                                        //  130
D=M                                                         //  131
D=D-1                                                       //  132
D=D-1                                                       //  133
D=D-1                                                       //  134
A=D // zeigen auf saved ARG                                 //  135
D=M                                                         //  136
@ARG                                                        //  137
M=D                                                         //  138
//Restore LCL
@LCL                                                        //  139
D=M                                                         //  140
D=D-1                                                       //  141
D=D-1                                                       //  142
D=D-1                                                       //  143
D=D-1                                                       //  144
A=D // zeigen auf saved LCL                                 //  145
D=M                                                         //  146
@LCL                                                        //  147
M=D                                                         //  148
//sets SP for caller
@R13                                                        //  149
D=M                                                         //  150
D=D+1                                                       //  151
@SP                                                         //  152
M=D                                                         //  153
//jumps to the return address
@R14                                                        //  154
A=M                                                         //  155
0;JMP                                                       //  156


// function Class1.get 0
(Class1.get)
// push static 0
@staticClass1.vm0                                           //  157
D=M                                                         //  158
@SP                                                         //  159
A=M                                                         //  160
M=D                                                         //  161
@SP                                                         //  162
M=M+1                                                       //  163
// push static 1
@staticClass1.vm1                                           //  164
D=M                                                         //  165
@SP                                                         //  166
A=M                                                         //  167
M=D                                                         //  168
@SP                                                         //  169
M=M+1                                                       //  170
// sub
@SP                                                         //  171
M=M-1                                                       //  172
M=M-1                                                       //  173
A=M                                                         //  174
D=M                                                         //  175
@SP                                                         //  176
M=M+1                                                       //  177
A=M                                                         //  178
D=D-M                                                       //  179
@SP                                                         //  180
M=M-1                                                       //  181
A=M                                                         //  182
M=D                                                         //  183
@SP                                                         //  184
M=M+1                                                       //  185
// return
//zwischenspeichern ARG auf R13
@ARG                                                        //  186
D=M                                                         //  187
@R13                                                        //  188
M=D                                                         //  189
//ZwischenSpeichern der return address auf R14
@LCL                                                        //  190
D=M                                                         //  191
D=D-1                                                       //  192
D=D-1                                                       //  193
D=D-1                                                       //  194
D=D-1                                                       //  195
D=D-1                                                       //  196
A=D //zeigen auf return address                             //  197
D=M                                                         //  198
@R14                                                        //  199
M=D                                                         //  200
//return value into arg 0
@SP                                                         //  201
A=M-1                                                       //  202
D=M                                                         //  203
@ARG                                                        //  204
A=M                                                         //  205
M=D                                                         //  206
//restoring segment pointers
//restore THAT
@LCL                                                        //  207
A=M-1 // zeigen auf saved THAT                              //  208
D=M                                                         //  209
@THAT                                                       //  210
M=D                                                         //  211
//restore THIS
@LCL                                                        //  212
D=M                                                         //  213
D=D-1                                                       //  214
D=D-1                                                       //  215
A=D //zeigen auf saved THIS                                 //  216
D=M                                                         //  217
@THIS                                                       //  218
M=D                                                         //  219
//restore ARG
@LCL                                                        //  220
D=M                                                         //  221
D=D-1                                                       //  222
D=D-1                                                       //  223
D=D-1                                                       //  224
A=D // zeigen auf saved ARG                                 //  225
D=M                                                         //  226
@ARG                                                        //  227
M=D                                                         //  228
//Restore LCL
@LCL                                                        //  229
D=M                                                         //  230
D=D-1                                                       //  231
D=D-1                                                       //  232
D=D-1                                                       //  233
D=D-1                                                       //  234
A=D // zeigen auf saved LCL                                 //  235
D=M                                                         //  236
@LCL                                                        //  237
M=D                                                         //  238
//sets SP for caller
@R13                                                        //  239
D=M                                                         //  240
D=D+1                                                       //  241
@SP                                                         //  242
M=D                                                         //  243
//jumps to the return address
@R14                                                        //  244
A=M                                                         //  245
0;JMP                                                       //  246






// function Class2.set 0
(Class2.set)
// push argument 0
@0                                                          //  247
D=A                                                         //  248
@2                                                          //  249
A=D+M                                                       //  250
D=M                                                         //  251
@SP                                                         //  252
A=M                                                         //  253
M=D                                                         //  254
@SP                                                         //  255
M=M+1                                                       //  256
// pop static 0
@SP                                                         //  257
A=M-1                                                       //  258
D=M                                                         //  259
@staticClass2.vm0                                           //  260
M=D                                                         //  261
@SP                                                         //  262
M=M-1                                                       //  263
// push argument 1
@1                                                          //  264
D=A                                                         //  265
@2                                                          //  266
A=D+M                                                       //  267
D=M                                                         //  268
@SP                                                         //  269
A=M                                                         //  270
M=D                                                         //  271
@SP                                                         //  272
M=M+1                                                       //  273
// pop static 1
@SP                                                         //  274
A=M-1                                                       //  275
D=M                                                         //  276
@staticClass2.vm1                                           //  277
M=D                                                         //  278
@SP                                                         //  279
M=M-1                                                       //  280
// push constant 0
@0                                                          //  281
D=A                                                         //  282
@SP                                                         //  283
A=M                                                         //  284
M=D                                                         //  285
@SP                                                         //  286
M=M+1                                                       //  287
// return
//zwischenspeichern ARG auf R13
@ARG                                                        //  288
D=M                                                         //  289
@R13                                                        //  290
M=D                                                         //  291
//ZwischenSpeichern der return address auf R14
@LCL                                                        //  292
D=M                                                         //  293
D=D-1                                                       //  294
D=D-1                                                       //  295
D=D-1                                                       //  296
D=D-1                                                       //  297
D=D-1                                                       //  298
A=D //zeigen auf return address                             //  299
D=M                                                         //  300
@R14                                                        //  301
M=D                                                         //  302
//return value into arg 0
@SP                                                         //  303
A=M-1                                                       //  304
D=M                                                         //  305
@ARG                                                        //  306
A=M                                                         //  307
M=D                                                         //  308
//restoring segment pointers
//restore THAT
@LCL                                                        //  309
A=M-1 // zeigen auf saved THAT                              //  310
D=M                                                         //  311
@THAT                                                       //  312
M=D                                                         //  313
//restore THIS
@LCL                                                        //  314
D=M                                                         //  315
D=D-1                                                       //  316
D=D-1                                                       //  317
A=D //zeigen auf saved THIS                                 //  318
D=M                                                         //  319
@THIS                                                       //  320
M=D                                                         //  321
//restore ARG
@LCL                                                        //  322
D=M                                                         //  323
D=D-1                                                       //  324
D=D-1                                                       //  325
D=D-1                                                       //  326
A=D // zeigen auf saved ARG                                 //  327
D=M                                                         //  328
@ARG                                                        //  329
M=D                                                         //  330
//Restore LCL
@LCL                                                        //  331
D=M                                                         //  332
D=D-1                                                       //  333
D=D-1                                                       //  334
D=D-1                                                       //  335
D=D-1                                                       //  336
A=D // zeigen auf saved LCL                                 //  337
D=M                                                         //  338
@LCL                                                        //  339
M=D                                                         //  340
//sets SP for caller
@R13                                                        //  341
D=M                                                         //  342
D=D+1                                                       //  343
@SP                                                         //  344
M=D                                                         //  345
//jumps to the return address
@R14                                                        //  346
A=M                                                         //  347
0;JMP                                                       //  348


// function Class2.get 0
(Class2.get)
// push static 0
@staticClass2.vm0                                           //  349
D=M                                                         //  350
@SP                                                         //  351
A=M                                                         //  352
M=D                                                         //  353
@SP                                                         //  354
M=M+1                                                       //  355
// push static 1
@staticClass2.vm1                                           //  356
D=M                                                         //  357
@SP                                                         //  358
A=M                                                         //  359
M=D                                                         //  360
@SP                                                         //  361
M=M+1                                                       //  362
// sub
@SP                                                         //  363
M=M-1                                                       //  364
M=M-1                                                       //  365
A=M                                                         //  366
D=M                                                         //  367
@SP                                                         //  368
M=M+1                                                       //  369
A=M                                                         //  370
D=D-M                                                       //  371
@SP                                                         //  372
M=M-1                                                       //  373
A=M                                                         //  374
M=D                                                         //  375
@SP                                                         //  376
M=M+1                                                       //  377
// return
//zwischenspeichern ARG auf R13
@ARG                                                        //  378
D=M                                                         //  379
@R13                                                        //  380
M=D                                                         //  381
//ZwischenSpeichern der return address auf R14
@LCL                                                        //  382
D=M                                                         //  383
D=D-1                                                       //  384
D=D-1                                                       //  385
D=D-1                                                       //  386
D=D-1                                                       //  387
D=D-1                                                       //  388
A=D //zeigen auf return address                             //  389
D=M                                                         //  390
@R14                                                        //  391
M=D                                                         //  392
//return value into arg 0
@SP                                                         //  393
A=M-1                                                       //  394
D=M                                                         //  395
@ARG                                                        //  396
A=M                                                         //  397
M=D                                                         //  398
//restoring segment pointers
//restore THAT
@LCL                                                        //  399
A=M-1 // zeigen auf saved THAT                              //  400
D=M                                                         //  401
@THAT                                                       //  402
M=D                                                         //  403
//restore THIS
@LCL                                                        //  404
D=M                                                         //  405
D=D-1                                                       //  406
D=D-1                                                       //  407
A=D //zeigen auf saved THIS                                 //  408
D=M                                                         //  409
@THIS                                                       //  410
M=D                                                         //  411
//restore ARG
@LCL                                                        //  412
D=M                                                         //  413
D=D-1                                                       //  414
D=D-1                                                       //  415
D=D-1                                                       //  416
A=D // zeigen auf saved ARG                                 //  417
D=M                                                         //  418
@ARG                                                        //  419
M=D                                                         //  420
//Restore LCL
@LCL                                                        //  421
D=M                                                         //  422
D=D-1                                                       //  423
D=D-1                                                       //  424
D=D-1                                                       //  425
D=D-1                                                       //  426
A=D // zeigen auf saved LCL                                 //  427
D=M                                                         //  428
@LCL                                                        //  429
M=D                                                         //  430
//sets SP for caller
@R13                                                        //  431
D=M                                                         //  432
D=D+1                                                       //  433
@SP                                                         //  434
M=D                                                         //  435
//jumps to the return address
@R14                                                        //  436
A=M                                                         //  437
0;JMP                                                       //  438







// function Sys.init 0
(Sys.init)
// push constant 6
@6                                                          //  439
D=A                                                         //  440
@SP                                                         //  441
A=M                                                         //  442
M=D                                                         //  443
@SP                                                         //  444
M=M+1                                                       //  445
// push constant 8
@8                                                          //  446
D=A                                                         //  447
@SP                                                         //  448
A=M                                                         //  449
M=D                                                         //  450
@SP                                                         //  451
M=M+1                                                       //  452
// call Class1.set 2
//Arg zwischenspeichern in R15
@ARG                                                        //  453
D=M                                                         //  454
@R15                                                        //  455
M=D                                                         //  456
//Sets ARG
@SP                                                         //  457
D=M                                                         //  458
@2                                                          //  459
D=D-A                                                       //  460
@ARG                                                        //  461
M=D                                                         //  462
//return Addresse auf den Stack
@returnLabel1                                               //  463
D=A                                                         //  464
@SP                                                         //  465
A=M                                                         //  466
M=D                                                         //  467
@SP                                                         //  468
M=M+1                                                       //  469
//LCL auf Stack
@LCL                                                        //  470
D=M                                                         //  471
@SP                                                         //  472
A=M                                                         //  473
M=D                                                         //  474
@SP                                                         //  475
M=M+1                                                       //  476
//ARG auf Stack
@R15                                                        //  477
D=M                                                         //  478
@SP                                                         //  479
A=M                                                         //  480
M=D                                                         //  481
@SP                                                         //  482
M=M+1                                                       //  483
//THIS auf Stack
@THIS                                                       //  484
D=M                                                         //  485
@SP                                                         //  486
A=M                                                         //  487
M=D                                                         //  488
@SP                                                         //  489
M=M+1                                                       //  490
//THAT auf Stack
@THAT                                                       //  491
D=M                                                         //  492
@SP                                                         //  493
A=M                                                         //  494
M=D                                                         //  495
@SP                                                         //  496
M=M+1                                                       //  497
// Local auf neuen Wert setzen = SP
@SP                                                         //  498
D=M                                                         //  499
@LCL                                                        //  500
M=D                                                         //  501
@Class1.set                                                 //  502
0;JMP                                                       //  503
(returnLabel1) // hier geht es weiter nach dem call von Class1.set
// pop temp 0
@SP                                                         //  504
A=M-1                                                       //  505
D=M                                                         //  506
@5                                                          //  507
M=D                                                         //  508
@SP                                                         //  509
M=M-1                                                       //  510
// push constant 23
@23                                                         //  511
D=A                                                         //  512
@SP                                                         //  513
A=M                                                         //  514
M=D                                                         //  515
@SP                                                         //  516
M=M+1                                                       //  517
// push constant 15
@15                                                         //  518
D=A                                                         //  519
@SP                                                         //  520
A=M                                                         //  521
M=D                                                         //  522
@SP                                                         //  523
M=M+1                                                       //  524
// call Class2.set 2
//Arg zwischenspeichern in R15
@ARG                                                        //  525
D=M                                                         //  526
@R15                                                        //  527
M=D                                                         //  528
//Sets ARG
@SP                                                         //  529
D=M                                                         //  530
@2                                                          //  531
D=D-A                                                       //  532
@ARG                                                        //  533
M=D                                                         //  534
//return Addresse auf den Stack
@returnLabel2                                               //  535
D=A                                                         //  536
@SP                                                         //  537
A=M                                                         //  538
M=D                                                         //  539
@SP                                                         //  540
M=M+1                                                       //  541
//LCL auf Stack
@LCL                                                        //  542
D=M                                                         //  543
@SP                                                         //  544
A=M                                                         //  545
M=D                                                         //  546
@SP                                                         //  547
M=M+1                                                       //  548
//ARG auf Stack
@R15                                                        //  549
D=M                                                         //  550
@SP                                                         //  551
A=M                                                         //  552
M=D                                                         //  553
@SP                                                         //  554
M=M+1                                                       //  555
//THIS auf Stack
@THIS                                                       //  556
D=M                                                         //  557
@SP                                                         //  558
A=M                                                         //  559
M=D                                                         //  560
@SP                                                         //  561
M=M+1                                                       //  562
//THAT auf Stack
@THAT                                                       //  563
D=M                                                         //  564
@SP                                                         //  565
A=M                                                         //  566
M=D                                                         //  567
@SP                                                         //  568
M=M+1                                                       //  569
// Local auf neuen Wert setzen = SP
@SP                                                         //  570
D=M                                                         //  571
@LCL                                                        //  572
M=D                                                         //  573
@Class2.set                                                 //  574
0;JMP                                                       //  575
(returnLabel2) // hier geht es weiter nach dem call von Class2.set
// pop temp 0
@SP                                                         //  576
A=M-1                                                       //  577
D=M                                                         //  578
@5                                                          //  579
M=D                                                         //  580
@SP                                                         //  581
M=M-1                                                       //  582
// call Class1.get 0
//Arg zwischenspeichern in R15
@ARG                                                        //  583
D=M                                                         //  584
@R15                                                        //  585
M=D                                                         //  586
//Sets ARG
@SP                                                         //  587
D=M                                                         //  588
@0                                                          //  589
D=D-A                                                       //  590
@ARG                                                        //  591
M=D                                                         //  592
//return Addresse auf den Stack
@returnLabel3                                               //  593
D=A                                                         //  594
@SP                                                         //  595
A=M                                                         //  596
M=D                                                         //  597
@SP                                                         //  598
M=M+1                                                       //  599
//LCL auf Stack
@LCL                                                        //  600
D=M                                                         //  601
@SP                                                         //  602
A=M                                                         //  603
M=D                                                         //  604
@SP                                                         //  605
M=M+1                                                       //  606
//ARG auf Stack
@R15                                                        //  607
D=M                                                         //  608
@SP                                                         //  609
A=M                                                         //  610
M=D                                                         //  611
@SP                                                         //  612
M=M+1                                                       //  613
//THIS auf Stack
@THIS                                                       //  614
D=M                                                         //  615
@SP                                                         //  616
A=M                                                         //  617
M=D                                                         //  618
@SP                                                         //  619
M=M+1                                                       //  620
//THAT auf Stack
@THAT                                                       //  621
D=M                                                         //  622
@SP                                                         //  623
A=M                                                         //  624
M=D                                                         //  625
@SP                                                         //  626
M=M+1                                                       //  627
// Local auf neuen Wert setzen = SP
@SP                                                         //  628
D=M                                                         //  629
@LCL                                                        //  630
M=D                                                         //  631
@Class1.get                                                 //  632
0;JMP                                                       //  633
(returnLabel3) // hier geht es weiter nach dem call von Class1.get
// call Class2.get 0
//Arg zwischenspeichern in R15
@ARG                                                        //  634
D=M                                                         //  635
@R15                                                        //  636
M=D                                                         //  637
//Sets ARG
@SP                                                         //  638
D=M                                                         //  639
@0                                                          //  640
D=D-A                                                       //  641
@ARG                                                        //  642
M=D                                                         //  643
//return Addresse auf den Stack
@returnLabel4                                               //  644
D=A                                                         //  645
@SP                                                         //  646
A=M                                                         //  647
M=D                                                         //  648
@SP                                                         //  649
M=M+1                                                       //  650
//LCL auf Stack
@LCL                                                        //  651
D=M                                                         //  652
@SP                                                         //  653
A=M                                                         //  654
M=D                                                         //  655
@SP                                                         //  656
M=M+1                                                       //  657
//ARG auf Stack
@R15                                                        //  658
D=M                                                         //  659
@SP                                                         //  660
A=M                                                         //  661
M=D                                                         //  662
@SP                                                         //  663
M=M+1                                                       //  664
//THIS auf Stack
@THIS                                                       //  665
D=M                                                         //  666
@SP                                                         //  667
A=M                                                         //  668
M=D                                                         //  669
@SP                                                         //  670
M=M+1                                                       //  671
//THAT auf Stack
@THAT                                                       //  672
D=M                                                         //  673
@SP                                                         //  674
A=M                                                         //  675
M=D                                                         //  676
@SP                                                         //  677
M=M+1                                                       //  678
// Local auf neuen Wert setzen = SP
@SP                                                         //  679
D=M                                                         //  680
@LCL                                                        //  681
M=D                                                         //  682
@Class2.get                                                 //  683
0;JMP                                                       //  684
(returnLabel4) // hier geht es weiter nach dem call von Class2.get
// label WHILE
(WHILE)
// goto WHILE
@WHILE                                                      //  685
0;JMP                                                       //  686
