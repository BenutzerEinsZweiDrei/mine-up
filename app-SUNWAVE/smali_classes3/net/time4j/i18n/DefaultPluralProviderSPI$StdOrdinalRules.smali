.class Lnet/time4j/i18n/DefaultPluralProviderSPI$StdOrdinalRules;
.super Lnet/time4j/format/PluralRules;
.source "DefaultPluralProviderSPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/i18n/DefaultPluralProviderSPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StdOrdinalRules"
.end annotation


# instance fields
.field private final id:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 510
    invoke-direct {p0}, Lnet/time4j/format/PluralRules;-><init>()V

    .line 512
    iput p1, p0, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdOrdinalRules;->id:I

    return-void
.end method

.method synthetic constructor <init>(ILnet/time4j/i18n/DefaultPluralProviderSPI$1;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1}, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdOrdinalRules;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getCategory(J)Lnet/time4j/format/PluralCategory;
    .locals 42

    move-object/from16 v0, p0

    .line 524
    iget v1, v0, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdOrdinalRules;->id:I

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x14

    const-wide/16 v6, 0x28

    const-wide/16 v8, 0x320

    const-wide/16 v10, 0x50

    const-wide/16 v12, 0xd

    const-wide/16 v14, 0x9

    const-wide/16 v16, 0x8

    const-wide/16 v18, 0xc

    const-wide/16 v20, 0x7

    const-wide/16 v22, 0xb

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x5

    const-wide/16 v28, 0x6

    const-wide/16 v30, 0x4

    const-wide/16 v32, 0x64

    const-wide/16 v34, 0x3

    const-wide/16 v36, 0xa

    const-wide/16 v38, 0x2

    const-wide/16 v40, 0x1

    packed-switch v1, :pswitch_data_0

    .line 747
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 733
    :pswitch_0
    rem-long v1, p1, v32

    cmp-long v3, v1, v40

    if-ltz v3, :cond_0

    cmp-long v3, v1, v30

    if-lez v3, :cond_4

    :cond_0
    const-wide/16 v3, 0x15

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    const-wide/16 v3, 0x18

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    :cond_1
    const-wide/16 v3, 0x29

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    const-wide/16 v3, 0x2c

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    :cond_2
    const-wide/16 v3, 0x3d

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3

    const-wide/16 v3, 0x40

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    :cond_3
    const-wide/16 v3, 0x51

    cmp-long v3, v1, v3

    if-ltz v3, :cond_5

    const-wide/16 v3, 0x54

    cmp-long v3, v1, v3

    if-gtz v3, :cond_5

    .line 741
    :cond_4
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_5
    cmp-long v1, v1, v26

    if-nez v1, :cond_6

    .line 743
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 745
    :cond_6
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_1
    cmp-long v1, p1, v40

    if-eqz v1, :cond_c

    cmp-long v1, p1, v22

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    cmp-long v1, p1, v38

    if-eqz v1, :cond_b

    cmp-long v1, p1, v18

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    cmp-long v1, p1, v34

    if-eqz v1, :cond_a

    cmp-long v1, p1, v12

    if-nez v1, :cond_9

    goto :goto_0

    .line 731
    :cond_9
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 729
    :cond_a
    :goto_0
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 727
    :cond_b
    :goto_1
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 725
    :cond_c
    :goto_2
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_2
    cmp-long v1, p1, v40

    if-eqz v1, :cond_12

    cmp-long v1, p1, v26

    if-eqz v1, :cond_12

    cmp-long v1, p1, v20

    if-eqz v1, :cond_12

    cmp-long v1, p1, v16

    if-eqz v1, :cond_12

    cmp-long v1, p1, v14

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    cmp-long v1, p1, v38

    if-eqz v1, :cond_11

    cmp-long v1, p1, v34

    if-nez v1, :cond_e

    goto :goto_3

    :cond_e
    cmp-long v1, p1, v30

    if-nez v1, :cond_f

    .line 718
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_f
    cmp-long v1, p1, v28

    if-nez v1, :cond_10

    .line 720
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 722
    :cond_10
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 716
    :cond_11
    :goto_3
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 714
    :cond_12
    :goto_4
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 707
    :pswitch_3
    rem-long v1, p1, v36

    cmp-long v3, v1, v28

    if-eqz v3, :cond_14

    cmp-long v1, v1, v14

    if-eqz v1, :cond_14

    cmp-long v1, p1, v36

    if-nez v1, :cond_13

    goto :goto_5

    .line 711
    :cond_13
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 709
    :cond_14
    :goto_5
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 700
    :pswitch_4
    rem-long v1, p1, v36

    .line 701
    rem-long v3, p1, v32

    cmp-long v1, v1, v34

    if-nez v1, :cond_15

    cmp-long v1, v3, v12

    if-eqz v1, :cond_15

    .line 703
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 705
    :cond_15
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 693
    :pswitch_5
    rem-long v1, p1, v36

    .line 694
    rem-long v3, p1, v32

    cmp-long v5, v1, v38

    if-eqz v5, :cond_16

    cmp-long v1, v1, v34

    if-nez v1, :cond_17

    :cond_16
    cmp-long v1, v3, v18

    if-eqz v1, :cond_17

    cmp-long v1, v3, v12

    if-eqz v1, :cond_17

    .line 696
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 698
    :cond_17
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_6
    cmp-long v1, p1, v24

    if-eqz v1, :cond_1f

    cmp-long v1, p1, v20

    if-ltz v1, :cond_18

    cmp-long v1, p1, v14

    if-gtz v1, :cond_18

    goto :goto_8

    :cond_18
    cmp-long v1, p1, v40

    if-nez v1, :cond_19

    .line 683
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_19
    cmp-long v1, p1, v38

    if-nez v1, :cond_1a

    .line 685
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_1a
    cmp-long v1, p1, v34

    if-eqz v1, :cond_1e

    cmp-long v1, p1, v30

    if-nez v1, :cond_1b

    goto :goto_7

    :cond_1b
    cmp-long v1, p1, v26

    if-eqz v1, :cond_1d

    cmp-long v1, p1, v28

    if-nez v1, :cond_1c

    goto :goto_6

    .line 691
    :cond_1c
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 689
    :cond_1d
    :goto_6
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 687
    :cond_1e
    :goto_7
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 681
    :cond_1f
    :goto_8
    sget-object v1, Lnet/time4j/format/PluralCategory;->ZERO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_7
    cmp-long v1, p1, v40

    if-eqz v1, :cond_25

    cmp-long v1, p1, v26

    if-eqz v1, :cond_25

    cmp-long v1, p1, v20

    if-ltz v1, :cond_20

    cmp-long v1, p1, v36

    if-gtz v1, :cond_20

    goto :goto_a

    :cond_20
    cmp-long v1, p1, v38

    if-eqz v1, :cond_24

    cmp-long v1, p1, v34

    if-nez v1, :cond_21

    goto :goto_9

    :cond_21
    cmp-long v1, p1, v30

    if-nez v1, :cond_22

    .line 674
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_22
    cmp-long v1, p1, v28

    if-nez v1, :cond_23

    .line 676
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 678
    :cond_23
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 672
    :cond_24
    :goto_9
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 670
    :cond_25
    :goto_a
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_8
    cmp-long v1, p1, v40

    if-nez v1, :cond_26

    .line 655
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_26
    cmp-long v1, p1, v38

    if-eqz v1, :cond_2a

    cmp-long v1, p1, v34

    if-nez v1, :cond_27

    goto :goto_b

    :cond_27
    cmp-long v1, p1, v30

    if-nez v1, :cond_28

    .line 659
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_28
    cmp-long v1, p1, v28

    if-nez v1, :cond_29

    .line 661
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 663
    :cond_29
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 657
    :cond_2a
    :goto_b
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 628
    :pswitch_9
    rem-long v12, p1, v36

    .line 629
    rem-long v14, p1, v32

    const-wide/16 v18, 0x3e8

    .line 630
    rem-long v18, p1, v18

    cmp-long v1, v12, v40

    if-eqz v1, :cond_30

    cmp-long v1, v12, v38

    if-eqz v1, :cond_30

    cmp-long v1, v12, v26

    if-eqz v1, :cond_30

    cmp-long v1, v12, v20

    if-eqz v1, :cond_30

    cmp-long v1, v12, v16

    if-eqz v1, :cond_30

    cmp-long v1, v14, v4

    if-eqz v1, :cond_30

    const-wide/16 v4, 0x32

    cmp-long v1, v14, v4

    if-eqz v1, :cond_30

    const-wide/16 v4, 0x46

    cmp-long v1, v14, v4

    if-eqz v1, :cond_30

    cmp-long v1, v14, v10

    if-nez v1, :cond_2b

    goto :goto_e

    :cond_2b
    cmp-long v1, v12, v34

    if-eqz v1, :cond_2f

    cmp-long v1, v12, v30

    if-eqz v1, :cond_2f

    cmp-long v1, v18, v32

    if-eqz v1, :cond_2f

    const-wide/16 v4, 0xc8

    cmp-long v1, v18, v4

    if-eqz v1, :cond_2f

    const-wide/16 v4, 0x12c

    cmp-long v1, v18, v4

    if-eqz v1, :cond_2f

    const-wide/16 v4, 0x190

    cmp-long v1, v18, v4

    if-eqz v1, :cond_2f

    const-wide/16 v4, 0x1f4

    cmp-long v1, v18, v4

    if-eqz v1, :cond_2f

    const-wide/16 v4, 0x258

    cmp-long v1, v18, v4

    if-eqz v1, :cond_2f

    const-wide/16 v4, 0x2bc

    cmp-long v1, v18, v4

    if-eqz v1, :cond_2f

    cmp-long v1, v18, v8

    if-eqz v1, :cond_2f

    const-wide/16 v4, 0x384

    cmp-long v1, v18, v4

    if-nez v1, :cond_2c

    goto :goto_d

    :cond_2c
    cmp-long v1, p1, v24

    if-eqz v1, :cond_2e

    cmp-long v1, v12, v28

    if-eqz v1, :cond_2e

    cmp-long v1, v14, v6

    if-eqz v1, :cond_2e

    cmp-long v1, v14, v2

    if-eqz v1, :cond_2e

    const-wide/16 v1, 0x5a

    cmp-long v1, v14, v1

    if-nez v1, :cond_2d

    goto :goto_c

    .line 652
    :cond_2d
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 650
    :cond_2e
    :goto_c
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 645
    :cond_2f
    :goto_d
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 636
    :cond_30
    :goto_e
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 614
    :pswitch_a
    rem-long v1, p1, v36

    .line 615
    rem-long v3, p1, v32

    cmp-long v5, v1, v40

    if-nez v5, :cond_31

    cmp-long v5, v3, v22

    if-eqz v5, :cond_31

    .line 617
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_31
    cmp-long v5, v1, v38

    if-nez v5, :cond_32

    cmp-long v5, v3, v18

    if-eqz v5, :cond_32

    .line 619
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_32
    cmp-long v5, v1, v20

    if-eqz v5, :cond_33

    cmp-long v1, v1, v16

    if-nez v1, :cond_34

    :cond_33
    const-wide/16 v1, 0x11

    cmp-long v1, v3, v1

    if-eqz v1, :cond_34

    const-wide/16 v1, 0x12

    cmp-long v1, v3, v1

    if-eqz v1, :cond_34

    .line 624
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 626
    :cond_34
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_b
    cmp-long v1, p1, v40

    if-eqz v1, :cond_38

    cmp-long v1, p1, v34

    if-nez v1, :cond_35

    goto :goto_f

    :cond_35
    cmp-long v1, p1, v38

    if-nez v1, :cond_36

    .line 608
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_36
    cmp-long v1, p1, v30

    if-nez v1, :cond_37

    .line 610
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 612
    :cond_37
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 606
    :cond_38
    :goto_f
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_c
    cmp-long v1, p1, v40

    if-nez v1, :cond_39

    .line 597
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_39
    cmp-long v1, p1, v38

    if-eqz v1, :cond_3c

    cmp-long v1, p1, v34

    if-nez v1, :cond_3a

    goto :goto_10

    :cond_3a
    cmp-long v1, p1, v30

    if-nez v1, :cond_3b

    .line 601
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 603
    :cond_3b
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 599
    :cond_3c
    :goto_10
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 585
    :pswitch_d
    rem-long v1, p1, v36

    .line 586
    rem-long v3, p1, v32

    cmp-long v5, v1, v40

    if-nez v5, :cond_3d

    cmp-long v5, v3, v22

    if-eqz v5, :cond_3d

    .line 588
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_3d
    cmp-long v5, v1, v38

    if-nez v5, :cond_3e

    cmp-long v5, v3, v18

    if-eqz v5, :cond_3e

    .line 590
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_3e
    cmp-long v1, v1, v34

    if-nez v1, :cond_3f

    cmp-long v1, v3, v12

    if-eqz v1, :cond_3f

    .line 592
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 594
    :cond_3f
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_e
    cmp-long v1, p1, v40

    if-nez v1, :cond_40

    .line 579
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 580
    :cond_40
    rem-long v1, p1, v36

    cmp-long v1, v1, v30

    if-nez v1, :cond_41

    rem-long v1, p1, v32

    const-wide/16 v3, 0xe

    cmp-long v1, v1, v3

    if-eqz v1, :cond_41

    .line 581
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 583
    :cond_41
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 564
    :pswitch_f
    rem-long v8, p1, v32

    cmp-long v1, p1, v40

    if-nez v1, :cond_42

    .line 566
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :cond_42
    cmp-long v1, p1, v24

    if-eqz v1, :cond_45

    cmp-long v1, v8, v38

    if-ltz v1, :cond_43

    cmp-long v1, v8, v4

    if-lez v1, :cond_45

    :cond_43
    cmp-long v1, v8, v6

    if-eqz v1, :cond_45

    cmp-long v1, v8, v2

    if-eqz v1, :cond_45

    cmp-long v1, v8, v10

    if-nez v1, :cond_44

    goto :goto_11

    .line 576
    :cond_44
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 574
    :cond_45
    :goto_11
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_10
    cmp-long v1, p1, v16

    if-eqz v1, :cond_47

    cmp-long v1, p1, v22

    if-eqz v1, :cond_47

    cmp-long v1, p1, v10

    if-eqz v1, :cond_47

    cmp-long v1, p1, v8

    if-nez v1, :cond_46

    goto :goto_12

    .line 562
    :cond_46
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 560
    :cond_47
    :goto_12
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 553
    :pswitch_11
    rem-long v1, p1, v36

    cmp-long v3, v1, v28

    if-eqz v3, :cond_49

    cmp-long v3, v1, v14

    if-eqz v3, :cond_49

    cmp-long v1, v1, v24

    if-nez v1, :cond_48

    cmp-long v1, p1, v24

    if-eqz v1, :cond_48

    goto :goto_13

    .line 557
    :cond_48
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 555
    :cond_49
    :goto_13
    sget-object v1, Lnet/time4j/format/PluralCategory;->MANY:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_12
    cmp-long v1, p1, v40

    if-ltz v1, :cond_4a

    cmp-long v1, p1, v30

    if-gtz v1, :cond_4a

    .line 549
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 551
    :cond_4a
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_13
    cmp-long v1, p1, v40

    if-eqz v1, :cond_4c

    cmp-long v1, p1, v26

    if-nez v1, :cond_4b

    goto :goto_14

    .line 546
    :cond_4b
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 544
    :cond_4c
    :goto_14
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_14
    cmp-long v1, p1, v40

    if-nez v1, :cond_4d

    .line 539
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 541
    :cond_4d
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 528
    :pswitch_15
    rem-long v1, p1, v36

    .line 529
    rem-long v3, p1, v32

    cmp-long v5, v1, v40

    if-eqz v5, :cond_4e

    cmp-long v1, v1, v38

    if-nez v1, :cond_4f

    :cond_4e
    cmp-long v1, v3, v22

    if-eqz v1, :cond_4f

    cmp-long v1, v3, v18

    if-eqz v1, :cond_4f

    .line 534
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 536
    :cond_4f
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    .line 526
    :pswitch_16
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 755
    sget-object v0, Lnet/time4j/format/NumberType;->ORDINALS:Lnet/time4j/format/NumberType;

    return-object v0
.end method
