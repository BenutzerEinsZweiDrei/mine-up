.class public final enum Lnet/time4j/tz/olson/PACIFIC;
.super Ljava/lang/Enum;
.source "PACIFIC.java"

# interfaces
.implements Lnet/time4j/tz/olson/StdZoneIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/tz/olson/PACIFIC;",
        ">;",
        "Lnet/time4j/tz/olson/StdZoneIdentifier;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum APIA:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum AUCKLAND:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum CHATHAM:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum CHUUK:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum EASTER:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum EFATE:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum ENDERBURY:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum FAKAOFO:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum FIJI:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum FUNAFUTI:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum GALAPAGOS:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum GAMBIER:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum GUADALCANAL:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum GUAM:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum HONOLULU:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum JOHNSTON:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum KIRITIMATI:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum KOSRAE:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum KWAJALEIN:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum MAJURO:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum MARQUESAS:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum MIDWAY:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum NAURU:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum NIUE:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum NORFOLK:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum NOUMEA:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum PAGO_PAGO:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum PALAU:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum PITCAIRN:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum POHNPEI:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum PORT_MORESBY:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum RAROTONGA:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum SAIPAN:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum TAHITI:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum TARAWA:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum TONGATAPU:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum WAKE:Lnet/time4j/tz/olson/PACIFIC;

.field public static final enum WALLIS:Lnet/time4j/tz/olson/PACIFIC;


