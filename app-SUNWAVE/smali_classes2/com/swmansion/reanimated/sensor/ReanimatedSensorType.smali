.class public final enum Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;
.super Ljava/lang/Enum;
.source "ReanimatedSensorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

.field public static final enum ACCELEROMETER:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

.field public static final enum GRAVITY:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

.field public static final enum GYROSCOPE:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

.field public static final enum MAGNETIC_FIELD:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

.field public static final enum ROTATION_VECTOR:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 6
    new-instance v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    const-string v1, "ACCELEROMETER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->ACCELEROMETER:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    .line 7
    new-instance v1, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    const-string v4, "GYROSCOPE"

    const/4 v5, 0x4

    invoke-direct {v1, v4, v3, v5}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->GYROSCOPE:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    .line 8
    new-instance v4, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    const-string v6, "GRAVITY"

    const/4 v7, 0x2

    const/16 v8, 0x9

    invoke-direct {v4, v6, v7, v8}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->GRAVITY:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    .line 9
    new-instance v6, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    const-string v8, "MAGNETIC_FIELD"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v7}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->MAGNETIC_FIELD:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    .line 10
    new-instance v8, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    const-string v10, "ROTATION_VECTOR"

    const/16 v11, 0xb

    invoke-direct {v8, v10, v5, v11}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->ROTATION_VECTOR:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v7

    aput-object v6, v10, v9

    aput-object v8, v10, v5

    .line 5
    sput-object v10, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->$VALUES:[Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->type:I

    return-void
.end method

.method public static getInstanceById(I)Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 33
    sget-object p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->ROTATION_VECTOR:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    return-object p0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "[Reanimated] Unknown sensor type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_1
    sget-object p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->MAGNETIC_FIELD:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    return-object p0

    .line 29
    :cond_2
    sget-object p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->GRAVITY:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    return-object p0

    .line 27
    :cond_3
    sget-object p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->GYROSCOPE:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    return-object p0

    .line 25
    :cond_4
    sget-object p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->ACCELEROMETER:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;
    .locals 1

    .line 5
    const-class v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;
    .locals 1

    .line 5
    sget-object v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->$VALUES:[Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    invoke-virtual {v0}, [Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->type:I

    return v0
.end method
