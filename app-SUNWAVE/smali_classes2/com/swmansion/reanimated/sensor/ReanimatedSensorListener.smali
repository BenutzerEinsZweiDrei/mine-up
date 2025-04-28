.class public Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;
.super Ljava/lang/Object;
.source "ReanimatedSensorListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final interval:D

.field private lastRead:D

.field private orientation:[F

.field private quaternion:[F

.field private rotation:[F

.field private setter:Lcom/swmansion/reanimated/NativeProxy$SensorSetter;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/NativeProxy$SensorSetter;D)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->lastRead:D

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 15
    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->rotation:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 16
    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->orientation:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 17
    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->quaternion:[F

    .line 20
    iput-object p1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->setter:Lcom/swmansion/reanimated/NativeProxy$SensorSetter;

    .line 21
    iput-wide p2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->interval:D

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 27
    iget-wide v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->lastRead:D

    sub-double v2, v0, v2

    iget-wide v4, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->interval:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    .line 31
    iput-wide v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->lastRead:D

    const/16 v0, 0xb

    if-ne v2, v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->quaternion:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    .line 34
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->rotation:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 35
    iget-object p1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->rotation:[F

    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->orientation:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 p1, 0x7

    new-array p1, p1, [F

    .line 36
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->quaternion:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x0

    aput v2, p1, v3

    const/4 v2, 0x2

    aget v4, v0, v2

    aput v4, p1, v1

    const/4 v4, 0x3

    aget v5, v0, v4

    aput v5, p1, v2

    aget v0, v0, v3

    aput v0, p1, v4

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->orientation:[F

    aget v3, v4, v3

    aput v3, p1, v0

    const/4 v0, 0x5

    aget v1, v4, v1

    aput v1, p1, v0

    const/4 v0, 0x6

    aget v1, v4, v2

    aput v1, p1, v0

    .line 46
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->setter:Lcom/swmansion/reanimated/NativeProxy$SensorSetter;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NativeProxy$SensorSetter;->sensorSetter([F)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;->setter:Lcom/swmansion/reanimated/NativeProxy$SensorSetter;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NativeProxy$SensorSetter;->sensorSetter([F)V

    :goto_0
    return-void
.end method
