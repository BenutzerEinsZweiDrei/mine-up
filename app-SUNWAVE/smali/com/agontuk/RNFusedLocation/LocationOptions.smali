.class public Lcom/agontuk/RNFusedLocation/LocationOptions;
.super Ljava/lang/Object;
.source "LocationOptions.java"


# static fields
.field private static final DEFAULT_DISTANCE_FILTER:F = 100.0f

.field private static final DEFAULT_FASTEST_INTERVAL:J = 0x1388L

.field private static final DEFAULT_INTERVAL:J = 0x2710L


# instance fields
.field private final accuracy:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

.field private final distanceFilter:F

.field private final fastestInterval:J

.field private final forceLocationManager:Z

.field private final forceRequestLocation:Z

.field private final interval:J

.field private final maximumAge:D

.field private final showLocationDialog:Z

.field private final timeout:J


# direct methods
.method private constructor <init>(Lcom/agontuk/RNFusedLocation/LocationAccuracy;JJFJDZZZ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->accuracy:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    .line 35
    iput-wide p2, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->interval:J

    .line 36
    iput-wide p4, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->fastestInterval:J

    .line 37
    iput p6, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->distanceFilter:F

    .line 38
    iput-wide p7, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->timeout:J

    .line 39
    iput-wide p9, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->maximumAge:D

    .line 40
    iput-boolean p11, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->showLocationDialog:Z

    .line 41
    iput-boolean p12, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->forceRequestLocation:Z

    .line 42
    iput-boolean p13, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->forceLocationManager:Z

    return-void
.end method

.method public static fromReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/agontuk/RNFusedLocation/LocationOptions;
    .locals 17

    move-object/from16 v0, p0

    .line 46
    invoke-static/range {p0 .. p0}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getAccuracy(Lcom/facebook/react/bridge/ReadableMap;)Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    move-result-object v1

    const-string v2, "interval"

    .line 47
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2710

    :goto_0
    const-string v4, "fastestInterval"

    .line 50
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x1388

    :goto_1
    const-string v6, "distanceFilter"

    .line 53
    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 54
    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_2

    :cond_2
    const/high16 v6, 0x42c80000    # 100.0f

    :goto_2
    const-string/jumbo v7, "timeout"

    .line 56
    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 57
    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    goto :goto_3

    :cond_3
    const-wide v7, 0x7fffffffffffffffL

    :goto_3
    const-string v9, "maximumAge"

    .line 59
    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 60
    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_4

    :cond_4
    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_4
    const-string v11, "showLocationDialog"

    .line 63
    invoke-interface {v0, v11}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_6

    invoke-interface {v0, v11}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move v11, v13

    goto :goto_6

    :cond_6
    :goto_5
    move v11, v14

    :goto_6
    const-string v12, "forceRequestLocation"

    .line 65
    invoke-interface {v0, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v0, v12}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v14

    goto :goto_7

    :cond_7
    move v12, v13

    :goto_7
    const-string v15, "forceLocationManager"

    .line 67
    invoke-interface {v0, v15}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v0, v15}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v13, v14

    .line 69
    :cond_8
    new-instance v14, Lcom/agontuk/RNFusedLocation/LocationOptions;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/agontuk/RNFusedLocation/LocationOptions;-><init>(Lcom/agontuk/RNFusedLocation/LocationAccuracy;JJFJDZZZ)V

    return-object v14
.end method

.method private static getAccuracy(Lcom/facebook/react/bridge/ReadableMap;)Lcom/agontuk/RNFusedLocation/LocationAccuracy;
    .locals 6

    const-string v0, "enableHighAccuracy"

    .line 123
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "accuracy"

    .line 126
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_1

    .line 127
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "android"

    .line 130
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_1

    .line 133
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, ""

    .line 141
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_2
    move v2, v1

    goto :goto_3

    :sswitch_0
    const-string v2, "high"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_1
    const-string v2, "low"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_2
    const-string v3, "passive"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :sswitch_3
    const-string v2, "balanced"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    packed-switch v2, :pswitch_data_0

    if-eqz v0, :cond_6

    .line 151
    sget-object p0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->high:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    goto :goto_4

    :cond_6
    sget-object p0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->balanced:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    :goto_4
    return-object p0

    .line 143
    :pswitch_0
    sget-object p0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->high:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    return-object p0

    .line 147
    :pswitch_1
    sget-object p0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->low:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    return-object p0

    .line 149
    :pswitch_2
    sget-object p0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->passive:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    return-object p0

    .line 145
    :pswitch_3
    sget-object p0, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->balanced:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72ba92f8 -> :sswitch_3
        -0x2f3590d9 -> :sswitch_2
        0x1a354 -> :sswitch_1
        0x30dda2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAccuracy()Lcom/agontuk/RNFusedLocation/LocationAccuracy;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->accuracy:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    return-object v0
.end method

.method public getDistanceFilter()F
    .locals 1

    .line 95
    iget v0, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->distanceFilter:F

    return v0
.end method

.method public getFastestInterval()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->fastestInterval:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->interval:J

    return-wide v0
.end method

.method public getMaximumAge()D
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->maximumAge:D

    return-wide v0
.end method

.method public getTimeout()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->timeout:J

    return-wide v0
.end method

.method public isForceLocationManager()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->forceLocationManager:Z

    return v0
.end method

.method public isForceRequestLocation()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->forceRequestLocation:Z

    return v0
.end method

.method public isShowLocationDialog()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/agontuk/RNFusedLocation/LocationOptions;->showLocationDialog:Z

    return v0
.end method
