.class Lnet/time4j/i18n/DefaultPluralProviderSPI$StdCardinalRules;
.super Lnet/time4j/format/PluralRules;
.source "DefaultPluralProviderSPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/i18n/DefaultPluralProviderSPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StdCardinalRules"
.end annotation


# instance fields
.field private final id:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lnet/time4j/format/PluralRules;-><init>()V

    .line 209
    iput p1, p0, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdCardinalRules;->id:I

    return-void
.end method

.method synthetic constructor <init>(ILnet/time4j/i18n/DefaultPluralProviderSPI$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdCardinalRules;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getCategory(J)Lnet/time4j/format/PluralCategory;
    .locals 34

    move-object/from16 v0, p0

    .line 221
    iget v1, v0, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdCardinalRules;->id:I

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0x63

    const-wide/16 v6, 0x6

    const-wide/16 v8, 0xd

    const-wide/16 v10, 0xe

    const-wide/16 v12, 0x9

    const-wide/16 v14, 0xc

    const-wide/16 v16, 0x13

    const-wide/16 v18, 0x4

    const-wide/16 v20, 0x3

    const-wide/16 v22, 0xb

    const-wide/16 v24, 0x64

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0xa

    const-wide/16 v30, 0x2

    const-wide/16 v32, 0x1

    packed-switch v1, :pswitch_data_0

    .line 486
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_0
    cmp-long v1, p1, v26

    if-nez v1, :cond_0

    .line 472
    sget-object v1, Lnet/time4j/format/PluralCategory;->ZERO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_0
    cmp-long v1, p1, v32

    if-nez v1, :cond_1

    .line 474
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 476
    :cond_1
    rem-long v1, p1, v24

    cmp-long v3, v1, v30

    if-eqz v3, :cond_7

    const-wide/16 v3, 0x16

    cmp-long v3, v1, v3

    if-eqz v3, :cond_7

    const-wide/16 v3, 0x2a

    cmp-long v3, v1, v3

    if-eqz v3, :cond_7

    const-wide/16 v3, 0x3e

    cmp-long v3, v1, v3

    if-eqz v3, :cond_7

    const-wide/16 v3, 0x52

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    cmp-long v3, v1, v20

    if-eqz v3, :cond_6

    const-wide/16 v3, 0x17

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    const-wide/16 v3, 0x2b

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    const-wide/16 v3, 0x3f

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    const-wide/16 v3, 0x53

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    cmp-long v3, v1, v32

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x15

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x29

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x3d

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x51

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    goto :goto_0

    .line 484
    :cond_4
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 482
    :cond_5
    :goto_0
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 480
    :cond_6
    :goto_1
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 478
    :cond_7
    :goto_2
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 461
    :pswitch_1
    rem-long v1, p1, v24

    cmp-long v3, v1, v32

    if-nez v3, :cond_8

    .line 463
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_8
    cmp-long v3, v1, v30

    if-nez v3, :cond_9

    .line 465
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_9
    cmp-long v3, v1, v20

    if-eqz v3, :cond_b

    cmp-long v1, v1, v18

    if-nez v1, :cond_a

    goto :goto_3

    .line 469
    :cond_a
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 467
    :cond_b
    :goto_3
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_2
    cmp-long v1, p1, v26

    if-nez v1, :cond_c

    .line 449
    sget-object v1, Lnet/time4j/format/PluralCategory;->ZERO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_c
    cmp-long v1, p1, v32

    if-nez v1, :cond_d

    .line 451
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_d
    cmp-long v1, p1, v30

    if-nez v1, :cond_e

    .line 453
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_e
    cmp-long v1, p1, v20

    if-nez v1, :cond_f

    .line 455
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_f
    cmp-long v1, p1, v6

    if-nez v1, :cond_10

    .line 457
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 459
    :cond_10
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_3
    cmp-long v1, p1, v26

    if-nez v1, :cond_11

    .line 434
    sget-object v1, Lnet/time4j/format/PluralCategory;->ZERO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_11
    cmp-long v1, p1, v32

    if-nez v1, :cond_12

    .line 436
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_12
    cmp-long v1, p1, v30

    if-nez v1, :cond_13

    .line 438
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 440
    :cond_13
    rem-long v1, p1, v24

    cmp-long v3, v1, v20

    if-ltz v3, :cond_14

    cmp-long v3, v1, v28

    if-gtz v3, :cond_14

    .line 442
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_14
    cmp-long v3, v1, v22

    if-ltz v3, :cond_15

    cmp-long v1, v1, v4

    if-gtz v1, :cond_15

    .line 444
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 446
    :cond_15
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 420
    :pswitch_4
    rem-long v1, p1, v28

    .line 421
    rem-long v3, p1, v24

    cmp-long v5, v1, v32

    if-nez v5, :cond_16

    .line 423
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_16
    cmp-long v1, v1, v30

    if-nez v1, :cond_17

    .line 425
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_17
    cmp-long v1, v3, v26

    if-eqz v1, :cond_19

    const-wide/16 v1, 0x14

    cmp-long v1, v3, v1

    if-eqz v1, :cond_19

    const-wide/16 v1, 0x28

    cmp-long v1, v3, v1

    if-eqz v1, :cond_19

    const-wide/16 v1, 0x3c

    cmp-long v1, v3, v1

    if-eqz v1, :cond_19

    const-wide/16 v1, 0x50

    cmp-long v1, v3, v1

    if-nez v1, :cond_18

    goto :goto_4

    .line 431
    :cond_18
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 429
    :cond_19
    :goto_4
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_5
    cmp-long v1, p1, v32

    if-nez v1, :cond_1a

    .line 410
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_1a
    cmp-long v1, p1, v30

    if-nez v1, :cond_1b

    .line 412
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_1b
    cmp-long v1, p1, v20

    if-ltz v1, :cond_1c

    cmp-long v1, p1, v6

    if-gtz v1, :cond_1c

    .line 414
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_1c
    const-wide/16 v1, 0x7

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1d

    cmp-long v1, p1, v28

    if-gtz v1, :cond_1d

    .line 416
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 418
    :cond_1d
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 388
    :pswitch_6
    rem-long v1, p1, v28

    .line 389
    rem-long v6, p1, v24

    cmp-long v3, v1, v32

    if-nez v3, :cond_1e

    cmp-long v3, v6, v22

    if-eqz v3, :cond_1e

    const-wide/16 v8, 0x47

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1e

    const-wide/16 v8, 0x5b

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1e

    .line 391
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_1e
    cmp-long v3, v1, v30

    if-nez v3, :cond_1f

    cmp-long v3, v6, v14

    if-eqz v3, :cond_1f

    const-wide/16 v8, 0x48

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1f

    const-wide/16 v8, 0x5c

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1f

    .line 396
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_1f
    cmp-long v3, v1, v20

    if-eqz v3, :cond_20

    cmp-long v3, v1, v18

    if-eqz v3, :cond_20

    cmp-long v1, v1, v12

    if-nez v1, :cond_23

    :cond_20
    cmp-long v1, v6, v28

    if-ltz v1, :cond_21

    cmp-long v1, v6, v16

    if-lez v1, :cond_23

    :cond_21
    const-wide/16 v1, 0x46

    cmp-long v1, v6, v1

    if-ltz v1, :cond_22

    const-wide/16 v1, 0x4f

    cmp-long v1, v6, v1

    if-lez v1, :cond_23

    :cond_22
    const-wide/16 v1, 0x5a

    cmp-long v1, v6, v1

    if-ltz v1, :cond_25

    cmp-long v1, v6, v4

    if-lez v1, :cond_23

    goto :goto_5

    :cond_23
    cmp-long v1, p1, v26

    if-eqz v1, :cond_24

    const-wide/32 v1, 0xf4240

    .line 404
    rem-long v1, p1, v1

    cmp-long v1, v1, v26

    if-nez v1, :cond_24

    .line 405
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 407
    :cond_24
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 403
    :cond_25
    :goto_5
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_7
    cmp-long v1, p1, v32

    if-nez v1, :cond_26

    .line 378
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 380
    :cond_26
    rem-long v1, p1, v24

    cmp-long v3, p1, v26

    if-eqz v3, :cond_29

    cmp-long v3, v1, v30

    if-ltz v3, :cond_27

    cmp-long v3, v1, v28

    if-gtz v3, :cond_27

    goto :goto_6

    :cond_27
    cmp-long v3, v1, v22

    if-ltz v3, :cond_28

    cmp-long v1, v1, v16

    if-gtz v1, :cond_28

    .line 384
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 386
    :cond_28
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 382
    :cond_29
    :goto_6
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 368
    :pswitch_8
    rem-long v1, p1, v28

    .line 369
    rem-long v3, p1, v24

    cmp-long v5, v1, v32

    if-nez v5, :cond_2b

    cmp-long v5, v3, v22

    if-ltz v5, :cond_2a

    cmp-long v5, v3, v16

    if-lez v5, :cond_2b

    .line 371
    :cond_2a
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_2b
    cmp-long v5, v1, v30

    if-ltz v5, :cond_2d

    cmp-long v1, v1, v12

    if-gtz v1, :cond_2d

    cmp-long v1, v3, v22

    if-ltz v1, :cond_2c

    cmp-long v1, v3, v16

    if-lez v1, :cond_2d

    .line 373
    :cond_2c
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 375
    :cond_2d
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 353
    :pswitch_9
    rem-long v4, p1, v28

    .line 354
    rem-long v6, p1, v24

    cmp-long v1, v4, v32

    if-nez v1, :cond_2e

    cmp-long v1, v6, v22

    if-eqz v1, :cond_2e

    .line 356
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_2e
    cmp-long v1, v4, v30

    if-ltz v1, :cond_2f

    cmp-long v1, v4, v18

    if-gtz v1, :cond_2f

    cmp-long v1, v6, v14

    if-eqz v1, :cond_2f

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2f

    cmp-long v1, v6, v10

    if-eqz v1, :cond_2f

    .line 358
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_2f
    cmp-long v1, v4, v26

    if-eqz v1, :cond_32

    cmp-long v1, v4, v2

    if-ltz v1, :cond_30

    cmp-long v1, v4, v12

    if-lez v1, :cond_32

    :cond_30
    cmp-long v1, v6, v22

    if-ltz v1, :cond_31

    cmp-long v1, v6, v10

    if-gtz v1, :cond_31

    goto :goto_7

    .line 366
    :cond_31
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 364
    :cond_32
    :goto_7
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_a
    cmp-long v1, p1, v32

    if-nez v1, :cond_33

    .line 338
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 340
    :cond_33
    rem-long v4, p1, v28

    .line 341
    rem-long v6, p1, v24

    cmp-long v1, v4, v30

    if-ltz v1, :cond_34

    cmp-long v1, v4, v18

    if-gtz v1, :cond_34

    cmp-long v1, v6, v14

    if-eqz v1, :cond_34

    cmp-long v1, v6, v8

    if-eqz v1, :cond_34

    cmp-long v1, v6, v10

    if-eqz v1, :cond_34

    .line 343
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_34
    cmp-long v1, v4, v26

    if-ltz v1, :cond_35

    cmp-long v1, v4, v32

    if-lez v1, :cond_37

    :cond_35
    cmp-long v1, v4, v2

    if-ltz v1, :cond_36

    cmp-long v1, v4, v12

    if-lez v1, :cond_37

    :cond_36
    cmp-long v1, v6, v14

    if-ltz v1, :cond_38

    cmp-long v1, v6, v10

    if-gtz v1, :cond_38

    .line 349
    :cond_37
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 351
    :cond_38
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_b
    cmp-long v1, p1, v32

    if-nez v1, :cond_39

    .line 331
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_39
    cmp-long v1, p1, v30

    if-ltz v1, :cond_3a

    cmp-long v1, p1, v18

    if-gtz v1, :cond_3a

    .line 333
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 335
    :cond_3a
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_c
    cmp-long v1, p1, v32

    if-nez v1, :cond_3b

    .line 322
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_3b
    cmp-long v1, p1, v30

    if-nez v1, :cond_3c

    .line 324
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_3c
    cmp-long v1, p1, v22

    if-ltz v1, :cond_3d

    .line 325
    rem-long v1, p1, v28

    cmp-long v1, v1, v26

    if-nez v1, :cond_3d

    .line 326
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 328
    :cond_3d
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 311
    :pswitch_d
    rem-long v1, p1, v24

    cmp-long v3, v1, v32

    if-nez v3, :cond_3e

    .line 313
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_3e
    cmp-long v3, v1, v30

    if-nez v3, :cond_3f

    .line 315
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_3f
    cmp-long v3, v1, v20

    if-eqz v3, :cond_41

    cmp-long v1, v1, v18

    if-nez v1, :cond_40

    goto :goto_8

    .line 319
    :cond_40
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 317
    :cond_41
    :goto_8
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_e
    cmp-long v1, p1, v32

    if-eqz v1, :cond_48

    cmp-long v1, p1, v22

    if-nez v1, :cond_42

    goto :goto_a

    :cond_42
    cmp-long v1, p1, v30

    if-eqz v1, :cond_47

    cmp-long v1, p1, v14

    if-nez v1, :cond_43

    goto :goto_9

    :cond_43
    cmp-long v1, p1, v20

    if-ltz v1, :cond_44

    cmp-long v1, p1, v28

    if-lez v1, :cond_45

    :cond_44
    cmp-long v1, p1, v8

    if-ltz v1, :cond_46

    cmp-long v1, p1, v16

    if-gtz v1, :cond_46

    .line 307
    :cond_45
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 309
    :cond_46
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 305
    :cond_47
    :goto_9
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 303
    :cond_48
    :goto_a
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 292
    :pswitch_f
    rem-long v1, p1, v24

    .line 293
    rem-long v3, p1, v28

    cmp-long v5, v3, v32

    if-nez v5, :cond_49

    cmp-long v5, v1, v22

    if-eqz v5, :cond_49

    .line 294
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_49
    cmp-long v5, v3, v30

    if-ltz v5, :cond_4a

    cmp-long v3, v3, v18

    if-gtz v3, :cond_4a

    cmp-long v3, v1, v14

    if-eqz v3, :cond_4a

    cmp-long v3, v1, v8

    if-eqz v3, :cond_4a

    cmp-long v1, v1, v10

    if-eqz v1, :cond_4a

    .line 298
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 300
    :cond_4a
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_10
    cmp-long v1, p1, v32

    if-nez v1, :cond_4b

    .line 282
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_4b
    cmp-long v1, p1, v26

    if-nez v1, :cond_4c

    .line 284
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 286
    :cond_4c
    rem-long v1, p1, v24

    cmp-long v3, v1, v30

    if-ltz v3, :cond_4d

    cmp-long v1, v1, v16

    if-gtz v1, :cond_4d

    .line 288
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 290
    :cond_4d
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_11
    cmp-long v1, p1, v26

    if-eqz v1, :cond_50

    cmp-long v1, p1, v32

    if-nez v1, :cond_4e

    goto :goto_b

    :cond_4e
    cmp-long v1, p1, v30

    if-ltz v1, :cond_4f

    cmp-long v1, p1, v28

    if-gtz v1, :cond_4f

    .line 277
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 279
    :cond_4f
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 275
    :cond_50
    :goto_b
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_12
    cmp-long v1, p1, v32

    if-nez v1, :cond_51

    .line 268
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_51
    cmp-long v1, p1, v30

    if-nez v1, :cond_52

    .line 270
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 272
    :cond_52
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_13
    cmp-long v1, p1, v26

    if-nez v1, :cond_53

    .line 261
    sget-object v1, Lnet/time4j/format/PluralCategory;->ZERO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_53
    cmp-long v1, p1, v32

    if-nez v1, :cond_54

    .line 263
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 265
    :cond_54
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 249
    :pswitch_14
    rem-long v1, p1, v28

    cmp-long v3, v1, v26

    if-nez v3, :cond_55

    .line 250
    sget-object v1, Lnet/time4j/format/PluralCategory;->ZERO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 252
    :cond_55
    rem-long v3, p1, v24

    cmp-long v5, v3, v22

    if-ltz v5, :cond_56

    cmp-long v3, v3, v16

    if-gtz v3, :cond_56

    .line 254
    sget-object v1, Lnet/time4j/format/PluralCategory;->ZERO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_56
    cmp-long v1, v1, v32

    if-nez v1, :cond_57

    .line 256
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 258
    :cond_57
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_15
    cmp-long v1, p1, v32

    if-ltz v1, :cond_58

    cmp-long v1, p1, v20

    if-gtz v1, :cond_58

    .line 240
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 242
    :cond_58
    rem-long v1, p1, v28

    cmp-long v3, v1, v18

    if-eqz v3, :cond_5a

    cmp-long v3, v1, v6

    if-eqz v3, :cond_5a

    cmp-long v1, v1, v12

    if-nez v1, :cond_59

    goto :goto_c

    .line 246
    :cond_59
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 244
    :cond_5a
    :goto_c
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 237
    :pswitch_16
    rem-long v1, p1, v28

    cmp-long v1, v1, v32

    if-nez v1, :cond_5b

    rem-long v1, p1, v24

    cmp-long v1, v1, v22

    if-eqz v1, :cond_5b

    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    goto :goto_d

    :cond_5b
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    :goto_d
    return-object v1

    .line 232
    :pswitch_17
    rem-long v1, p1, v28

    cmp-long v1, v1, v32

    if-nez v1, :cond_5c

    rem-long v1, p1, v24

    cmp-long v1, v1, v22

    if-eqz v1, :cond_5c

    .line 233
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 235
    :cond_5c
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_18
    cmp-long v1, p1, v26

    if-eqz v1, :cond_5e

    cmp-long v1, p1, v32

    if-eqz v1, :cond_5e

    cmp-long v1, p1, v22

    if-ltz v1, :cond_5d

    cmp-long v1, p1, v4

    if-gtz v1, :cond_5d

    goto :goto_e

    .line 230
    :cond_5d
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 228
    :cond_5e
    :goto_e
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_19
    cmp-long v1, p1, v26

    if-eqz v1, :cond_60

    cmp-long v1, p1, v32

    if-nez v1, :cond_5f

    goto :goto_f

    .line 225
    :cond_5f
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    goto :goto_10

    :cond_60
    :goto_f
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    :goto_10
    return-object v1

    :pswitch_1a
    cmp-long v1, p1, v32

    if-nez v1, :cond_61

    .line 223
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    goto :goto_11

    :cond_61
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    :goto_11
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNumberType()Lnet/time4j/format/NumberType;
    .locals 1

    .line 494
    sget-object v0, Lnet/time4j/format/NumberType;->CARDINALS:Lnet/time4j/format/NumberType;

    return-object v0
.end method
