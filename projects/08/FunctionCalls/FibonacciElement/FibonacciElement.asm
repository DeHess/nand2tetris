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










// function Main.fibonacci 0
(Main.fibonacci)
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
// push constant 2
@2                                                          //  65
D=A                                                         //  66
@SP                                                         //  67
A=M                                                         //  68
M=D                                                         //  69
@SP                                                         //  70
M=M+1                                                       //  71
// lt
@SP                                                         //  72
M=M-1                                                       //  73
A=M                                                         //  74
D=M                                                         //  75
@SP                                                         //  76
M=M-1                                                       //  77
A=M                                                         //  78
D=D-M                                                       //  79
@Lesser_1                                                   //  80
D;JGT                                                       //  81
@SP                                                         //  82
A=M                                                         //  83
M=0                                                         //  84
@End_Lesser_1                                               //  85
0;JMP                                                       //  86
(Lesser_1)
@0                                                          //  87
D=A                                                         //  88
@SP                                                         //  89
A=M                                                         //  90
M=D-1                                                       //  91
(End_Lesser_1)
@SP                                                         //  92
M=M+1                                                       //  93
// if-goto IF_TRUE
@SP                                                         //  94
M=M-1                                                       //  95
A=M                                                         //  96
D=M                                                         //  97
@IF_TRUE                                                    //  98
D;JNE                                                       //  99
// goto IF_FALSE
@IF_FALSE                                                   //  100
0;JMP                                                       //  101
// label IF_TRUE
(IF_TRUE)
// push argument 0
@0                                                          //  102
D=A                                                         //  103
@2                                                          //  104
A=D+M                                                       //  105
D=M                                                         //  106
@SP                                                         //  107
A=M                                                         //  108
M=D                                                         //  109
@SP                                                         //  110
M=M+1                                                       //  111
// return
//zwischenspeichern ARG auf R13
@ARG                                                        //  112
D=M                                                         //  113
@R13                                                        //  114
M=D                                                         //  115
//ZwischenSpeichern der return address auf R14
@LCL                                                        //  116
D=M                                                         //  117
D=D-1                                                       //  118
D=D-1                                                       //  119
D=D-1                                                       //  120
D=D-1                                                       //  121
D=D-1                                                       //  122
A=D //zeigen auf return address                             //  123
D=M                                                         //  124
@R14                                                        //  125
M=D                                                         //  126
//return value into arg 0
@SP                                                         //  127
A=M-1                                                       //  128
D=M                                                         //  129
@ARG                                                        //  130
A=M                                                         //  131
M=D                                                         //  132
//restoring segment pointers
//restore THAT
@LCL                                                        //  133
A=M-1 // zeigen auf saved THAT                              //  134
D=M                                                         //  135
@THAT                                                       //  136
M=D                                                         //  137
//restore THIS
@LCL                                                        //  138
D=M                                                         //  139
D=D-1                                                       //  140
D=D-1                                                       //  141
A=D //zeigen auf saved THIS                                 //  142
D=M                                                         //  143
@THIS                                                       //  144
M=D                                                         //  145
//restore ARG
@LCL                                                        //  146
D=M                                                         //  147
D=D-1                                                       //  148
D=D-1                                                       //  149
D=D-1                                                       //  150
A=D // zeigen auf saved ARG                                 //  151
D=M                                                         //  152
@ARG                                                        //  153
M=D                                                         //  154
//Restore LCL
@LCL                                                        //  155
D=M                                                         //  156
D=D-1                                                       //  157
D=D-1                                                       //  158
D=D-1                                                       //  159
D=D-1                                                       //  160
A=D // zeigen auf saved LCL                                 //  161
D=M                                                         //  162
@LCL                                                        //  163
M=D                                                         //  164
//sets SP for caller
@R13                                                        //  165
D=M                                                         //  166
D=D+1                                                       //  167
@SP                                                         //  168
M=D                                                         //  169
//jumps to the return address
@R14                                                        //  170
A=M                                                         //  171
0;JMP                                                       //  172
// label IF_FALSE
(IF_FALSE)
// push argument 0
@0                                                          //  173
D=A                                                         //  174
@2                                                          //  175
A=D+M                                                       //  176
D=M                                                         //  177
@SP                                                         //  178
A=M                                                         //  179
M=D                                                         //  180
@SP                                                         //  181
M=M+1                                                       //  182
// push constant 2
@2                                                          //  183
D=A                                                         //  184
@SP                                                         //  185
A=M                                                         //  186
M=D                                                         //  187
@SP                                                         //  188
M=M+1                                                       //  189
// sub
@SP                                                         //  190
M=M-1                                                       //  191
M=M-1                                                       //  192
A=M                                                         //  193
D=M                                                         //  194
@SP                                                         //  195
M=M+1                                                       //  196
A=M                                                         //  197
D=D-M                                                       //  198
@SP                                                         //  199
M=M-1                                                       //  200
A=M                                                         //  201
M=D                                                         //  202
@SP                                                         //  203
M=M+1                                                       //  204
// call Main.fibonacci 1
//Arg zwischenspeichern in R15
@ARG                                                        //  205
D=M                                                         //  206
@R15                                                        //  207
M=D                                                         //  208
//Sets ARG
@SP                                                         //  209
D=M                                                         //  210
@1                                                          //  211
D=D-A                                                       //  212
@ARG                                                        //  213
M=D                                                         //  214
//return Addresse auf den Stack
@returnLabel1                                               //  215
D=A                                                         //  216
@SP                                                         //  217
A=M                                                         //  218
M=D                                                         //  219
@SP                                                         //  220
M=M+1                                                       //  221
//LCL auf Stack
@LCL                                                        //  222
D=M                                                         //  223
@SP                                                         //  224
A=M                                                         //  225
M=D                                                         //  226
@SP                                                         //  227
M=M+1                                                       //  228
//ARG auf Stack
@R15                                                        //  229
D=M                                                         //  230
@SP                                                         //  231
A=M                                                         //  232
M=D                                                         //  233
@SP                                                         //  234
M=M+1                                                       //  235
//THIS auf Stack
@THIS                                                       //  236
D=M                                                         //  237
@SP                                                         //  238
A=M                                                         //  239
M=D                                                         //  240
@SP                                                         //  241
M=M+1                                                       //  242
//THAT auf Stack
@THAT                                                       //  243
D=M                                                         //  244
@SP                                                         //  245
A=M                                                         //  246
M=D                                                         //  247
@SP                                                         //  248
M=M+1                                                       //  249
// Local auf neuen Wert setzen = SP
@SP                                                         //  250
D=M                                                         //  251
@LCL                                                        //  252
M=D                                                         //  253
@Main.fibonacci                                             //  254
0;JMP                                                       //  255
(returnLabel1) // hier geht es weiter nach dem call von Main.fibonacci
// push argument 0
@0                                                          //  256
D=A                                                         //  257
@2                                                          //  258
A=D+M                                                       //  259
D=M                                                         //  260
@SP                                                         //  261
A=M                                                         //  262
M=D                                                         //  263
@SP                                                         //  264
M=M+1                                                       //  265
// push constant 1
@1                                                          //  266
D=A                                                         //  267
@SP                                                         //  268
A=M                                                         //  269
M=D                                                         //  270
@SP                                                         //  271
M=M+1                                                       //  272
// sub
@SP                                                         //  273
M=M-1                                                       //  274
M=M-1                                                       //  275
A=M                                                         //  276
D=M                                                         //  277
@SP                                                         //  278
M=M+1                                                       //  279
A=M                                                         //  280
D=D-M                                                       //  281
@SP                                                         //  282
M=M-1                                                       //  283
A=M                                                         //  284
M=D                                                         //  285
@SP                                                         //  286
M=M+1                                                       //  287
// call Main.fibonacci 1
//Arg zwischenspeichern in R15
@ARG                                                        //  288
D=M                                                         //  289
@R15                                                        //  290
M=D                                                         //  291
//Sets ARG
@SP                                                         //  292
D=M                                                         //  293
@1                                                          //  294
D=D-A                                                       //  295
@ARG                                                        //  296
M=D                                                         //  297
//return Addresse auf den Stack
@returnLabel2                                               //  298
D=A                                                         //  299
@SP                                                         //  300
A=M                                                         //  301
M=D                                                         //  302
@SP                                                         //  303
M=M+1                                                       //  304
//LCL auf Stack
@LCL                                                        //  305
D=M                                                         //  306
@SP                                                         //  307
A=M                                                         //  308
M=D                                                         //  309
@SP                                                         //  310
M=M+1                                                       //  311
//ARG auf Stack
@R15                                                        //  312
D=M                                                         //  313
@SP                                                         //  314
A=M                                                         //  315
M=D                                                         //  316
@SP                                                         //  317
M=M+1                                                       //  318
//THIS auf Stack
@THIS                                                       //  319
D=M                                                         //  320
@SP                                                         //  321
A=M                                                         //  322
M=D                                                         //  323
@SP                                                         //  324
M=M+1                                                       //  325
//THAT auf Stack
@THAT                                                       //  326
D=M                                                         //  327
@SP                                                         //  328
A=M                                                         //  329
M=D                                                         //  330
@SP                                                         //  331
M=M+1                                                       //  332
// Local auf neuen Wert setzen = SP
@SP                                                         //  333
D=M                                                         //  334
@LCL                                                        //  335
M=D                                                         //  336
@Main.fibonacci                                             //  337
0;JMP                                                       //  338
(returnLabel2) // hier geht es weiter nach dem call von Main.fibonacci
// add
@SP                                                         //  339
M=M-1                                                       //  340
A=M                                                         //  341
D=M                                                         //  342
@SP                                                         //  343
M=M-1                                                       //  344
A=M                                                         //  345
M=D+M                                                       //  346
@SP                                                         //  347
M=M+1                                                       //  348
// return
//zwischenspeichern ARG auf R13
@ARG                                                        //  349
D=M                                                         //  350
@R13                                                        //  351
M=D                                                         //  352
//ZwischenSpeichern der return address auf R14
@LCL                                                        //  353
D=M                                                         //  354
D=D-1                                                       //  355
D=D-1                                                       //  356
D=D-1                                                       //  357
D=D-1                                                       //  358
D=D-1                                                       //  359
A=D //zeigen auf return address                             //  360
D=M                                                         //  361
@R14                                                        //  362
M=D                                                         //  363
//return value into arg 0
@SP                                                         //  364
A=M-1                                                       //  365
D=M                                                         //  366
@ARG                                                        //  367
A=M                                                         //  368
M=D                                                         //  369
//restoring segment pointers
//restore THAT
@LCL                                                        //  370
A=M-1 // zeigen auf saved THAT                              //  371
D=M                                                         //  372
@THAT                                                       //  373
M=D                                                         //  374
//restore THIS
@LCL                                                        //  375
D=M                                                         //  376
D=D-1                                                       //  377
D=D-1                                                       //  378
A=D //zeigen auf saved THIS                                 //  379
D=M                                                         //  380
@THIS                                                       //  381
M=D                                                         //  382
//restore ARG
@LCL                                                        //  383
D=M                                                         //  384
D=D-1                                                       //  385
D=D-1                                                       //  386
D=D-1                                                       //  387
A=D // zeigen auf saved ARG                                 //  388
D=M                                                         //  389
@ARG                                                        //  390
M=D                                                         //  391
//Restore LCL
@LCL                                                        //  392
D=M                                                         //  393
D=D-1                                                       //  394
D=D-1                                                       //  395
D=D-1                                                       //  396
D=D-1                                                       //  397
A=D // zeigen auf saved LCL                                 //  398
D=M                                                         //  399
@LCL                                                        //  400
M=D                                                         //  401
//sets SP for caller
@R13                                                        //  402
D=M                                                         //  403
D=D+1                                                       //  404
@SP                                                         //  405
M=D                                                         //  406
//jumps to the return address
@R14                                                        //  407
A=M                                                         //  408
0;JMP                                                       //  409










