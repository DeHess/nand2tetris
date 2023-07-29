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




// function Sys.init 0
(Sys.init)
// push constant 4000
@4000                                                       //  55
D=A                                                         //  56
@SP                                                         //  57
A=M                                                         //  58
M=D                                                         //  59
@SP                                                         //  60
M=M+1                                                       //  61
// pop pointer 0
@SP                                                         //  62
A=M-1                                                       //  63
D=M                                                         //  64
@3                                                          //  65
M=D                                                         //  66
@SP                                                         //  67
M=M-1                                                       //  68
// push constant 5000
@5000                                                       //  69
D=A                                                         //  70
@SP                                                         //  71
A=M                                                         //  72
M=D                                                         //  73
@SP                                                         //  74
M=M+1                                                       //  75
// pop pointer 1
@SP                                                         //  76
A=M-1                                                       //  77
D=M                                                         //  78
@4                                                          //  79
M=D                                                         //  80
@SP                                                         //  81
M=M-1                                                       //  82
// call Sys.main 0
//Arg zwischenspeichern in R15
@ARG                                                        //  83
D=M                                                         //  84
@R15                                                        //  85
M=D                                                         //  86
//Sets ARG
@SP                                                         //  87
D=M                                                         //  88
@0                                                          //  89
D=D-A                                                       //  90
@ARG                                                        //  91
M=D                                                         //  92
//return Addresse auf den Stack
@returnLabel1                                               //  93
D=A                                                         //  94
@SP                                                         //  95
A=M                                                         //  96
M=D                                                         //  97
@SP                                                         //  98
M=M+1                                                       //  99
//LCL auf Stack
@LCL                                                        //  100
D=M                                                         //  101
@SP                                                         //  102
A=M                                                         //  103
M=D                                                         //  104
@SP                                                         //  105
M=M+1                                                       //  106
//ARG auf Stack
@R15                                                        //  107
D=M                                                         //  108
@SP                                                         //  109
A=M                                                         //  110
M=D                                                         //  111
@SP                                                         //  112
M=M+1                                                       //  113
//THIS auf Stack
@THIS                                                       //  114
D=M                                                         //  115
@SP                                                         //  116
A=M                                                         //  117
M=D                                                         //  118
@SP                                                         //  119
M=M+1                                                       //  120
//THAT auf Stack
@THAT                                                       //  121
D=M                                                         //  122
@SP                                                         //  123
A=M                                                         //  124
M=D                                                         //  125
@SP                                                         //  126
M=M+1                                                       //  127
// Local auf neuen Wert setzen = SP
@SP                                                         //  128
D=M                                                         //  129
@LCL                                                        //  130
M=D                                                         //  131
@Sys.main                                                   //  132
0;JMP                                                       //  133
(returnLabel1) // hier geht es weiter nach dem call von Sys.main
// pop temp 1
@SP                                                         //  134
A=M-1                                                       //  135
D=M                                                         //  136
@6                                                          //  137
M=D                                                         //  138
@SP                                                         //  139
M=M-1                                                       //  140
// label LOOP
(LOOP)
// goto LOOP
@LOOP                                                       //  141
0;JMP                                                       //  142






