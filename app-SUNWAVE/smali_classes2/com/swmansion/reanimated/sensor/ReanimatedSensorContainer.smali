.class public Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;
.super Ljava/lang/Object;
.source "ReanimatedSensorContainer.java"


# instance fields
.field private nextSensorId:I

.field private final reactContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field

.field private final sensors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/swmansion/reanimated/sensor/ReanimatedSensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->nextSensorId:I

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->sensors:Ljava/util/HashMap;

    .line 16
    iput-object p1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->reactContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public registerSensor(Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/NativeProxy$SensorSetter;)I
    .locals 5

    .line 21
    new-instance v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;

    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->reactContext:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;-><init>(Ljava/lang/ref/WeakReference;Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/NativeProxy$SensorSetter;)V

    .line 23
    invoke-virtual {v0}, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->initialize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->nextSensorId:I

    add-int/lit8 v1, v0, 0x1

    .line 25
    iput v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->nextSensorId:I

    .line 26
    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->sensors:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;

    iget-object v4, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->reactContext:Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;-><init>(Ljava/lang/ref/WeakReference;Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/NativeProxy$SensorSetter;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public unregisterSensor(I)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->sensors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->cancel()V

    .line 35
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->sensors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "Reanimated"

    const-string v0, "Tried to unregister nonexistent sensor"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
