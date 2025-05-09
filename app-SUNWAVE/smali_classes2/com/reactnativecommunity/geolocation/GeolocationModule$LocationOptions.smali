.class Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;
.super Ljava/lang/Object;
.source "GeolocationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/geolocation/GeolocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationOptions"
.end annotation


# instance fields
.field private final distanceFilter:F

.field private final highAccuracy:Z

.field private final maximumAge:D

.field private final timeout:J


# direct methods
.method private constructor <init>(JDZF)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->timeout:J

    .line 93
    iput-wide p3, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->maximumAge:D

    .line 94
    iput-boolean p5, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->highAccuracy:Z

    .line 95
    iput p6, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->distanceFilter:F

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->highAccuracy:Z

    return p0
.end method

.method static synthetic access$500(Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;)D
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->maximumAge:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;)J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->timeout:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;)F
    .locals 0

    .line 81
    iget p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->distanceFilter:F

    return p0
.end method

.method private static fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;
    .locals 9

    const-string v0, "timeout"

    .line 101
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    move-wide v3, v0

    const-string v0, "maximumAge"

    .line 103
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    move-wide v5, v0

    const-string v0, "enableHighAccuracy"

    .line 105
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v7, v0

    const-string v0, "distanceFilter"

    .line 106
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_3

    :cond_3
    const/high16 p0, 0x42c80000    # 100.0f

    :goto_3
    move v8, p0

    .line 110
    new-instance p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;-><init>(JDZF)V

    return-object p0
.end method