// function Sys.main 5
(Sys.main)
@SP                                                         //  143
A=M                                                         //  144
M=0                                                         //  145
@SP                                                         //  146
M=M+1                                                       //  147
@SP                                                         //  148
A=M                                                         //  149
M=0                                                         //  150
@SP                                                         //  151
M=M+1                                                       //  152
@SP                                                         //  153
A=M                                                         //  154
M=0                                                         //  155
@SP                                                         //  156
M=M+1                                                       //  157
@SP                                                         //  158
A=M                                                         //  159
M=0                                                         //  160
@SP                                                         //  161
M=M+1                                                       //  162
@SP                                                         //  163
A=M                                                         //  164
M=0                                                         //  165
@SP                                                         //  166
M=M+1                                                       //  167
// push constant 4001
@4001                                                       //  168
D=A                                                         //  169
@SP                                                         //  170
A=M                                                         //  171
M=D                                                         //  172
@SP                                                         //  173
M=M+1                                                       //  174
// pop pointer 0
@SP                                                         //  175
A=M-1                                                       //  176
D=M                                                         //  177
@3                                                          //  178
M=D                                                         //  179
@SP                                                         //  180
M=M-1                                                       //  181
// push constant 5001
@5001                                                       //  182
D=A                                                         //  183
@SP                                                         //  184
A=M                                                         //  185
M=D                                                         //  186
@SP                                                         //  187
M=M+1                                                       //  188
// pop pointer 1
@SP                                                         //  189
A=M-1                                                       //  190
D=M                                                         //  191
@4                                                          //  192
M=D                                                         //  193
@SP                                                         //  194
M=M-1                                                       //  195
// push constant 200
@200                                                        //  196
D=A                                                         //  197
@SP                                                         //  198
A=M                                                         //  199
M=D                                                         //  200
@SP                                                         //  201
M=M+1                                                       //  202
// pop local 1
@1                                                          //  203
D=M                                                         //  204
@1                                                          //  205
D=D+A                                                       //  206
@SP                                                         //  207
A=M                                                         //  208
M=D                                                         //  209
@SP                                                         //  210
A=M-1                                                       //  211
D=M                                                         //  212
@SP                                                         //  213
A=M                                                         //  214
A=M                                                         //  215
M=D                                                         //  216
@SP                                                         //  217
M=M-1                                                       //  218
// push constant 40
@40                                                         //  219
D=A                                                         //  220
@SP                                                         //  221
A=M                                                         //  222
M=D                                                         //  223
@SP                                                         //  224
M=M+1                                                       //  225
// pop local 2
@1                                                          //  226
D=M                                                         //  227
@2                                                          //  228
D=D+A                                                       //  229
@SP                                                         //  230
A=M                                                         //  231
M=D                                                         //  232
@SP                                                         //  233
A=M-1                                                       //  234
D=M                                                         //  235
@SP                                                         //  236
A=M                                                         //  237
A=M                                                         //  238
M=D                                                         //  239
@SP                                                         //  240
M=M-1                                                       //  241
// push constant 6
@6                                                          //  242
D=A                                                         //  243
@SP                                                         //  244
A=M                                                         //  245
M=D                                                         //  246
@SP                                                         //  247
M=M+1                                                       //  248
// pop local 3
@1                                                          //  249
D=M                                                         //  250
@3                                                          //  251
D=D+A                                                       //  252
@SP                                                         //  253
A=M                                                         //  254
M=D                                                         //  255
@SP                                                         //  256
A=M-1                                                       //  257
D=M                                                         //  258
@SP                                                         //  259
A=M                                                         //  260
A=M                                                         //  261
M=D                                                         //  262
@SP                                                         //  263
M=M-1                                                       //  264
// push constant 123
@123                                                        //  265
D=A                                                         //  266
@SP                                                         //  267
A=M                                                         //  268
M=D                                                         //  269
@SP                                                         //  270
M=M+1                                                       //  271
// call Sys.add12 1
//Arg zwischenspeichern in R15
@ARG                                                        //  272
D=M                                                         //  273
@R15                                                        //  274
M=D                                                         //  275
//Sets ARG
@SP                                                         //  276
D=M                                                         //  277
@1                                                          //  278
D=D-A                                                       //  279
@ARG                                                        //  280
M=D                                                         //  281
//return Addresse auf den Stack
@returnLabel2                                               //  282
D=A                                                         //  283
@SP                                                         //  284
A=M                                                         //  285
M=D                                                         //  286
@SP                                                         //  287
M=M+1                                                       //  288
//LCL auf Stack
@LCL                                                        //  289
D=M                                                         //  290
@SP                                                         //  291
A=M                                                         //  292
M=D                                                         //  293
@SP                                                         //  294
M=M+1                                                       //  295
//ARG auf Stack
@R15                                                        //  296
D=M                                                         //  297
@SP                                                         //  298
A=M                                                         //  299
M=D                                                         //  300
@SP                                                         //  301
M=M+1                                                       //  302
//THIS auf Stack
@THIS                                                       //  303
D=M                                                         //  304
@SP                                                         //  305
A=M                                                         //  306
M=D                                                         //  307
@SP                                                         //  308
M=M+1                                                       //  309
//THAT auf Stack
@THAT                                                       //  310
D=M                                                         //  311
@SP                                                         //  312
A=M                                                         //  313
M=D                                                         //  314
@SP                                                         //  315
M=M+1                                                       //  316
// Local auf neuen Wert setzen = SP
@SP                                                         //  317
D=M                                                         //  318
@LCL                                                        //  319
M=D                                                         //  320
@Sys.add12                                                  //  321
0;JMP                                                       //  322
(returnLabel2) // hier geht es weiter nach dem call von Sys.add12
// pop temp 0
@SP                                                         //  323
A=M-1                                                       //  324
D=M                                                         //  325
@5                                                          //  326
M=D                                                         //  327
@SP                                                         //  328
M=M-1                                                       //  329
// push local 0
@0                                                          //  330
D=A                                                         //  331
@1                                                          //  332
A=D+M                                                       //  333
D=M                                                         //  334
@SP                                                         //  335
A=M                                                         //  336
M=D                                                         //  337
@SP                                                         //  338
M=M+1                                                       //  339
// push local 1
@1                                                          //  340
D=A                                                         //  341
@1                                                          //  342
A=D+M                                                       //  343
D=M                                                         //  344
@SP                                                         //  345
A=M                                                         //  346
M=D                                                         //  347
@SP                                                         //  348
M=M+1                                                       //  349
// push local 2
@2                                                          //  350
D=A                                                         //  351
@1                                                          //  352
A=D+M                                                       //  353
D=M                                                         //  354
@SP                                                         //  355
A=M                                                         //  356
M=D                                                         //  357
@SP                                                         //  358
M=M+1                                                       //  359
// push local 3
@3                                                          //  360
D=A                                                         //  361
@1                                                          //  362
A=D+M                                                       //  363
D=M                                                         //  364
@SP                                                         //  365
A=M                                                         //  366
M=D                                                         //  367
@SP                                                         //  368
M=M+1                                                       //  369
// push local 4
@4                                                          //  370
D=A                                                         //  371
@1                                                          //  372
A=D+M                                                       //  373
D=M                                                         //  374
@SP                                                         //  375
A=M                                                         //  376
M=D                                                         //  377
@SP                                                         //  378
M=M+1                                                       //  379
// add
@SP                                                         //  380
M=M-1                                                       //  381
A=M                                                         //  382
D=M                                                         //  383
@SP                                                         //  384
M=M-1                                                       //  385
A=M                                                         //  386
M=D+M                                                       //  387
@SP                                                         //  388
M=M+1                                                       //  389
// add
@SP                                                         //  390
M=M-1                                                       //  391
A=M                                                         //  392
D=M                                                         //  393
@SP                                                         //  394
M=M-1                                                       //  395
A=M                                                         //  396
M=D+M                                                       //  397
@SP                                                         //  398
M=M+1                                                       //  399
// add
@SP                                                         //  400
M=M-1                                                       //  401
A=M                                                         //  402
D=M                                                         //  403
@SP                                                         //  404
M=M-1                                                       //  405
A=M                                                         //  406
M=D+M                                                       //  407
@SP                                                         //  408
M=M+1                                                       //  409
// add
@SP                                                         //  410
M=M-1                                                       //  411
A=M                                                         //  412
D=M                                                         //  413
@SP                                                         //  414
M=M-1                                                       //  415
A=M                                                         //  416
M=D+M                                                       //  417
@SP                                                         //  418
M=M+1                                                       //  419
// return
//zwischenspeichern ARG auf R13
@ARG                                                        //  420
D=M                                                         //  421
@R13                                                        //  422
M=D                                                         //  423
//ZwischenSpeichern der return address auf R14
@LCL                                                        //  424
D=M                                                         //  425
D=D-1                                                       //  426
D=D-1                                                       //  427
D=D-1                                                       //  428
D=D-1                                                       //  429
D=D-1                                                       //  430
A=D //zeigen auf return address                             //  431
D=M                                                         //  432
@R14                                                        //  433
M=D                                                         //  434
//return value into arg 0
@SP                                                         //  435
A=M-1                                                       //  436
D=M                                                         //  437
@ARG                                                        //  438
A=M                                                         //  439
M=D                                                         //  440
//restoring segment pointers
//restore THAT
@LCL                                                        //  441
A=M-1 // zeigen auf saved THAT                              //  442
D=M                                                         //  443
@THAT                                                       //  444
M=D                                                         //  445
//restore THIS
@LCL                                                        //  446
D=M                                                         //  447
D=D-1                                                       //  448
D=D-1                                                       //  449
A=D //zeigen auf saved THIS                                 //  450
D=M                                                         //  451
@THIS                                                       //  452
M=D                                                         //  453
//restore ARG
@LCL                                                        //  454
D=M                                                         //  455
D=D-1                                                       //  456
D=D-1                                                       //  457
D=D-1                                                       //  458
A=D // zeigen auf saved ARG                                 //  459
D=M                                                         //  460
@ARG                                                        //  461
M=D                                                         //  462
//Restore LCL
@LCL                                                        //  463
D=M                                                         //  464
D=D-1                                                       //  465
D=D-1                                                       //  466
D=D-1                                                       //  467
D=D-1                                                       //  468
A=D // zeigen auf saved LCL                                 //  469
D=M                                                         //  470
@LCL                                                        //  471
M=D                                                         //  472
//sets SP for caller
@R13                                                        //  473
D=M                                                         //  474
D=D+1                                                       //  475
@SP                                                         //  476
M=D                                                         //  477
//jumps to the return address
@R14                                                        //  478
A=M                                                         //  479
0;JMP                                                       //  480