// function Sys.init 0
(Sys.init)
// push constant 4
@4                                                          //  410
D=A                                                         //  411
@SP                                                         //  412
A=M                                                         //  413
M=D                                                         //  414
@SP                                                         //  415
M=M+1                                                       //  416
// call Main.fibonacci 1
//Arg zwischenspeichern in R15
@ARG                                                        //  417
D=M                                                         //  418
@R15                                                        //  419
M=D                                                         //  420
//Sets ARG
@SP                                                         //  421
D=M                                                         //  422
@1                                                          //  423
D=D-A                                                       //  424
@ARG                                                        //  425
M=D                                                         //  426
//return Addresse auf den Stack
@returnLabel3                                               //  427
D=A                                                         //  428
@SP                                                         //  429
A=M                                                         //  430
M=D                                                         //  431
@SP                                                         //  432
M=M+1                                                       //  433
//LCL auf Stack
@LCL                                                        //  434
D=M                                                         //  435
@SP                                                         //  436
A=M                                                         //  437
M=D                                                         //  438
@SP                                                         //  439
M=M+1                                                       //  440
//ARG auf Stack
@R15                                                        //  441
D=M                                                         //  442
@SP                                                         //  443
A=M                                                         //  444
M=D                                                         //  445
@SP                                                         //  446
M=M+1                                                       //  447
//THIS auf Stack
@THIS                                                       //  448
D=M                                                         //  449
@SP                                                         //  450
A=M                                                         //  451
M=D                                                         //  452
@SP                                                         //  453
M=M+1                                                       //  454
//THAT auf Stack
@THAT                                                       //  455
D=M                                                         //  456
@SP                                                         //  457
A=M                                                         //  458
M=D                                                         //  459
@SP                                                         //  460
M=M+1                                                       //  461
// Local auf neuen Wert setzen = SP
@SP                                                         //  462
D=M                                                         //  463
@LCL                                                        //  464
M=D                                                         //  465
@Main.fibonacci                                             //  466
0;JMP                                                       //  467
(returnLabel3) // hier geht es weiter nach dem call von Main.fibonacci
// label WHILE
(WHILE)
// goto WHILE
@WHILE                                                      //  468
0;JMP                                                       //  469