# instance fields
.field private final city:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    .line 34
    new-instance v0, Lnet/time4j/tz/olson/PACIFIC;

    const-string v1, "APIA"

    const/4 v2, 0x0

    const-string v3, "Apia"

    const-string v4, "WS"

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/tz/olson/PACIFIC;->APIA:Lnet/time4j/tz/olson/PACIFIC;

    .line 35
    new-instance v1, Lnet/time4j/tz/olson/PACIFIC;

    const-string v3, "AUCKLAND"

    const/4 v4, 0x1

    const-string v5, "Auckland"

    const-string v6, "NZ"

    invoke-direct {v1, v3, v4, v5, v6}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lnet/time4j/tz/olson/PACIFIC;->AUCKLAND:Lnet/time4j/tz/olson/PACIFIC;

    .line 36
    new-instance v3, Lnet/time4j/tz/olson/PACIFIC;

    const-string v5, "CHATHAM"

    const/4 v7, 0x2

    const-string v8, "Chatham"

    invoke-direct {v3, v5, v7, v8, v6}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lnet/time4j/tz/olson/PACIFIC;->CHATHAM:Lnet/time4j/tz/olson/PACIFIC;

    .line 37
    new-instance v5, Lnet/time4j/tz/olson/PACIFIC;

    const-string v6, "CHUUK"

    const/4 v8, 0x3

    const-string v9, "Chuuk"

    const-string v10, "FM"

    invoke-direct {v5, v6, v8, v9, v10}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lnet/time4j/tz/olson/PACIFIC;->CHUUK:Lnet/time4j/tz/olson/PACIFIC;

    .line 38
    new-instance v6, Lnet/time4j/tz/olson/PACIFIC;

    const-string v9, "EASTER"

    const/4 v11, 0x4

    const-string v12, "Easter"

    const-string v13, "CL"

    invoke-direct {v6, v9, v11, v12, v13}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lnet/time4j/tz/olson/PACIFIC;->EASTER:Lnet/time4j/tz/olson/PACIFIC;

    .line 39
    new-instance v9, Lnet/time4j/tz/olson/PACIFIC;

    const-string v12, "EFATE"

    const/4 v13, 0x5

    const-string v14, "Efate"

    const-string v15, "VU"

    invoke-direct {v9, v12, v13, v14, v15}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lnet/time4j/tz/olson/PACIFIC;->EFATE:Lnet/time4j/tz/olson/PACIFIC;

    .line 40
    new-instance v12, Lnet/time4j/tz/olson/PACIFIC;

    const-string v14, "ENDERBURY"

    const/4 v15, 0x6

    const-string v13, "Enderbury"

    const-string v11, "KI"

    invoke-direct {v12, v14, v15, v13, v11}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lnet/time4j/tz/olson/PACIFIC;->ENDERBURY:Lnet/time4j/tz/olson/PACIFIC;

    .line 41
    new-instance v13, Lnet/time4j/tz/olson/PACIFIC;

    const-string v14, "FAKAOFO"

    const/4 v15, 0x7

    const-string v8, "Fakaofo"

    const-string v7, "TK"

    invoke-direct {v13, v14, v15, v8, v7}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lnet/time4j/tz/olson/PACIFIC;->FAKAOFO:Lnet/time4j/tz/olson/PACIFIC;

    .line 42
    new-instance v7, Lnet/time4j/tz/olson/PACIFIC;

    const-string v8, "FIJI"

    const/16 v14, 0x8

    const-string v15, "Fiji"

    const-string v4, "FJ"

    invoke-direct {v7, v8, v14, v15, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lnet/time4j/tz/olson/PACIFIC;->FIJI:Lnet/time4j/tz/olson/PACIFIC;

    .line 43
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v8, "FUNAFUTI"

    const/16 v15, 0x9

    const-string v14, "Funafuti"

    const-string v2, "TV"

    invoke-direct {v4, v8, v15, v14, v2}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->FUNAFUTI:Lnet/time4j/tz/olson/PACIFIC;

    .line 44
    new-instance v2, Lnet/time4j/tz/olson/PACIFIC;

    const-string v8, "GALAPAGOS"

    const/16 v14, 0xa

    const-string v15, "Galapagos"

    move-object/from16 v16, v4

    const-string v4, "EC"

    invoke-direct {v2, v8, v14, v15, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lnet/time4j/tz/olson/PACIFIC;->GALAPAGOS:Lnet/time4j/tz/olson/PACIFIC;

    .line 45
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v8, "GAMBIER"

    const/16 v15, 0xb

    const-string v14, "Gambier"

    move-object/from16 v17, v2

    const-string v2, "PF"

    invoke-direct {v4, v8, v15, v14, v2}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->GAMBIER:Lnet/time4j/tz/olson/PACIFIC;

    .line 46
    new-instance v8, Lnet/time4j/tz/olson/PACIFIC;

    const-string v14, "GUADALCANAL"

    const/16 v15, 0xc

    move-object/from16 v18, v4

    const-string v4, "Guadalcanal"

    move-object/from16 v19, v7

    const-string v7, "SB"

    invoke-direct {v8, v14, v15, v4, v7}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/PACIFIC;->GUADALCANAL:Lnet/time4j/tz/olson/PACIFIC;

    .line 47
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v7, "GUAM"

    const/16 v14, 0xd

    const-string v15, "Guam"

    move-object/from16 v20, v8

    const-string v8, "GU"

    invoke-direct {v4, v7, v14, v15, v8}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->GUAM:Lnet/time4j/tz/olson/PACIFIC;

    .line 48
    new-instance v7, Lnet/time4j/tz/olson/PACIFIC;

    const-string v8, "HONOLULU"

    const/16 v15, 0xe

    const-string v14, "Honolulu"

    move-object/from16 v21, v4

    const-string v4, "US"

    invoke-direct {v7, v8, v15, v14, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lnet/time4j/tz/olson/PACIFIC;->HONOLULU:Lnet/time4j/tz/olson/PACIFIC;

    .line 49
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v8, "JOHNSTON"

    const/16 v14, 0xf

    const-string v15, "Johnston"

    move-object/from16 v22, v7

    const-string v7, "UM"

    invoke-direct {v4, v8, v14, v15, v7}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->JOHNSTON:Lnet/time4j/tz/olson/PACIFIC;

    .line 50
    new-instance v8, Lnet/time4j/tz/olson/PACIFIC;

    const-string v15, "KIRITIMATI"

    const/16 v14, 0x10

    move-object/from16 v23, v4

    const-string v4, "Kiritimati"

    invoke-direct {v8, v15, v14, v4, v11}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/PACIFIC;->KIRITIMATI:Lnet/time4j/tz/olson/PACIFIC;

    .line 51
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v15, "KOSRAE"

    const/16 v14, 0x11

    move-object/from16 v24, v8

    const-string v8, "Kosrae"

    invoke-direct {v4, v15, v14, v8, v10}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->KOSRAE:Lnet/time4j/tz/olson/PACIFIC;

    .line 52
    new-instance v8, Lnet/time4j/tz/olson/PACIFIC;

    const-string v14, "KWAJALEIN"

    const/16 v15, 0x12

    move-object/from16 v25, v4

    const-string v4, "Kwajalein"

    move-object/from16 v26, v13

    const-string v13, "MH"

    invoke-direct {v8, v14, v15, v4, v13}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/PACIFIC;->KWAJALEIN:Lnet/time4j/tz/olson/PACIFIC;

    .line 53
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "MAJURO"

    const/16 v14, 0x13

    const-string v15, "Majuro"

    move-object/from16 v27, v8

    const-string v8, "MH"

    invoke-direct {v4, v13, v14, v15, v8}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->MAJURO:Lnet/time4j/tz/olson/PACIFIC;

    .line 54
    new-instance v8, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "MARQUESAS"

    const/16 v14, 0x14

    const-string v15, "Marquesas"

    invoke-direct {v8, v13, v14, v15, v2}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/PACIFIC;->MARQUESAS:Lnet/time4j/tz/olson/PACIFIC;

    .line 55
    new-instance v13, Lnet/time4j/tz/olson/PACIFIC;

    const-string v14, "MIDWAY"

    const/16 v15, 0x15

    move-object/from16 v28, v8

    const-string v8, "Midway"

    invoke-direct {v13, v14, v15, v8, v7}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lnet/time4j/tz/olson/PACIFIC;->MIDWAY:Lnet/time4j/tz/olson/PACIFIC;

    .line 56
    new-instance v8, Lnet/time4j/tz/olson/PACIFIC;

    const-string v14, "NAURU"

    const/16 v15, 0x16

    move-object/from16 v29, v13

    const-string v13, "Nauru"

    move-object/from16 v30, v4

    const-string v4, "NR"

    invoke-direct {v8, v14, v15, v13, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/PACIFIC;->NAURU:Lnet/time4j/tz/olson/PACIFIC;

    .line 57
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "NIUE"

    const/16 v14, 0x17

    const-string v15, "Niue"

    move-object/from16 v31, v8

    const-string v8, "NU"

    invoke-direct {v4, v13, v14, v15, v8}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->NIUE:Lnet/time4j/tz/olson/PACIFIC;

    .line 58
    new-instance v8, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "NORFOLK"

    const/16 v14, 0x18

    const-string v15, "Norfolk"

    move-object/from16 v32, v4

    const-string v4, "NF"

    invoke-direct {v8, v13, v14, v15, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/PACIFIC;->NORFOLK:Lnet/time4j/tz/olson/PACIFIC;

    .line 59
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "NOUMEA"

    const/16 v14, 0x19

    const-string v15, "Noumea"

    move-object/from16 v33, v8

    const-string v8, "NC"

    invoke-direct {v4, v13, v14, v15, v8}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->NOUMEA:Lnet/time4j/tz/olson/PACIFIC;

    .line 60
    new-instance v8, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "PAGO_PAGO"

    const/16 v14, 0x1a

    const-string v15, "Pago_Pago"

    move-object/from16 v34, v4

    const-string v4, "AS"

    invoke-direct {v8, v13, v14, v15, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/PACIFIC;->PAGO_PAGO:Lnet/time4j/tz/olson/PACIFIC;

    .line 61
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "PALAU"

    const/16 v14, 0x1b

    const-string v15, "Palau"

    move-object/from16 v35, v8

    const-string v8, "PW"

    invoke-direct {v4, v13, v14, v15, v8}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->PALAU:Lnet/time4j/tz/olson/PACIFIC;

    .line 62
    new-instance v8, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "PITCAIRN"

    const/16 v14, 0x1c

    const-string v15, "Pitcairn"

    move-object/from16 v36, v4

    const-string v4, "PN"

    invoke-direct {v8, v13, v14, v15, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnet/time4j/tz/olson/PACIFIC;->PITCAIRN:Lnet/time4j/tz/olson/PACIFIC;

    .line 63
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "POHNPEI"

    const/16 v14, 0x1d

    const-string v15, "Pohnpei"

    invoke-direct {v4, v13, v14, v15, v10}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->POHNPEI:Lnet/time4j/tz/olson/PACIFIC;

    .line 64
    new-instance v10, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "PORT_MORESBY"

    const/16 v14, 0x1e

    const-string v15, "Port_Moresby"

    move-object/from16 v37, v4

    const-string v4, "PG"

    invoke-direct {v10, v13, v14, v15, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lnet/time4j/tz/olson/PACIFIC;->PORT_MORESBY:Lnet/time4j/tz/olson/PACIFIC;

    .line 65
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "RAROTONGA"

    const/16 v14, 0x1f

    const-string v15, "Rarotonga"

    move-object/from16 v38, v10

    const-string v10, "CK"

    invoke-direct {v4, v13, v14, v15, v10}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->RAROTONGA:Lnet/time4j/tz/olson/PACIFIC;

    .line 66
    new-instance v10, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "SAIPAN"

    const/16 v14, 0x20

    const-string v15, "Saipan"

    move-object/from16 v39, v4

    const-string v4, "MP"

    invoke-direct {v10, v13, v14, v15, v4}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lnet/time4j/tz/olson/PACIFIC;->SAIPAN:Lnet/time4j/tz/olson/PACIFIC;

    .line 67
    new-instance v4, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "TAHITI"

    const/16 v14, 0x21

    const-string v15, "Tahiti"

    invoke-direct {v4, v13, v14, v15, v2}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnet/time4j/tz/olson/PACIFIC;->TAHITI:Lnet/time4j/tz/olson/PACIFIC;

    .line 68
    new-instance v2, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "TARAWA"

    const/16 v14, 0x22

    const-string v15, "Tarawa"

    invoke-direct {v2, v13, v14, v15, v11}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lnet/time4j/tz/olson/PACIFIC;->TARAWA:Lnet/time4j/tz/olson/PACIFIC;

    .line 69
    new-instance v11, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "TONGATAPU"

    const/16 v14, 0x23

    const-string v15, "Tongatapu"

    move-object/from16 v40, v2

    const-string v2, "TO"

    invoke-direct {v11, v13, v14, v15, v2}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lnet/time4j/tz/olson/PACIFIC;->TONGATAPU:Lnet/time4j/tz/olson/PACIFIC;

    .line 70
    new-instance v2, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "WAKE"

    const/16 v14, 0x24

    const-string v15, "Wake"

    invoke-direct {v2, v13, v14, v15, v7}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lnet/time4j/tz/olson/PACIFIC;->WAKE:Lnet/time4j/tz/olson/PACIFIC;

    .line 71
    new-instance v7, Lnet/time4j/tz/olson/PACIFIC;

    const-string v13, "WALLIS"

    const/16 v14, 0x25

    const-string v15, "Wallis"

    move-object/from16 v41, v2

    const-string v2, "WF"

    invoke-direct {v7, v13, v14, v15, v2}, Lnet/time4j/tz/olson/PACIFIC;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lnet/time4j/tz/olson/PACIFIC;->WALLIS:Lnet/time4j/tz/olson/PACIFIC;

    const/16 v2, 0x26

    new-array v2, v2, [Lnet/time4j/tz/olson/PACIFIC;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v6, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v26, v2, v0

    const/16 v0, 0x8

    aput-object v19, v2, v0

    const/16 v0, 0x9

    aput-object v16, v2, v0

    const/16 v0, 0xa

    aput-object v17, v2, v0

    const/16 v0, 0xb

    aput-object v18, v2, v0

    const/16 v0, 0xc

    aput-object v20, v2, v0

    const/16 v0, 0xd

    aput-object v21, v2, v0

    const/16 v0, 0xe

    aput-object v22, v2, v0

    const/16 v0, 0xf

    aput-object v23, v2, v0

    const/16 v0, 0x10

    aput-object v24, v2, v0

    const/16 v0, 0x11

    aput-object v25, v2, v0

    const/16 v0, 0x12

    aput-object v27, v2, v0

    const/16 v0, 0x13

    aput-object v30, v2, v0

    const/16 v0, 0x14

    aput-object v28, v2, v0

    const/16 v0, 0x15

    aput-object v29, v2, v0

    const/16 v0, 0x16

    aput-object v31, v2, v0

    const/16 v0, 0x17

    aput-object v32, v2, v0

    const/16 v0, 0x18

    aput-object v33, v2, v0

    const/16 v0, 0x19

    aput-object v34, v2, v0

    const/16 v0, 0x1a

    aput-object v35, v2, v0

    const/16 v0, 0x1b

    aput-object v36, v2, v0

    const/16 v0, 0x1c

    aput-object v8, v2, v0

    const/16 v0, 0x1d

    aput-object v37, v2, v0

    const/16 v0, 0x1e

    aput-object v38, v2, v0

    const/16 v0, 0x1f

    aput-object v39, v2, v0

    const/16 v0, 0x20

    aput-object v10, v2, v0

    const/16 v0, 0x21

    aput-object v4, v2, v0

    const/16 v0, 0x22

    aput-object v40, v2, v0

    const/16 v0, 0x23

    aput-object v11, v2, v0

    const/16 v0, 0x24

    aput-object v41, v2, v0

    const/16 v0, 0x25

    aput-object v7, v2, v0

    .line 29
    sput-object v2, Lnet/time4j/tz/olson/PACIFIC;->$VALUES:[Lnet/time4j/tz/olson/PACIFIC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Pacific/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/olson/PACIFIC;->id:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lnet/time4j/tz/olson/PACIFIC;->city:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lnet/time4j/tz/olson/PACIFIC;->country:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/tz/olson/PACIFIC;
    .locals 1

    .line 29
    const-class v0, Lnet/time4j/tz/olson/PACIFIC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/olson/PACIFIC;

    return-object p0
.end method

.method public static values()[Lnet/time4j/tz/olson/PACIFIC;
    .locals 1

    .line 29
    sget-object v0, Lnet/time4j/tz/olson/PACIFIC;->$VALUES:[Lnet/time4j/tz/olson/PACIFIC;

    invoke-virtual {v0}, [Lnet/time4j/tz/olson/PACIFIC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/tz/olson/PACIFIC;

    return-object v0
.end method


# virtual methods
.method public canonical()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lnet/time4j/tz/olson/PACIFIC;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lnet/time4j/tz/olson/PACIFIC;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lnet/time4j/tz/olson/PACIFIC;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    const-string v0, "Pacific"

    return-object v0
.end method