// function Sys.add12 0
(Sys.add12)
// push constant 4002
@4002                                                       //  481
D=A                                                         //  482
@SP                                                         //  483
A=M                                                         //  484
M=D                                                         //  485
@SP                                                         //  486
M=M+1                                                       //  487
// pop pointer 0
@SP                                                         //  488
A=M-1                                                       //  489
D=M                                                         //  490
@3                                                          //  491
M=D                                                         //  492
@SP                                                         //  493
M=M-1                                                       //  494
// push constant 5002
@5002                                                       //  495
D=A                                                         //  496
@SP                                                         //  497
A=M                                                         //  498
M=D                                                         //  499
@SP                                                         //  500
M=M+1                                                       //  501
// pop pointer 1
@SP                                                         //  502
A=M-1                                                       //  503
D=M                                                         //  504
@4                                                          //  505
M=D                                                         //  506
@SP                                                         //  507
M=M-1                                                       //  508
// push argument 0
@0                                                          //  509
D=A                                                         //  510
@2                                                          //  511
A=D+M                                                       //  512
D=M                                                         //  513
@SP                                                         //  514
A=M                                                         //  515
M=D                                                         //  516
@SP                                                         //  517
M=M+1                                                       //  518
// push constant 12
@12                                                         //  519
D=A                                                         //  520
@SP                                                         //  521
A=M                                                         //  522
M=D                                                         //  523
@SP                                                         //  524
M=M+1                                                       //  525
// add
@SP                                                         //  526
M=M-1                                                       //  527
A=M                                                         //  528
D=M                                                         //  529
@SP                                                         //  530
M=M-1                                                       //  531
A=M                                                         //  532
M=D+M                                                       //  533
@SP                                                         //  534
M=M+1                                                       //  535
// return
//zwischenspeichern ARG auf R13
@ARG                                                        //  536
D=M                                                         //  537
@R13                                                        //  538
M=D                                                         //  539
//ZwischenSpeichern der return address auf R14
@LCL                                                        //  540
D=M                                                         //  541
D=D-1                                                       //  542
D=D-1                                                       //  543
D=D-1                                                       //  544
D=D-1                                                       //  545
D=D-1                                                       //  546
A=D //zeigen auf return address                             //  547
D=M                                                         //  548
@R14                                                        //  549
M=D                                                         //  550
//return value into arg 0
@SP                                                         //  551
A=M-1                                                       //  552
D=M                                                         //  553
@ARG                                                        //  554
A=M                                                         //  555
M=D                                                         //  556
//restoring segment pointers
//restore THAT
@LCL                                                        //  557
A=M-1 // zeigen auf saved THAT                              //  558
D=M                                                         //  559
@THAT                                                       //  560
M=D                                                         //  561
//restore THIS
@LCL                                                        //  562
D=M                                                         //  563
D=D-1                                                       //  564
D=D-1                                                       //  565
A=D //zeigen auf saved THIS                                 //  566
D=M                                                         //  567
@THIS                                                       //  568
M=D                                                         //  569
//restore ARG
@LCL                                                        //  570
D=M                                                         //  571
D=D-1                                                       //  572
D=D-1                                                       //  573
D=D-1                                                       //  574
A=D // zeigen auf saved ARG                                 //  575
D=M                                                         //  576
@ARG                                                        //  577
M=D                                                         //  578
//Restore LCL
@LCL                                                        //  579
D=M                                                         //  580
D=D-1                                                       //  581
D=D-1                                                       //  582
D=D-1                                                       //  583
D=D-1                                                       //  584
A=D // zeigen auf saved LCL                                 //  585
D=M                                                         //  586
@LCL                                                        //  587
M=D                                                         //  588
//sets SP for caller
@R13                                                        //  589
D=M                                                         //  590
D=D+1                                                       //  591
@SP                                                         //  592
M=D                                                         //  593
//jumps to the return address
@R14                                                        //  594
A=M                                                         //  595
0;JMP                                                       //  596
