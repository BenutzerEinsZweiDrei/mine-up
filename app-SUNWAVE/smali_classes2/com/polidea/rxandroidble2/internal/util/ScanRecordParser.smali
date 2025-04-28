.class public Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;
.super Ljava/lang/Object;
.source "ScanRecordParser.java"


# static fields
.field public static final BASE_UUID:Ljava/util/UUID;

.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA_128_BIT:I = 0x21

.field private static final DATA_TYPE_SERVICE_DATA_16_BIT:I = 0x16

.field private static final DATA_TYPE_SERVICE_DATA_32_BIT:I = 0x20

.field private static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_128_BIT:I = 0x15

.field private static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_16_BIT:I = 0x14

.field private static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_32_BIT:I = 0x1f

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    .line 46
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->BASE_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractBytes([BII)[B
    .locals 2

    .line 249
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 250
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private parseServiceSolicitationUuid([BIIILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    .line 239
    invoke-direct {p0, p1, p2, p4}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->extractBytes([BII)[B

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p3, p4

    add-int/2addr p2, p4

    goto :goto_0

    :cond_0
    return p2
.end method

.method private parseServiceUuid([BIIILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    .line 224
    invoke-direct {p0, p1, p2, p4}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->extractBytes([BII)[B

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p3, p4

    add-int/2addr p2, p4

    goto :goto_0

    :cond_0
    return p2
.end method

.method private static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 8

    if-eqz p0, :cond_4

    .line 191
    array-length v0, p0

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuidBytes length invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v1, :cond_2

    .line 198
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 199
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 200
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 201
    new-instance p0, Landroid/os/ParcelUuid;

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p0, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p0

    :cond_2
    const/4 v5, 0x1

    if-ne v0, v2, :cond_3

    .line 207
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 208
    aget-byte p0, p0, v5

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v4

    int-to-long v2, p0

    add-long/2addr v0, v2

    goto :goto_1

    .line 210
    :cond_3
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    .line 211
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 212
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v6, v0

    const/4 v0, 0x3

    .line 213
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    int-to-long v0, p0

    add-long/2addr v0, v6

    .line 215
    :goto_1
    sget-object p0, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->BASE_UUID:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 216
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 217
    new-instance p0, Landroid/os/ParcelUuid;

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p0, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p0

    .line 189
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "uuidBytes cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public extractUUIDs([B)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseFromBytes([B)Lcom/polidea/rxandroidble2/scan/ScanRecord;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Lcom/polidea/rxandroidble2/scan/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 68
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public parseFromBytes([B)Lcom/polidea/rxandroidble2/scan/ScanRecord;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    if-nez v15, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 84
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/high16 v2, -0x80000000

    .line 89
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 90
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v16, v0

    move v13, v1

    move v14, v2

    move/from16 v1, v17

    .line 93
    :goto_0
    :try_start_0
    array-length v2, v15

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    .line 95
    aget-byte v1, v15, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v9, v1, -0x1

    add-int/lit8 v6, v2, 0x1

    .line 102
    aget-byte v1, v15, v2

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    move v0, v6

    goto/16 :goto_3

    :pswitch_0
    move v0, v6

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v6

    move v4, v9

    move v0, v6

    move-object v6, v10

    .line 127
    invoke-direct/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    goto/16 :goto_3

    :goto_1
    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_2

    :cond_2
    const/16 v2, 0x21

    if-ne v1, v2, :cond_3

    const/16 v1, 0x10

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    .line 151
    :goto_2
    invoke-direct {v7, v15, v0, v1}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->extractBytes([BII)[B

    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v2

    add-int v6, v0, v1

    sub-int v1, v9, v1

    .line 154
    invoke-direct {v7, v15, v6, v1}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->extractBytes([BII)[B

    move-result-object v1

    .line 156
    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_2
    move v0, v6

    const/16 v5, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v0

    move v4, v9

    move-object v6, v10

    .line 131
    invoke-direct/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    goto/16 :goto_3

    :pswitch_3
    move v0, v6

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v0

    move v4, v9

    move-object v6, v10

    .line 123
    invoke-direct/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    goto/16 :goto_3

    :pswitch_4
    move v0, v6

    .line 140
    aget-byte v14, v15, v0

    goto/16 :goto_3

    :pswitch_5
    move v0, v6

    .line 136
    new-instance v1, Ljava/lang/String;

    .line 137
    invoke-direct {v7, v15, v0, v9}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->extractBytes([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v16, v1

    goto :goto_3

    :pswitch_6
    move v0, v6

    const/16 v5, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v0

    move v4, v9

    move-object v6, v8

    .line 119
    invoke-direct/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_3

    :pswitch_7
    move v0, v6

    const/4 v5, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v0

    move v4, v9

    move-object v6, v8

    .line 114
    invoke-direct/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_3

    :pswitch_8
    move v0, v6

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v0

    move v4, v9

    move-object v6, v8

    .line 109
    invoke-direct/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_3

    :pswitch_9
    move v0, v6

    .line 105
    aget-byte v1, v15, v0

    and-int/lit16 v13, v1, 0xff

    goto :goto_3

    :cond_4
    move v0, v6

    add-int/lit8 v6, v0, 0x1

    .line 161
    aget-byte v1, v15, v6

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v15, v0

    and-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v6, v0, 0x2

    add-int/lit8 v2, v9, -0x2

    .line 163
    invoke-direct {v7, v15, v6, v2}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->extractBytes([BII)[B

    move-result-object v2

    .line 165
    invoke-virtual {v11, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    add-int v1, v0, v9

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 174
    :cond_5
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    move-object v9, v8

    .line 177
    :goto_5
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;

    move-object v8, v0

    move-object/from16 v15, v16

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    const-string v2, "Unable to parse scan record: %s"

    invoke-static {v0, v2, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x80000000

    const/4 v15, 0x0

    move-object v8, v0

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
