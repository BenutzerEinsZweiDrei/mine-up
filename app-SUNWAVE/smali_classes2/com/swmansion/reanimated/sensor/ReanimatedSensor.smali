.class public Lcom/swmansion/reanimated/sensor/ReanimatedSensor;
.super Ljava/lang/Object;
.source "ReanimatedSensor.java"


# instance fields
.field interval:I

.field listener:Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

.field sensor:Landroid/hardware/Sensor;

.field sensorManager:Landroid/hardware/SensorManager;

.field sensorType:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/NativeProxy$SensorSetter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;",
            "Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;",
            "I",
            "Lcom/swmansion/reanimated/NativeProxy$SensorSetter;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

    int-to-double v1, p3

    invoke-direct {v0, p4, v1, v2}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;-><init>(Lcom/swmansion/reanimated/NativeProxy$SensorSetter;D)V

    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->listener:Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

    .line 24
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string p1, "sensor"

    invoke-virtual {p4, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 25
    iput-object p2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorType:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    .line 26
    iput p3, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->interval:I

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->listener:Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

    iget-object v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method initialize()Z
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorType:Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    invoke-virtual {v1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->listener:Lcom/swmansion/reanimated/sensor/ReanimatedSensorListener;

    iget v3, p0, Lcom/swmansion/reanimated/sensor/ReanimatedSensor;->interval:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
