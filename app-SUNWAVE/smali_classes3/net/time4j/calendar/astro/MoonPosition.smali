.class public Lnet/time4j/calendar/astro/MoonPosition;
.super Ljava/lang/Object;
.source "MoonPosition.java"

# interfaces
.implements Lnet/time4j/calendar/astro/EquatorialCoordinates;
.implements Ljava/io/Serializable;


# static fields
.field private static final APOGEE_COEFF:[D

.field private static final APOGEE_COEFF_T:[D

.field private static final APOGEE_D:[I

.field private static final APOGEE_F:[I

.field private static final APOGEE_M:[I

.field private static final A_D:[I

.field private static final A_F:[I

.field private static final A_M:[I

.field private static final A_M2:[I

.field private static final B_D:[I

.field private static final B_F:[I

.field private static final B_M:[I

.field private static final B_M2:[I

.field private static final COEFF_B:[I

.field private static final COEFF_L:[I

.field private static final COEFF_R:[I

.field private static final MIO:I = 0xf4240

.field private static final PERIGEE_COEFF:[D

.field private static final PERIGEE_COEFF_T:[D

.field private static final PERIGEE_D:[I

.field private static final PERIGEE_F:[I

.field private static final PERIGEE_M:[I

.field private static final serialVersionUID:J = 0x4f9d6b60f9a85e2cL


# instance fields
.field private final azimuth:D

.field private final declination:D

.field private final distance:D

.field private final elevation:D

.field private final rightAscension:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3c

    new-array v1, v0, [I

    .line 52
    fill-array-data v1, :array_0

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->A_D:[I

    new-array v1, v0, [I

    .line 56
    fill-array-data v1, :array_1

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->A_M:[I

    new-array v1, v0, [I

    .line 60
    fill-array-data v1, :array_2

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->A_M2:[I

    new-array v1, v0, [I

    .line 64
    fill-array-data v1, :array_3

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->A_F:[I

    new-array v1, v0, [I

    .line 68
    fill-array-data v1, :array_4

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->COEFF_L:[I

    new-array v1, v0, [I

    .line 74
    fill-array-data v1, :array_5

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->COEFF_R:[I

    new-array v1, v0, [I

    .line 82
    fill-array-data v1, :array_6

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->B_D:[I

    new-array v1, v0, [I

    .line 86
    fill-array-data v1, :array_7

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->B_M:[I

    new-array v1, v0, [I

    .line 90
    fill-array-data v1, :array_8

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->B_M2:[I

    new-array v1, v0, [I

    .line 94
    fill-array-data v1, :array_9

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->B_F:[I

    new-array v1, v0, [I

    .line 98
    fill-array-data v1, :array_a

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->COEFF_B:[I

    new-array v1, v0, [I

    .line 106
    fill-array-data v1, :array_b

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_D:[I

    new-array v1, v0, [I

    .line 110
    fill-array-data v1, :array_c

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_F:[I

    new-array v1, v0, [I

    .line 114
    fill-array-data v1, :array_d

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_M:[I

    new-array v0, v0, [D

    .line 118
    fill-array-data v0, :array_e

    sput-object v0, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_COEFF:[D

    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 125
    fill-array-data v0, :array_f

    sput-object v0, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_COEFF_T:[D

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 130
    fill-array-data v1, :array_10

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_D:[I

    new-array v1, v0, [I

    .line 133
    fill-array-data v1, :array_11

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_F:[I

    new-array v1, v0, [I

    .line 136
    fill-array-data v1, :array_12

    sput-object v1, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_M:[I

    new-array v0, v0, [D

    .line 139
    fill-array-data v0, :array_13

    sput-object v0, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_COEFF:[D

    const/4 v0, 0x4

    new-array v0, v0, [D

    .line 144
    fill-array-data v0, :array_14

    sput-object v0, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_COEFF_T:[D

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x0
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x0
        0x1
        0x0
        0x2
        0x0
        0x0
        0x4
        0x0
        0x4
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
        0x4
        0x2
        0x0
        0x2
        0x2
        0x1
        0x2
        0x0
        0x0
        0x2
        0x2
        0x2
        0x4
        0x0
        0x3
        0x2
        0x4
        0x0
        0x2
        0x2
        0x2
        0x4
        0x0
        0x4
        0x1
        0x2
        0x0
        0x1
        0x3
        0x4
        0x2
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        -0x1
        0x0
        -0x1
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
        0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        -0x1
        0x0
        -0x2
        0x1
        0x2
        -0x2
        0x0
        0x0
        -0x1
        0x0
        0x0
        0x1
        -0x1
        0x2
        0x2
        0x1
        -0x1
        0x0
        0x0
        -0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        -0x1
        0x2
        0x1
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        -0x1
        0x0
        0x2
        0x0
        0x0
        -0x2
        -0x1
        0x1
        0x0
        -0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        -0x1
        0x3
        -0x2
        -0x1
        0x0
        -0x1
        0x0
        0x1
        0x2
        0x0
        -0x3
        -0x2
        -0x1
        -0x2
        0x1
        0x0
        0x2
        0x0
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        0x1
        -0x2
        -0x1
        -0x1
        -0x2
        0x0
        0x1
        0x4
        0x0
        -0x2
        0x0
        0x2
        0x1
        -0x2
        -0x3
        0x2
        0x1
        -0x1
        0x3
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2
        0x2
        -0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2
        0x2
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2
        0x0
        0x0
        0x0
        0x0
        -0x2
        -0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2
    .end array-data

    :array_4
    .array-data 4
        0x5ff586
        0x1370ab
        0xa0b8a
        0x34272
        -0x2d31c
        -0x1be9c
        0xe5a9
        0xdeea
        0xd04a
        0xb2be
        -0x9fdb
        -0x87a0
        -0x76af
        0x3bdf
        -0x30f0
        0x2ae4
        0x29b3
        0x2732
        0x2164
        -0x1ed0
        -0x1a6e
        -0x142b
        0x137b
        0xfc4
        0xf9a
        0xf15
        0xe51
        -0xa81
        -0xa2a
        0x956
        -0x92c
        0x8bc
        -0x848
        -0x815
        0x800
        -0x6ed
        -0x63b
        0x4bf
        -0x456
        -0x37c
        -0x32a
        0x2f7
        -0x2c9
        -0x2bc
        0x2b3
        0x254
        0x225
        0x219
        0x208
        -0x1e7
        -0x18f
        -0x17d
        0x15f
        -0x154
        0x14a
        0x147
        -0x143
        0x12b
        0x126
        0x0
    .end array-data

    :array_5
    .array-data 4
        -0x13efd8b
        -0x3871a7
        -0x2d1ac0
        -0x8b245
        0xbef8
        -0xc4d
        0x3c18e
        -0x2524a
        -0x29aed
        -0x31f2a
        -0x1fa54
        0x1a8c7
        0x19933
        0x2851
        0x0
        0x1372d
        -0x87de
        -0x5aaa
        -0x5484
        0x5e90
        0x7868
        -0x20bb
        -0x4123
        -0x321f
        -0x28cd
        -0x2d82
        0x3843
        -0x1b5b
        0x0
        0x2748
        0x18b2
        -0x269c
        0x1677
        0x0
        -0x1356
        0x1022
        0x0
        -0xf76
        0x0
        0xcba
        0xa38
        -0x769
        -0x845
        0x932
        0x0
        0x0
        -0x58f
        -0x45d
        -0x623
        -0x6cb
        0x0
        -0x1145
        0x0
        0x0
        0x0
        0x0
        0x48d
        0x0
        0x0
        0x2230
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x0
        0x2
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x0
        0x4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x4
        0x4
        0x0
        0x4
        0x2
        0x2
        0x2
        0x2
        0x0
        0x2
        0x2
        0x2
        0x2
        0x4
        0x2
        0x2
        0x0
        0x2
        0x1
        0x1
        0x0
        0x2
        0x1
        0x2
        0x0
        0x4
        0x4
        0x1
        0x4
        0x1
        0x4
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x0
        0x0
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
        -0x1
        -0x2
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        -0x1
        0x1
        0x0
        -0x1
        0x0
        0x0
        0x0
        -0x1
        -0x2
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x1
        0x1
        0x0
        -0x1
        -0x1
        0x0
        0x2
        0x1
        0x2
        0x0
        -0x2
        0x1
        0x0
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        -0x1
        0x0
        0x1
        0x1
        0x0
        0x0
        0x3
        0x0
        -0x1
        0x1
        -0x2
        0x0
        0x2
        0x1
        -0x2
        0x3
        0x2
        -0x3
        -0x1
        0x0
        0x0
        0x1
        0x0
        0x1
        0x1
        0x0
        0x0
        -0x2
        -0x1
        0x1
        -0x2
        0x2
        -0x2
        -0x1
        0x1
        0x1
        -0x1
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        -0x1
        -0x1
        0x1
        -0x1
        0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        0x1
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        0x1
        -0x3
        0x1
        -0x3
        -0x1
        -0x1
        0x1
        -0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x4e3fba
        0x4481a
        0x43cbd
        0x2a4b5
        0xd875
        0xb4bf
        0x7f3d
        0x432e
        0x2432
        0x2276
        0x2018
        0x10e4
        0x1068
        -0xd1f
        0x99f
        0x8a3
        0x811
        -0x74e
        0x724
        -0x702
        -0x6d5
        -0x61d
        -0x5d3
        -0x5c3
        -0x582
        -0x540
        -0x537
        0x453
        0x3fd
        0x341
        0x309
        0x29f
        0x25f
        0x254
        0x1eb
        -0x1c3
        0x1b7
        0x1a6
        0x1a5
        -0x16e
        -0x15f
        0x14b
        0x13b
        0x12e
        -0x11b
        -0xe5
        0xdf
        0xdf
        -0xdc
        -0xdc
        -0xb9
        0xb5
        -0xb1
        0xb0
        0xa6
        -0xa4
        0x84
        -0x77
        0x73
        0x6b
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x4
        0x6
        0x8
        0x2
        0x0
        0xa
        0x4
        0x6
        0xc
        0x1
        0x8
        0xe
        0x0
        0x3
        0xa
        0x10
        0xc
        0x5
        0x2
        0x12
        0xe
        0x7
        0x2
        0x14
        0x1
        0x10
        0x4
        0x9
        0x4
        0x2
        0x4
        0x6
        0x16
        0x12
        0x6
        0xb
        0x8
        0x4
        0x6
        0x3
        0x5
        0xd
        0x14
        0x3
        0x4
        0x1
        0x16
        0x0
        0x6
        0x2
        0x0
        0x0
        0x2
        0x0
        0x2
        0x18
        0x4
        0x2
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x4
        -0x2
        -0x2
        0x0
        0x2
        0x4
        0x2
        -0x2
        0x0
        -0x4
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        0x0
        -0x1
        -0x1
        0x0
        0x0
        -0x1
        0x0
        0x0
        0x0
        -0x1
        0x0
        -0x1
        0x0
        0x0
        0x0
        -0x1
        0x0
        0x1
        0x0
        0x1
        -0x1
        0x1
        0x0
        0x0
        -0x2
        -0x2
        -0x2
        0x0
        -0x1
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x0
        -0x1
        0x2
        -0x2
        0x2
        -0x1
        0x0
        0x0
        0x1
        0x2
        -0x1
        0x0
        -0x2
        0x2
        0x0
        0x0
        0x2
        -0x1
    .end array-data

    :array_e
    .array-data 8
        -0x40052b6ae7d566cfL    # -1.6769
        0x3fdd5e9e1b089a02L    # 0.4589
        -0x40383e425aee6320L    # -0.1856
        0x3fb69ad42c3c9eedL    # 0.0883
        -0x404c36113404ea4bL    # -0.0773
        0x3fa9b3d07c84b5ddL    # 0.0502
        -0x405872b020c49ba6L    # -0.046
        0x3fa59b3d07c84b5eL    # 0.0422
        -0x4065c91d14e3bcd3L    # -0.0256
        0x3f99e83e425aee63L    # 0.0253
        0x3f9844d013a92a30L    # 0.0237
        0x3f9096bb98c7e282L    # 0.0162
        -0x40724dd2f1a9fbe7L    # -0.0145
        0x3f8a6b50b0f27bb3L    # 0.0129
        -0x40790ff972474539L    # -0.0112
        -0x407ab367a0f9096cL    # -0.0104
        0x3f819ce075f6fd22L    # 0.0086
        0x3f7c432ca57a786cL    # 0.0069
        0x3f7b089a02752546L    # 0.0066
        -0x408a4a8c154c985fL    # -0.0053
        -0x408ab367a0f9096cL    # -0.0052
        -0x408d288ce703afb8L    # -0.0046
        -0x408f34d6a161e4f7L    # -0.0041
        0x3f70624dd2f1a9fcL    # 0.004
        0x3f6a36e2eb1c432dL    # 0.0032
        -0x4095c91d14e3bcd3L    # -0.0032
        0x3f69652bd3c36113L    # 0.0031
        -0x40983e425aee6320L    # -0.0029
        0x3f661e4f765fd8aeL    # 0.0027
        0x3f661e4f765fd8aeL    # 0.0027
        -0x4099e1b089a02752L    # -0.0027
        0x3f63a92a30553261L    # 0.0024
        -0x409ecbfb15b573ebL    # -0.0021
        -0x409ecbfb15b573ebL    # -0.0021
        -0x409ecbfb15b573ebL    # -0.0021
        0x3f5f212d77318fc5L    # 0.0019
        -0x40a28240b780346eL    # -0.0018
        -0x40a90ff972474539L    # -0.0014
        -0x40a90ff972474539L    # -0.0014
        -0x40a90ff972474539L    # -0.0014
        0x3f56f0068db8bac7L    # 0.0014
        -0x40a90ff972474539L    # -0.0014
        0x3f554c985f06f694L    # 0.0013
        0x3f554c985f06f694L    # 0.0013
        0x3f5205bc01a36e2fL    # 0.0011
        -0x40adfa43fe5c91d1L    # -0.0011
        -0x40af9db22d0e5604L    # -0.001
        -0x40b28240b780346eL    # -9.0E-4
        -0x40b5c91d14e3bcd3L    # -8.0E-4
        0x3f4a36e2eb1c432dL    # 8.0E-4
        0x3f4a36e2eb1c432dL    # 8.0E-4
        0x3f46f0068db8bac7L    # 7.0E-4
        0x3f46f0068db8bac7L    # 7.0E-4
        0x3f46f0068db8bac7L    # 7.0E-4
        -0x40bc56d5cfaacd9fL    # -6.0E-4
        -0x40bc56d5cfaacd9fL    # -6.0E-4
        0x3f43a92a30553261L    # 6.0E-4
        0x3f40624dd2f1a9fcL    # 5.0E-4
        0x3f40624dd2f1a9fcL    # 5.0E-4
        -0x40c5c91d14e3bcd3L    # -4.0E-4
    .end array-data

    :array_f
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x3f28e757928e0c9eL    # 1.9E-4
        -0x40def5ec80c73abdL    # -1.3E-4
        0x0
        -0x40e32a0663c74fb5L    # -1.1E-4
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x4
        0x0
        0x2
        0x0
        0x1
        0x6
        0x4
        0x2
        0x1
        0x8
        0x6
        0x2
        0x2
        0x3
        0x4
        0x8
        0x4
        0xa
        0x3
        0x0
        0x2
        0x2
        0x6
        0x6
        0xa
        0x5
        0x4
        0x0
        0xc
        0x2
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        -0x2
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        -0x2
        0x2
        0x0
        0x2
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x0
        0x1
        -0x1
        0x0
        0x0
        0x0
        -0x1
        0x0
        0x1
        0x0
        -0x1
        0x0
        -0x2
        0x0
        0x0
        -0x1
        -0x2
        0x0
        0x1
        0x2
        0x1
        0x2
        0x0
        -0x2
        -0x1
        0x0
        0x0
        0x1
        0x0
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 8
        0x3fdc1bda5119ce07L    # 0.4392
        0x3fb182a9930be0dfL    # 0.0684
        0x3fa758e219652bd4L    # 0.0456
        0x3fa5cfaacd9e83e4L    # 0.0426
        0x3f95b573eab367a1L    # 0.0212
        -0x406ca57a786c2268L    # -0.0189
        0x3f8d7dbf487fcb92L    # 0.0144
        0x3f872474538ef34dL    # 0.0113
        0x3f73404ea4a8c155L    # 0.0047
        0x3f6d7dbf487fcb92L    # 0.0036
        0x3f6cac083126e979L    # 0.0035
        0x3f6bda5119ce075fL    # 0.0034
        -0x409425aee631f8a1L    # -0.0034
        0x3f6205bc01a36e2fL    # 0.0022
        -0x40a425aee631f8a1L    # -0.0017
        0x3f554c985f06f694L    # 0.0013
        0x3f5205bc01a36e2fL    # 0.0011
        0x3f50624dd2f1a9fcL    # 0.001
        0x3f4d7dbf487fcb92L    # 9.0E-4
        0x3f46f0068db8bac7L    # 7.0E-4
        0x3f43a92a30553261L    # 6.0E-4
        0x3f40624dd2f1a9fcL    # 5.0E-4
        0x3f40624dd2f1a9fcL    # 5.0E-4
        0x3f3a36e2eb1c432dL    # 4.0E-4
        0x3f3a36e2eb1c432dL    # 4.0E-4
        0x3f3a36e2eb1c432dL    # 4.0E-4
        -0x40c5c91d14e3bcd3L    # -4.0E-4
        -0x40c5c91d14e3bcd3L    # -4.0E-4
        0x3f33a92a30553261L    # 3.0E-4
        0x3f33a92a30553261L    # 3.0E-4
        0x3f33a92a30553261L    # 3.0E-4
        -0x40cc56d5cfaacd9fL    # -3.0E-4
    .end array-data

    :array_14
    .array-data 8
        0x0
        0x0
        -0x40e32a0663c74fb5L    # -1.1E-4
        -0x40e32a0663c74fb5L    # -1.1E-4
    .end array-data
.end method

.method private constructor <init>(DDDDD)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-wide p1, p0, Lnet/time4j/calendar/astro/MoonPosition;->rightAscension:D

    .line 195
    iput-wide p3, p0, Lnet/time4j/calendar/astro/MoonPosition;->declination:D

    .line 196
    iput-wide p5, p0, Lnet/time4j/calendar/astro/MoonPosition;->azimuth:D

    .line 197
    iput-wide p7, p0, Lnet/time4j/calendar/astro/MoonPosition;->elevation:D

    .line 198
    iput-wide p9, p0, Lnet/time4j/calendar/astro/MoonPosition;->distance:D

    return-void
.end method

.method private static anomalistic(Lnet/time4j/Moment;Z)Lnet/time4j/Moment;
    .locals 7

    .line 726
    sget-object v0, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;

    .line 727
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, v0}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object v0

    .line 728
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v1

    int-to-double v1, v1

    .line 729
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->lengthOfYear()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v1, v5

    add-double/2addr v3, v1

    const-wide v0, 0x409f3fe147ae147bL    # 1999.97

    sub-double/2addr v3, v0

    const-wide v0, 0x402a82d0e5604189L    # 13.2555

    mul-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 731
    invoke-static {v0, p1}, Lnet/time4j/calendar/astro/MoonPosition;->calculateMeeus50(IZ)Lnet/time4j/Moment;

    move-result-object v1

    .line 733
    :goto_0
    invoke-virtual {v1, p0}, Lnet/time4j/Moment;->isAfter(Lnet/time4j/scale/UniversalTime;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 735
    invoke-static {v0, p1}, Lnet/time4j/calendar/astro/MoonPosition;->calculateMeeus50(IZ)Lnet/time4j/Moment;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static at(Lnet/time4j/Moment;Lnet/time4j/calendar/astro/GeoLocation;)Lnet/time4j/calendar/astro/MoonPosition;
    .locals 25

    .line 223
    invoke-static/range {p0 .. p0}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->getCenturyJ2000()D

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->calculateMeeus47(D)[D

    move-result-object v0

    const/4 v1, 0x2

    .line 224
    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const/4 v4, 0x3

    .line 225
    aget-wide v5, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    const/4 v7, 0x4

    .line 226
    aget-wide v17, v0, v7

    .line 227
    invoke-interface/range {p1 .. p1}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 228
    invoke-interface/range {p1 .. p1}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 229
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 230
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 231
    invoke-interface/range {p1 .. p1}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result v13

    .line 233
    invoke-static/range {p0 .. p0}, Lnet/time4j/calendar/astro/JulianDay;->ofMeanSolarTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v14

    invoke-virtual {v14}, Lnet/time4j/calendar/astro/JulianDay;->getMJD()D

    move-result-wide v14

    const/16 v16, 0x0

    .line 234
    aget-wide v19, v0, v16

    const/16 v16, 0x1

    aget-wide v21, v0, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    .line 235
    invoke-static {v14, v15}, Lnet/time4j/calendar/astro/AstroUtils;->gmst(D)D

    move-result-wide v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    add-double v14, v14, v19

    add-double/2addr v14, v9

    sub-double/2addr v14, v2

    .line 238
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v9, v9, v19

    add-double/2addr v2, v9

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 241
    sget-object v9, Lnet/time4j/calendar/astro/StdSolarCalculator;->TIME4J:Lnet/time4j/calendar/astro/StdSolarCalculator;

    move-wide/from16 v19, v5

    invoke-interface/range {p1 .. p1}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9, v4, v5, v13}, Lnet/time4j/calendar/astro/StdSolarCalculator;->getGeodeticAngle(DI)D

    move-result-wide v4

    const-wide/high16 v21, -0x4020000000000000L    # -0.5

    sub-double v21, v21, v4

    cmpl-double v4, v2, v21

    if-ltz v4, :cond_0

    const-wide v4, 0x40b8ea23d70a3d71L    # 6378.14

    div-double v4, v4, v17

    .line 244
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    .line 245
    invoke-static {v13}, Lnet/time4j/calendar/astro/AstroUtils;->refractionFactorOfStdAtmosphere(I)D

    move-result-wide v21

    .line 246
    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/AstroUtils;->getRefraction(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    const-wide/high16 v23, 0x404e000000000000L    # 60.0

    div-double v21, v21, v23

    sub-double/2addr v2, v4

    add-double v2, v2, v21

    .line 252
    :cond_0
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v6, v11

    sub-double/2addr v13, v6

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    add-double v13, v4, v6

    .line 254
    new-instance v4, Lnet/time4j/calendar/astro/MoonPosition;

    aget-wide v5, v0, v1

    const/4 v1, 0x3

    aget-wide v11, v0, v1

    move-object v8, v4

    move-wide v9, v5

    move-wide v15, v2

    invoke-direct/range {v8 .. v18}, Lnet/time4j/calendar/astro/MoonPosition;-><init>(DDDDD)V

    return-object v4
.end method

.method static calculateMeeus47(D)[D
    .locals 31

    move-wide/from16 v0, p0

    .line 479
    invoke-static/range {p0 .. p1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanLongitude(D)D

    move-result-wide v2

    .line 482
    invoke-static/range {p0 .. p1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanElongation(D)D

    move-result-wide v4

    .line 485
    invoke-static/range {p0 .. p1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanAnomalyOfSun(D)D

    move-result-wide v6

    .line 488
    invoke-static/range {p0 .. p1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanAnomalyOfMoon(D)D

    move-result-wide v8

    .line 491
    invoke-static/range {p0 .. p1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanDistanceOfMoon(D)D

    move-result-wide v10

    const-wide v12, 0x3edf09b082ea2aacL    # 7.4E-6

    mul-double/2addr v12, v0

    const-wide v14, 0x3f649c6f36ef8056L    # 0.002516

    add-double/2addr v12, v14

    mul-double/2addr v12, v0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    mul-double v16, v12, v12

    .line 500
    sget-object v14, Lnet/time4j/calendar/astro/MoonPosition;->A_D:[I

    array-length v14, v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const-wide/16 v18, 0x0

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    :goto_0
    if-ltz v14, :cond_2

    .line 502
    sget-object v26, Lnet/time4j/calendar/astro/MoonPosition;->A_M:[I

    aget v15, v26, v14

    move-wide/from16 v27, v12

    const/4 v12, -0x2

    if-eq v15, v12, :cond_1

    const/4 v12, -0x1

    if-eq v15, v12, :cond_0

    const/4 v12, 0x1

    if-eq v15, v12, :cond_0

    const/4 v12, 0x2

    if-eq v15, v12, :cond_1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    move-wide/from16 v12, v27

    goto :goto_1

    :cond_1
    move-wide/from16 v12, v16

    .line 514
    :goto_1
    sget-object v15, Lnet/time4j/calendar/astro/MoonPosition;->A_D:[I

    aget v15, v15, v14

    move-wide/from16 v29, v2

    int-to-double v2, v15

    mul-double/2addr v2, v4

    aget v15, v26, v14

    int-to-double v0, v15

    mul-double/2addr v0, v6

    add-double/2addr v2, v0

    sget-object v0, Lnet/time4j/calendar/astro/MoonPosition;->A_M2:[I

    aget v0, v0, v14

    int-to-double v0, v0

    mul-double/2addr v0, v8

    add-double/2addr v2, v0

    sget-object v0, Lnet/time4j/calendar/astro/MoonPosition;->A_F:[I

    aget v0, v0, v14

    int-to-double v0, v0

    mul-double/2addr v0, v10

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 516
    sget-object v2, Lnet/time4j/calendar/astro/MoonPosition;->COEFF_L:[I

    aget v2, v2, v14

    int-to-double v2, v2

    mul-double/2addr v2, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v2, v2, v24

    add-double v20, v20, v2

    .line 517
    sget-object v2, Lnet/time4j/calendar/astro/MoonPosition;->COEFF_R:[I

    aget v2, v2, v14

    int-to-double v2, v2

    mul-double/2addr v2, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    add-double v22, v22, v2

    add-int/lit8 v14, v14, -0x1

    move-wide/from16 v0, p0

    move-wide/from16 v12, v27

    move-wide/from16 v2, v29

    goto :goto_0

    :cond_2
    move-wide/from16 v29, v2

    move-wide/from16 v27, v12

    .line 522
    sget-object v0, Lnet/time4j/calendar/astro/MoonPosition;->B_D:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_5

    .line 524
    sget-object v2, Lnet/time4j/calendar/astro/MoonPosition;->B_M:[I

    aget v3, v2, v0

    const/4 v12, -0x2

    const/4 v13, -0x1

    if-eq v3, v12, :cond_4

    if-eq v3, v13, :cond_3

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_3
    move-wide/from16 v14, v27

    goto :goto_3

    :cond_4
    move-wide/from16 v14, v16

    .line 536
    :goto_3
    sget-object v1, Lnet/time4j/calendar/astro/MoonPosition;->B_D:[I

    aget v1, v1, v0

    int-to-double v12, v1

    mul-double/2addr v12, v4

    aget v1, v2, v0

    int-to-double v1, v1

    mul-double/2addr v1, v6

    add-double/2addr v12, v1

    sget-object v1, Lnet/time4j/calendar/astro/MoonPosition;->B_M2:[I

    aget v1, v1, v0

    int-to-double v1, v1

    mul-double/2addr v1, v8

    add-double/2addr v12, v1

    sget-object v1, Lnet/time4j/calendar/astro/MoonPosition;->B_F:[I

    aget v1, v1, v0

    int-to-double v1, v1

    mul-double/2addr v1, v10

    add-double/2addr v12, v1

    .line 538
    sget-object v1, Lnet/time4j/calendar/astro/MoonPosition;->COEFF_B:[I

    aget v1, v1, v0

    int-to-double v1, v1

    mul-double/2addr v1, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v1, v12

    add-double v18, v18, v1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const-wide v0, 0x405df00000000000L    # 119.75

    const-wide v2, 0x40607b2b020c49baL    # 131.849

    move-wide/from16 v4, p0

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    const-wide v0, 0x404a8b851eb851ecL    # 53.09

    const-wide v6, 0x411d408128f5c28fL    # 479264.29

    mul-double/2addr v6, v4

    add-double/2addr v6, v0

    const-wide v0, 0x4073973333333333L    # 313.45

    const-wide v12, 0x411d5fc9ef9db22dL    # 481266.484

    mul-double/2addr v12, v4

    add-double/2addr v12, v0

    const-wide v0, 0x40aeec0000000000L    # 3958.0

    .line 546
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v0

    const-wide v0, 0x409ea80000000000L    # 1962.0

    sub-double v16, v29, v10

    .line 547
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v0

    add-double v14, v14, v16

    const-wide v0, 0x4073e00000000000L    # 318.0

    .line 548
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    add-double/2addr v14, v6

    add-double v20, v20, v14

    const-wide v0, -0x3f5e8a0000000000L    # -2235.0

    .line 552
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    const-wide v0, 0x4077e00000000000L    # 382.0

    .line 553
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v0

    add-double/2addr v6, v12

    sub-double v0, v2, v10

    .line 554
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v12, 0x4065e00000000000L    # 175.0

    mul-double/2addr v0, v12

    add-double/2addr v6, v0

    add-double/2addr v2, v10

    .line 555
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v12

    add-double/2addr v6, v0

    const-wide v0, 0x405fc00000000000L    # 127.0

    sub-double v2, v29, v8

    .line 556
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    add-double/2addr v6, v2

    const-wide v0, 0x405cc00000000000L    # 115.0

    add-double v2, v29, v8

    .line 557
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    sub-double/2addr v6, v2

    add-double v18, v18, v6

    const/4 v0, 0x5

    new-array v0, v0, [D

    .line 561
    invoke-static {v4, v5, v0}, Lnet/time4j/calendar/astro/StdSolarCalculator;->nutations(D[D)V

    .line 562
    invoke-static/range {p0 .. p1}, Lnet/time4j/calendar/astro/StdSolarCalculator;->meanObliquity(D)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    add-double/2addr v1, v4

    .line 563
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double v20, v20, v5

    add-double v7, v29, v20

    const/4 v9, 0x0

    .line 564
    aget-wide v9, v0, v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    div-double v18, v18, v5

    .line 565
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    const-wide v9, 0x41177fa23d70a3d7L    # 385000.56

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double v22, v22, v11

    add-double v22, v22, v9

    .line 570
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    .line 571
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 569
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    .line 575
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    .line 576
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    add-double/2addr v11, v5

    .line 574
    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v1, v0, v5

    .line 581
    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/time4j/calendar/astro/AstroUtils;->toRange_0_360(D)D

    move-result-wide v1

    const/4 v5, 0x2

    aput-wide v1, v0, v5

    const/4 v1, 0x3

    .line 582
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aput-wide v22, v0, v1

    return-object v0
.end method

.method private static calculateMeeus50(IZ)Lnet/time4j/Moment;
    .locals 23

    move/from16 v0, p0

    int-to-double v0, v0

    if-eqz p1, :cond_0

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    add-double/2addr v0, v4

    const-wide v4, 0x4094b63333333333L    # 1325.55

    div-double v4, v0, v4

    mul-double v6, v4, v4

    const-wide v8, 0x4142b42755bc01a3L    # 2451534.6698

    const-wide v10, 0x403b8df6fb498ce7L    # 27.55454989

    mul-double/2addr v10, v0

    add-double/2addr v10, v8

    const-wide v8, -0x40ba132eb0ed7336L    # -6.691E-4

    const-wide v12, -0x414d94203b925aeaL    # -1.098E-6

    const-wide v14, 0x3e365575e0ff4a28L    # 5.2E-9

    mul-double/2addr v14, v4

    add-double/2addr v14, v12

    mul-double/2addr v14, v4

    add-double/2addr v14, v8

    mul-double/2addr v14, v6

    add-double/2addr v10, v14

    const-wide v8, 0x40657d5f6fd21ff3L    # 171.9179

    const-wide v12, 0x4074fe91d6210965L    # 335.9106046

    mul-double/2addr v12, v0

    add-double/2addr v12, v8

    const-wide v8, -0x407b710a2e572b60L    # -0.0100383

    const-wide v14, -0x4117c1c5b2a731b3L    # -1.156E-5

    const-wide v16, 0x3e6d87247702c0d0L    # 5.5E-8

    mul-double v16, v16, v4

    add-double v16, v16, v14

    mul-double v16, v16, v4

    add-double v16, v16, v8

    mul-double v16, v16, v6

    add-double v12, v12, v16

    .line 693
    invoke-static {v12, v13}, Lnet/time4j/calendar/astro/MoonPosition;->normalize(D)D

    move-result-wide v8

    const-wide v12, 0x4075b5902de00d1bL    # 347.3477

    const-wide v14, 0x403b2863c099b8a3L    # 27.1577721

    mul-double/2addr v14, v0

    add-double/2addr v14, v12

    const-wide v12, -0x40b55c0fcb4f1e4bL    # -8.13E-4

    const-wide v16, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v16, v16, v4

    sub-double v12, v12, v16

    mul-double/2addr v12, v6

    add-double/2addr v14, v12

    .line 695
    invoke-static {v14, v15}, Lnet/time4j/calendar/astro/MoonPosition;->normalize(D)D

    move-result-wide v12

    const-wide v14, 0x4073c9c63f141206L    # 316.6109

    const-wide v16, 0x4076c875eda80ea7L    # 364.5287911

    mul-double v0, v0, v16

    add-double/2addr v0, v14

    const-wide v14, -0x4076639f0bc961deL    # -0.0125053

    const-wide v16, 0x3eef09b082ea2aacL    # 1.48E-5

    mul-double v16, v16, v4

    sub-double v14, v14, v16

    mul-double/2addr v14, v6

    add-double/2addr v0, v14

    .line 697
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->normalize(D)D

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 699
    sget-object v6, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_D:[I

    goto :goto_1

    :cond_1
    sget-object v6, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_D:[I

    :goto_1
    if-eqz p1, :cond_2

    .line 700
    sget-object v7, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_M:[I

    goto :goto_2

    :cond_2
    sget-object v7, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_M:[I

    :goto_2
    if-eqz p1, :cond_3

    .line 701
    sget-object v14, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_F:[I

    goto :goto_3

    :cond_3
    sget-object v14, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_F:[I

    :goto_3
    if-eqz p1, :cond_4

    .line 702
    sget-object v15, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_COEFF:[D

    goto :goto_4

    :cond_4
    sget-object v15, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_COEFF:[D

    :goto_4
    if-eqz p1, :cond_5

    .line 703
    sget-object v16, Lnet/time4j/calendar/astro/MoonPosition;->APOGEE_COEFF_T:[D

    goto :goto_5

    :cond_5
    sget-object v16, Lnet/time4j/calendar/astro/MoonPosition;->PERIGEE_COEFF_T:[D

    :goto_5
    move-object/from16 v2, v16

    .line 707
    array-length v3, v6

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v17, 0x0

    :goto_6
    if-ltz v3, :cond_7

    move-wide/from16 v19, v10

    .line 708
    aget v10, v6, v3

    int-to-double v10, v10

    mul-double/2addr v10, v8

    move-object/from16 v16, v6

    aget v6, v7, v3

    move-object/from16 p0, v7

    int-to-double v6, v6

    mul-double/2addr v6, v12

    add-double/2addr v10, v6

    aget v6, v14, v3

    int-to-double v6, v6

    mul-double/2addr v6, v0

    add-double/2addr v10, v6

    .line 709
    aget-wide v6, v15, v3

    move-wide/from16 v21, v0

    .line 710
    array-length v0, v2

    if-ge v3, v0, :cond_6

    .line 711
    aget-wide v0, v2, v3

    mul-double/2addr v0, v4

    add-double/2addr v6, v0

    .line 713
    :cond_6
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double v17, v17, v6

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v7, p0

    move-object/from16 v6, v16

    move-wide/from16 v10, v19

    move-wide/from16 v0, v21

    goto :goto_6

    :cond_7
    move-wide/from16 v19, v10

    add-double v10, v19, v17

    .line 716
    invoke-static {v10, v11}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->toMoment()Lnet/time4j/Moment;

    move-result-object v0

    sget-object v1, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    return-object v0
.end method

.method static getMeanAnomalyOfMoon(D)D
    .locals 4

    const-wide v0, 0x3e723efb35cf75e4L    # 6.797172376291463E-8

    mul-double/2addr v0, p0

    const-wide v2, 0x3eee16b4c2888d6cL    # 1.4347408140719379E-5

    sub-double/2addr v2, v0

    mul-double/2addr v2, p0

    const-wide v0, 0x3f81e702d8f8543aL    # 0.0087414

    add-double/2addr v2, v0

    mul-double/2addr v2, p0

    const-wide v0, 0x411d203b78535c9eL    # 477198.8675055

    add-double/2addr v2, v0

    mul-double/2addr v2, p0

    const-wide p0, 0x4060ded424afe2b1L    # 134.9633964

    add-double/2addr v2, p0

    .line 669
    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/MoonPosition;->normalize(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static getMeanAnomalyOfSun(D)D
    .locals 4

    const-wide v0, 0x3e65ec0b38a4f66dL    # 4.083299305839118E-8

    mul-double/2addr v0, p0

    const-wide v2, -0x40dbde0a0bf27c8aL    # -1.536E-4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide v2, 0x40e193e19bfba959L    # 35999.0502909

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide p0, 0x407658773b356034L    # 357.5291092

    add-double/2addr v0, p0

    .line 663
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->normalize(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static getMeanDistanceOfMoon(D)D
    .locals 4

    const-wide v0, 0x3e13e66669f9cccdL    # 1.1583324645839848E-9

    mul-double/2addr v0, p0

    const-wide v2, -0x416cf7a9148a0bedL    # -2.8360748723766307E-7

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide v2, -0x409211375fe89de4L    # -0.0036539

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide v2, 0x411d7e0811f1a0c2L    # 483202.0175233

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide p0, 0x4057516a012599edL    # 93.272095

    add-double/2addr v0, p0

    .line 675
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->normalize(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static getMeanElongation(D)D
    .locals 4

    const-wide v0, 0x3e42fe4c7e31ef2bL    # 8.844469995135542E-9

    mul-double/2addr v0, p0

    const-wide v2, 0x3ebebc24852ea500L    # 1.8319447192361523E-6

    sub-double/2addr v2, v0

    mul-double/2addr v2, p0

    const-wide v0, -0x40a12abd42ec0ddbL    # -0.0018819

    add-double/2addr v2, v0

    mul-double/2addr v2, p0

    const-wide v0, 0x411b2d4c7213bb9fL    # 445267.1114034

    add-double/2addr v2, v0

    mul-double/2addr v2, p0

    const-wide p0, 0x40729d9a63080d15L    # 297.8501921

    add-double/2addr v2, p0

    .line 657
    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/MoonPosition;->normalize(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static getMeanLongitude(D)D
    .locals 4

    const-wide v0, -0x41af87b1741f780eL    # -1.5338834862103876E-8

    mul-double/2addr v0, p0

    const-wide v2, 0x3ebf22c03012673aL    # 1.855835023689734E-6

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide v2, -0x40a622df281923bdL    # -0.0015786

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide v2, 0x411d5fcf866242c0L    # 481267.88123421

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide p0, 0x406b4a2056ed4c9fL    # 218.3164477

    add-double/2addr v0, p0

    .line 650
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->normalize(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static hashCode(D)I
    .locals 2

    .line 747
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static inConstellationOf(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;
    .locals 1

    const/16 v0, 0x4c

    .line 274
    invoke-static {v0, p0}, Lnet/time4j/calendar/astro/Zodiac$Event;->ofConstellation(CLnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;

    move-result-object p0

    return-object p0
.end method

.method public static inNextApogeeAfter(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 1

    const/4 v0, 0x1

    .line 319
    invoke-static {p0, v0}, Lnet/time4j/calendar/astro/MoonPosition;->anomalistic(Lnet/time4j/Moment;Z)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method public static inNextPerigeeAfter(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-static {p0, v0}, Lnet/time4j/calendar/astro/MoonPosition;->anomalistic(Lnet/time4j/Moment;Z)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method public static inSignOf(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;
    .locals 1

    const/16 v0, 0x4c

    .line 297
    invoke-static {v0, p0}, Lnet/time4j/calendar/astro/Zodiac$Event;->ofSign(CLnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;

    move-result-object p0

    return-object p0
.end method

.method static lunarLongitude(D)D
    .locals 27

    const-wide v0, 0x4142b42c80000000L    # 2451545.0

    sub-double v0, p0, v0

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    .line 594
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanLongitude(D)D

    move-result-wide v2

    .line 597
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanElongation(D)D

    move-result-wide v4

    .line 600
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanAnomalyOfSun(D)D

    move-result-wide v6

    .line 603
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanAnomalyOfMoon(D)D

    move-result-wide v8

    .line 606
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->getMeanDistanceOfMoon(D)D

    move-result-wide v10

    const-wide v12, 0x3edf09b082ea2aacL    # 7.4E-6

    mul-double/2addr v12, v0

    const-wide v14, 0x3f649c6f36ef8056L    # 0.002516

    add-double/2addr v12, v14

    mul-double/2addr v12, v0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    mul-double v16, v12, v12

    .line 614
    sget-object v14, Lnet/time4j/calendar/astro/MoonPosition;->A_D:[I

    array-length v14, v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const-wide/16 v18, 0x0

    :goto_0
    if-ltz v14, :cond_4

    .line 616
    sget-object v20, Lnet/time4j/calendar/astro/MoonPosition;->A_M:[I

    aget v15, v20, v14

    move-wide/from16 v21, v12

    const/4 v12, -0x2

    if-eq v15, v12, :cond_2

    const/4 v12, -0x1

    if-eq v15, v12, :cond_0

    const/4 v12, 0x1

    if-eq v15, v12, :cond_1

    const/4 v13, 0x2

    if-eq v15, v13, :cond_3

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    const/4 v12, 0x1

    :cond_1
    move-wide/from16 v23, v21

    goto :goto_1

    :cond_2
    const/4 v12, 0x1

    :cond_3
    move-wide/from16 v23, v16

    .line 628
    :goto_1
    sget-object v13, Lnet/time4j/calendar/astro/MoonPosition;->A_D:[I

    aget v13, v13, v14

    int-to-double v12, v13

    mul-double/2addr v12, v4

    aget v15, v20, v14

    move-wide/from16 v25, v4

    int-to-double v4, v15

    mul-double/2addr v4, v6

    add-double/2addr v12, v4

    sget-object v4, Lnet/time4j/calendar/astro/MoonPosition;->A_M2:[I

    aget v4, v4, v14

    int-to-double v4, v4

    mul-double/2addr v4, v8

    add-double/2addr v12, v4

    sget-object v4, Lnet/time4j/calendar/astro/MoonPosition;->A_F:[I

    aget v4, v4, v14

    int-to-double v4, v4

    mul-double/2addr v4, v10

    add-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 630
    sget-object v12, Lnet/time4j/calendar/astro/MoonPosition;->COEFF_L:[I

    aget v12, v12, v14

    int-to-double v12, v12

    mul-double v12, v12, v23

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v12, v4

    add-double v18, v18, v12

    add-int/lit8 v14, v14, -0x1

    move-wide/from16 v12, v21

    move-wide/from16 v4, v25

    const/4 v15, 0x1

    goto :goto_0

    :cond_4
    const-wide v4, 0x405df00000000000L    # 119.75

    const-wide v6, 0x40607b2b020c49baL    # 131.849

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    const-wide v4, 0x404a8b851eb851ecL    # 53.09

    const-wide v8, 0x411d408128f5c28fL    # 479264.29

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    const-wide v4, 0x40aeec0000000000L    # 3958.0

    .line 637
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    const-wide v4, 0x409ea80000000000L    # 1962.0

    sub-double v10, v2, v10

    .line 638
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    add-double/2addr v6, v10

    const-wide v4, 0x4073e00000000000L    # 318.0

    .line 639
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    add-double v18, v18, v6

    const/4 v4, 0x5

    new-array v4, v4, [D

    .line 643
    invoke-static {v0, v1, v4}, Lnet/time4j/calendar/astro/StdSolarCalculator;->nutations(D[D)V

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double v18, v18, v0

    add-double v2, v2, v18

    const/4 v0, 0x0

    .line 644
    aget-wide v0, v4, v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/AstroUtils;->toRange_0_360(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static normalize(D)D
    .locals 4

    const-wide v0, 0x4076800000000000L    # 360.0

    div-double v2, p0, v0

    .line 743
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    sub-double/2addr p0, v2

    return-wide p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 432
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/astro/MoonPosition;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 433
    check-cast p1, Lnet/time4j/calendar/astro/MoonPosition;

    .line 434
    iget-wide v3, p0, Lnet/time4j/calendar/astro/MoonPosition;->rightAscension:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/MoonPosition;->rightAscension:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/MoonPosition;->declination:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/MoonPosition;->declination:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/MoonPosition;->azimuth:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/MoonPosition;->azimuth:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/MoonPosition;->elevation:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/MoonPosition;->elevation:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/MoonPosition;->distance:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/MoonPosition;->distance:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAzimuth()D
    .locals 2

    .line 385
    iget-wide v0, p0, Lnet/time4j/calendar/astro/MoonPosition;->azimuth:D

    return-wide v0
.end method

.method public getDeclination()D
    .locals 2

    .line 362
    iget-wide v0, p0, Lnet/time4j/calendar/astro/MoonPosition;->declination:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .line 423
    iget-wide v0, p0, Lnet/time4j/calendar/astro/MoonPosition;->distance:D

    return-wide v0
.end method

.method public getElevation()D
    .locals 2

    .line 407
    iget-wide v0, p0, Lnet/time4j/calendar/astro/MoonPosition;->elevation:D

    return-wide v0
.end method

.method public getRightAscension()D
    .locals 2

    .line 355
    iget-wide v0, p0, Lnet/time4j/calendar/astro/MoonPosition;->rightAscension:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 450
    iget-wide v0, p0, Lnet/time4j/calendar/astro/MoonPosition;->rightAscension:D

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/MoonPosition;->hashCode(D)I

    move-result v0

    iget-wide v1, p0, Lnet/time4j/calendar/astro/MoonPosition;->declination:D

    .line 451
    invoke-static {v1, v2}, Lnet/time4j/calendar/astro/MoonPosition;->hashCode(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-wide v1, p0, Lnet/time4j/calendar/astro/MoonPosition;->distance:D

    .line 452
    invoke-static {v1, v2}, Lnet/time4j/calendar/astro/MoonPosition;->hashCode(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "moon-position[ra="

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget-wide v1, p0, Lnet/time4j/calendar/astro/MoonPosition;->rightAscension:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",decl="

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-wide v1, p0, Lnet/time4j/calendar/astro/MoonPosition;->declination:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",azimuth="

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-wide v1, p0, Lnet/time4j/calendar/astro/MoonPosition;->azimuth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",elevation="

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-wide v1, p0, Lnet/time4j/calendar/astro/MoonPosition;->elevation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",distance="

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-wide v1, p0, Lnet/time4j/calendar/astro/MoonPosition;->distance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
