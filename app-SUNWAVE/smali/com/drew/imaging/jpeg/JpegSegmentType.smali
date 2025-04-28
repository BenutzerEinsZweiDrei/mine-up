.class public final enum Lcom/drew/imaging/jpeg/JpegSegmentType;
.super Ljava/lang/Enum;
.source "JpegSegmentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/imaging/jpeg/JpegSegmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP0:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP1:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP2:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP3:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP4:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP5:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP6:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP7:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP8:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP9:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPA:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPB:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPC:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPD:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPE:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPF:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum COM:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DAC:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DHP:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DHT:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DNL:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DQT:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DRI:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum EXP:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum JPG:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF0:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF1:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF10:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF11:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF13:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF14:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF15:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF2:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF3:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF5:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF6:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF7:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF9:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOI:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final canContainMetadataTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final byteValue:B

.field public final canContainMetadata:Z


# direct methods
.method static constructor <clinit>()V
    .locals 43

    .line 42
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v1, "APP0"

    const/4 v2, 0x0

    const/16 v3, -0x20

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP0:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 45
    new-instance v1, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v3, "APP1"

    const/16 v5, -0x1f

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 48
    new-instance v3, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v5, "APP2"

    const/4 v6, 0x2

    const/16 v7, -0x1e

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v3, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP2:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 51
    new-instance v5, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v7, "APP3"

    const/4 v8, 0x3

    const/16 v9, -0x1d

    invoke-direct {v5, v7, v8, v9, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v5, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP3:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 54
    new-instance v7, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v9, "APP4"

    const/4 v10, 0x4

    const/16 v11, -0x1c

    invoke-direct {v7, v9, v10, v11, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v7, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP4:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 57
    new-instance v9, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v11, "APP5"

    const/4 v12, 0x5

    const/16 v13, -0x1b

    invoke-direct {v9, v11, v12, v13, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v9, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP5:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 60
    new-instance v11, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "APP6"

    const/4 v14, 0x6

    const/16 v15, -0x1a

    invoke-direct {v11, v13, v14, v15, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v11, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP6:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 63
    new-instance v13, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "APP7"

    const/4 v14, 0x7

    const/16 v12, -0x19

    invoke-direct {v13, v15, v14, v12, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v13, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP7:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 66
    new-instance v12, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "APP8"

    const/16 v14, 0x8

    const/16 v10, -0x18

    invoke-direct {v12, v15, v14, v10, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v12, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP8:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 69
    new-instance v10, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "APP9"

    const/16 v14, 0x9

    const/16 v8, -0x17

    invoke-direct {v10, v15, v14, v8, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v10, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP9:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 72
    new-instance v8, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "APPA"

    const/16 v14, 0xa

    const/16 v6, -0x16

    invoke-direct {v8, v15, v14, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v8, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPA:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 75
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "APPB"

    const/16 v14, 0xb

    const/16 v2, -0x15

    invoke-direct {v6, v15, v14, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPB:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 78
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "APPC"

    const/16 v14, 0xc

    move-object/from16 v16, v6

    const/16 v6, -0x14

    invoke-direct {v2, v15, v14, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPC:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 81
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "APPD"

    const/16 v14, 0xd

    move-object/from16 v17, v2

    const/16 v2, -0x13

    invoke-direct {v6, v15, v14, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPD:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 84
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "APPE"

    const/16 v14, 0xe

    move-object/from16 v18, v6

    const/16 v6, -0x12

    invoke-direct {v2, v15, v14, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPE:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 87
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "APPF"

    const/16 v14, 0xf

    move-object/from16 v19, v2

    const/16 v2, -0x11

    invoke-direct {v6, v15, v14, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPF:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 90
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "SOI"

    const/16 v14, 0x10

    const/16 v4, -0x28

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-direct {v2, v15, v14, v4, v6}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOI:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 93
    new-instance v4, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "DQT"

    const/16 v14, 0x11

    move-object/from16 v22, v2

    const/16 v2, -0x25

    invoke-direct {v4, v15, v14, v2, v6}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v4, Lcom/drew/imaging/jpeg/JpegSegmentType;->DQT:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 96
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "DNL"

    const/16 v14, 0x12

    move-object/from16 v23, v4

    const/16 v4, -0x24

    invoke-direct {v2, v15, v14, v4, v6}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->DNL:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 99
    new-instance v4, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "DRI"

    const/16 v14, 0x13

    move-object/from16 v24, v2

    const/16 v2, -0x23

    invoke-direct {v4, v15, v14, v2, v6}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v4, Lcom/drew/imaging/jpeg/JpegSegmentType;->DRI:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 102
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "DHP"

    const/16 v14, 0x14

    move-object/from16 v25, v4

    const/16 v4, -0x22

    invoke-direct {v2, v15, v14, v4, v6}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->DHP:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 105
    new-instance v4, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "EXP"

    const/16 v14, 0x15

    move-object/from16 v26, v2

    const/16 v2, -0x21

    invoke-direct {v4, v15, v14, v2, v6}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v4, Lcom/drew/imaging/jpeg/JpegSegmentType;->EXP:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 108
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v15, "DHT"

    const/16 v14, 0x16

    move-object/from16 v27, v4

    const/16 v4, -0x3c

    invoke-direct {v2, v15, v14, v4, v6}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->DHT:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 111
    new-instance v4, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "DAC"

    const/16 v15, 0x17

    move-object/from16 v28, v2

    const/16 v2, -0x34

    invoke-direct {v4, v14, v15, v2, v6}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v4, Lcom/drew/imaging/jpeg/JpegSegmentType;->DAC:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 114
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v6, "SOF0"

    const/16 v14, 0x18

    const/16 v15, -0x40

    move-object/from16 v29, v4

    const/4 v4, 0x1

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF0:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 117
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF1"

    const/16 v15, 0x19

    move-object/from16 v20, v2

    const/16 v2, -0x3f

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 120
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF2"

    const/16 v15, 0x1a

    move-object/from16 v30, v6

    const/16 v6, -0x3e

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF2:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 123
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF3"

    const/16 v15, 0x1b

    move-object/from16 v31, v2

    const/16 v2, -0x3d

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF3:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 129
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF5"

    const/16 v15, 0x1c

    move-object/from16 v32, v6

    const/16 v6, -0x3b

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF5:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 132
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF6"

    const/16 v15, 0x1d

    move-object/from16 v33, v2

    const/16 v2, -0x3a

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF6:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 135
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF7"

    const/16 v15, 0x1e

    move-object/from16 v34, v6

    const/16 v6, -0x39

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF7:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 138
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "JPG"

    const/16 v15, 0x1f

    move-object/from16 v35, v2

    const/16 v2, -0x38

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->JPG:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 141
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF9"

    const/16 v15, 0x20

    move-object/from16 v36, v6

    const/16 v6, -0x37

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF9:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 144
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF10"

    const/16 v15, 0x21

    move-object/from16 v37, v2

    const/16 v2, -0x36

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF10:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 147
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF11"

    const/16 v15, 0x22

    move-object/from16 v38, v6

    const/16 v6, -0x35

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF11:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 153
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF13"

    const/16 v15, 0x23

    move-object/from16 v39, v2

    const/16 v2, -0x33

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF13:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 156
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF14"

    const/16 v15, 0x24

    move-object/from16 v40, v6

    const/16 v6, -0x32

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF14:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 159
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "SOF15"

    const/16 v15, 0x25

    move-object/from16 v41, v2

    const/16 v2, -0x31

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF15:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 162
    new-instance v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "COM"

    const/16 v15, 0x26

    move-object/from16 v42, v6

    const/4 v6, -0x2

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->COM:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v6, 0x27

    new-array v6, v6, [Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v14, 0x0

    aput-object v0, v6, v14

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    const/16 v0, 0xa

    aput-object v8, v6, v0

    const/16 v0, 0xb

    aput-object v16, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v21, v6, v0

    const/16 v0, 0x10

    aput-object v22, v6, v0

    const/16 v0, 0x11

    aput-object v23, v6, v0

    const/16 v0, 0x12

    aput-object v24, v6, v0

    const/16 v0, 0x13

    aput-object v25, v6, v0

    const/16 v0, 0x14

    aput-object v26, v6, v0

    const/16 v0, 0x15

    aput-object v27, v6, v0

    const/16 v0, 0x16

    aput-object v28, v6, v0

    const/16 v0, 0x17

    aput-object v29, v6, v0

    const/16 v0, 0x18

    aput-object v20, v6, v0

    const/16 v0, 0x19

    aput-object v30, v6, v0

    const/16 v0, 0x1a

    aput-object v31, v6, v0

    const/16 v0, 0x1b

    aput-object v32, v6, v0

    const/16 v0, 0x1c

    aput-object v33, v6, v0

    const/16 v0, 0x1d

    aput-object v34, v6, v0

    const/16 v0, 0x1e

    aput-object v35, v6, v0

    const/16 v0, 0x1f

    aput-object v36, v6, v0

    const/16 v0, 0x20

    aput-object v37, v6, v0

    const/16 v0, 0x21

    aput-object v38, v6, v0

    const/16 v0, 0x22

    aput-object v39, v6, v0

    const/16 v0, 0x23

    aput-object v40, v6, v0

    const/16 v0, 0x24

    aput-object v41, v6, v0

    const/16 v0, 0x25

    aput-object v42, v6, v0

    const/16 v0, 0x26

    aput-object v2, v6, v0

    .line 39
    sput-object v6, Lcom/drew/imaging/jpeg/JpegSegmentType;->$VALUES:[Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    const-class v1, Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/drew/imaging/jpeg/JpegSegmentType;

    array-length v2, v1

    :goto_0
    if-ge v14, v2, :cond_1

    aget-object v3, v1, v14

    .line 169
    iget-boolean v4, v3, Lcom/drew/imaging/jpeg/JpegSegmentType;->canContainMetadata:Z

    if-eqz v4, :cond_0

    .line 170
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 173
    :cond_1
    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->canContainMetadataTypes:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BZ)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    iput-byte p3, p0, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    .line 182
    iput-boolean p4, p0, Lcom/drew/imaging/jpeg/JpegSegmentType;->canContainMetadata:Z

    return-void
.end method

.method public static fromByte(B)Lcom/drew/imaging/jpeg/JpegSegmentType;
    .locals 5

    .line 188
    const-class v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/imaging/jpeg/JpegSegmentType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 189
    iget-byte v4, v3, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/imaging/jpeg/JpegSegmentType;
    .locals 1

    .line 39
    const-class v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    return-object p0
.end method

.method public static values()[Lcom/drew/imaging/jpeg/JpegSegmentType;
    .locals 1

    .line 39
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->$VALUES:[Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-virtual {v0}, [Lcom/drew/imaging/jpeg/JpegSegmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/imaging/jpeg/JpegSegmentType;

    return-object v0
.end method
