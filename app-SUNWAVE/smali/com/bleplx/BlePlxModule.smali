.class public Lcom/bleplx/BlePlxModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "BlePlxModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "BlePlx"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "BlePlx"


# instance fields
.field private bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

.field private final characteristicConverter:Lcom/bleplx/converter/CharacteristicToJsObjectConverter;

.field private final descriptorConverter:Lcom/bleplx/converter/DescriptorToJsObjectConverter;

.field private final deviceConverter:Lcom/bleplx/converter/DeviceToJsObjectConverter;

.field private final errorConverter:Lcom/bleplx/converter/BleErrorToJsObjectConverter;

.field private final scanResultConverter:Lcom/bleplx/converter/ScanResultToJsObjectConverter;

.field private final serviceConverter:Lcom/bleplx/converter/ServiceToJsObjectConverter;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 65
    new-instance p1, Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    invoke-direct {p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;-><init>()V

    iput-object p1, p0, Lcom/bleplx/BlePlxModule;->errorConverter:Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    .line 66
    new-instance p1, Lcom/bleplx/converter/ScanResultToJsObjectConverter;

    invoke-direct {p1}, Lcom/bleplx/converter/ScanResultToJsObjectConverter;-><init>()V

    iput-object p1, p0, Lcom/bleplx/BlePlxModule;->scanResultConverter:Lcom/bleplx/converter/ScanResultToJsObjectConverter;

    .line 67
    new-instance p1, Lcom/bleplx/converter/DeviceToJsObjectConverter;

    invoke-direct {p1}, Lcom/bleplx/converter/DeviceToJsObjectConverter;-><init>()V

    iput-object p1, p0, Lcom/bleplx/BlePlxModule;->deviceConverter:Lcom/bleplx/converter/DeviceToJsObjectConverter;

    .line 68
    new-instance p1, Lcom/bleplx/converter/CharacteristicToJsObjectConverter;

    invoke-direct {p1}, Lcom/bleplx/converter/CharacteristicToJsObjectConverter;-><init>()V

    iput-object p1, p0, Lcom/bleplx/BlePlxModule;->characteristicConverter:Lcom/bleplx/converter/CharacteristicToJsObjectConverter;

    .line 69
    new-instance p1, Lcom/bleplx/converter/DescriptorToJsObjectConverter;

    invoke-direct {p1}, Lcom/bleplx/converter/DescriptorToJsObjectConverter;-><init>()V

    iput-object p1, p0, Lcom/bleplx/BlePlxModule;->descriptorConverter:Lcom/bleplx/converter/DescriptorToJsObjectConverter;

    .line 70
    new-instance p1, Lcom/bleplx/converter/ServiceToJsObjectConverter;

    invoke-direct {p1}, Lcom/bleplx/converter/ServiceToJsObjectConverter;-><init>()V

    iput-object p1, p0, Lcom/bleplx/BlePlxModule;->serviceConverter:Lcom/bleplx/converter/ServiceToJsObjectConverter;

    return-void
.end method

.method static synthetic access$000(Lcom/bleplx/BlePlxModule;Lcom/bleplx/Event;Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/bleplx/BlePlxModule;->sendEvent(Lcom/bleplx/Event;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/BleErrorToJsObjectConverter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/bleplx/BlePlxModule;->errorConverter:Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/ScanResultToJsObjectConverter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/bleplx/BlePlxModule;->scanResultConverter:Lcom/bleplx/converter/ScanResultToJsObjectConverter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/DeviceToJsObjectConverter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/bleplx/BlePlxModule;->deviceConverter:Lcom/bleplx/converter/DeviceToJsObjectConverter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/CharacteristicToJsObjectConverter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/bleplx/BlePlxModule;->characteristicConverter:Lcom/bleplx/converter/CharacteristicToJsObjectConverter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/DescriptorToJsObjectConverter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/bleplx/BlePlxModule;->descriptorConverter:Lcom/bleplx/converter/DescriptorToJsObjectConverter;

    return-object p0
.end method

.method private sendEvent(Lcom/bleplx/Event;Ljava/lang/Object;)V
    .locals 2

    .line 948
    invoke-virtual {p0}, Lcom/bleplx/BlePlxModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 949
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    iget-object p1, p1, Lcom/bleplx/Event;->name:Ljava/lang/String;

    .line 950
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public cancelDeviceConnection(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 366
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p2}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 367
    iget-object p2, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v1, Lcom/bleplx/BlePlxModule$22;

    invoke-direct {v1, p0, v0}, Lcom/bleplx/BlePlxModule$22;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$23;

    invoke-direct {v2, p0, v0}, Lcom/bleplx/BlePlxModule$23;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    invoke-interface {p2, p1, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->cancelDeviceConnection(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public cancelTransaction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->cancelTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public characteristicsForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0, p1, p2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->getCharacteristicsForDevice(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 440
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 441
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Characteristic;

    .line 442
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->characteristicConverter:Lcom/bleplx/converter/CharacteristicToJsObjectConverter;

    invoke-virtual {v1, v0}, Lcom/bleplx/converter/CharacteristicToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Characteristic;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 446
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->errorConverter:Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    invoke-virtual {v0, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->toJs(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public characteristicsForService(ILcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->getCharacteristicsForService(I)Ljava/util/List;

    move-result-object p1

    .line 454
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 455
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/multiplatformbleadapter/Characteristic;

    .line 456
    iget-object v2, p0, Lcom/bleplx/BlePlxModule;->characteristicConverter:Lcom/bleplx/converter/CharacteristicToJsObjectConverter;

    invoke-virtual {v2, v1}, Lcom/bleplx/converter/CharacteristicToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Characteristic;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->errorConverter:Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    invoke-virtual {v1, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->toJs(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public connectToDevice(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 17
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 305
    new-instance v2, Lcom/bleplx/utils/SafePromise;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    const-string v5, "autoConnect"

    .line 314
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v6

    sget-object v7, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    if-ne v6, v7, :cond_0

    .line 315
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v6, "requestMTU"

    .line 317
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v7

    sget-object v8, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v7, v8, :cond_1

    .line 318
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const-string v7, "refreshGatt"

    .line 320
    invoke-interface {v1, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v8

    sget-object v9, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v8, v9, :cond_2

    .line 321
    invoke-interface {v1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->getByName(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    const-string/jumbo v8, "timeout"

    .line 323
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v9

    sget-object v10, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v9, v10, :cond_3

    .line 324
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v3

    :goto_3
    const-string v9, "connectionPriority"

    .line 326
    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v10

    sget-object v11, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v10, v11, :cond_4

    .line 327
    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_4
    move v10, v4

    move v4, v5

    move-object v1, v8

    move-object v8, v7

    move v7, v6

    goto :goto_4

    :cond_5
    move-object v1, v3

    move-object v8, v1

    move v7, v4

    move v10, v7

    .line 330
    :goto_4
    iget-object v11, v0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v13, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;

    .line 332
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v1, :cond_6

    .line 335
    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_6
    move-object v9, v3

    move-object v5, v13

    invoke-direct/range {v5 .. v10}, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;-><init>(Ljava/lang/Boolean;ILcom/polidea/multiplatformbleadapter/RefreshGattMoment;Ljava/lang/Long;I)V

    new-instance v14, Lcom/bleplx/BlePlxModule$19;

    invoke-direct {v14, v0, v2}, Lcom/bleplx/BlePlxModule$19;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v15, Lcom/bleplx/BlePlxModule$20;

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/bleplx/BlePlxModule$20;-><init>(Lcom/bleplx/BlePlxModule;Ljava/lang/String;)V

    new-instance v3, Lcom/bleplx/BlePlxModule$21;

    invoke-direct {v3, v0, v2}, Lcom/bleplx/BlePlxModule$21;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move-object/from16 v12, p1

    move-object/from16 v16, v3

    .line 330
    invoke-interface/range {v11 .. v16}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->connectToDevice(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/ConnectionOptions;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public connectedDevices(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-static {p1}, Lcom/bleplx/utils/ReadableArrayConverter;->toStringArray(Lcom/facebook/react/bridge/ReadableArray;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/bleplx/BlePlxModule$11;

    invoke-direct {v1, p0, p2}, Lcom/bleplx/BlePlxModule$11;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$12;

    invoke-direct {v2, p0, p2}, Lcom/bleplx/BlePlxModule$12;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->getConnectedDevices([Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public createClient(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/bleplx/BlePlxModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/polidea/multiplatformbleadapter/BleAdapterFactory;->getNewAdapter(Landroid/content/Context;)Lcom/polidea/multiplatformbleadapter/BleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    .line 92
    new-instance v1, Lcom/bleplx/BlePlxModule$1;

    invoke-direct {v1, p0}, Lcom/bleplx/BlePlxModule$1;-><init>(Lcom/bleplx/BlePlxModule;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$2;

    invoke-direct {v2, p0}, Lcom/bleplx/BlePlxModule$2;-><init>(Lcom/bleplx/BlePlxModule;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->createClient(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V

    return-void
.end method

.method public descriptorsForCharacteristic(ILcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->descriptorsForCharacteristic(I)Ljava/util/List;

    move-result-object p1

    .line 502
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 503
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/multiplatformbleadapter/Descriptor;

    .line 504
    iget-object v2, p0, Lcom/bleplx/BlePlxModule;->descriptorConverter:Lcom/bleplx/converter/DescriptorToJsObjectConverter;

    invoke-virtual {v2, v1}, Lcom/bleplx/converter/DescriptorToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Descriptor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 506
    :cond_0
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 508
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->errorConverter:Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    invoke-virtual {v1, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->toJs(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public descriptorsForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->descriptorsForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 471
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/polidea/multiplatformbleadapter/Descriptor;

    .line 473
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->descriptorConverter:Lcom/bleplx/converter/DescriptorToJsObjectConverter;

    invoke-virtual {v0, p3}, Lcom/bleplx/converter/DescriptorToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Descriptor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 477
    iget-object p3, p0, Lcom/bleplx/BlePlxModule;->errorConverter:Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    invoke-virtual {p3, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->toJs(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public descriptorsForService(ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0, p1, p2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->descriptorsForService(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 487
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 488
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Descriptor;

    .line 489
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->descriptorConverter:Lcom/bleplx/converter/DescriptorToJsObjectConverter;

    invoke-virtual {v1, v0}, Lcom/bleplx/converter/DescriptorToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Descriptor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 491
    :cond_0
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 493
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->errorConverter:Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    invoke-virtual {v0, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->toJs(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public destroyClient()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->destroyClient()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    return-void
.end method

.method public devices(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-static {p1}, Lcom/bleplx/utils/ReadableArrayConverter;->toStringArray(Lcom/facebook/react/bridge/ReadableArray;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/bleplx/BlePlxModule$9;

    invoke-direct {v1, p0, p2}, Lcom/bleplx/BlePlxModule$9;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$10;

    invoke-direct {v2, p0, p2}, Lcom/bleplx/BlePlxModule$10;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->getKnownDevices([Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public disable(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 149
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p2}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 150
    iget-object p2, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v1, Lcom/bleplx/BlePlxModule$5;

    invoke-direct {v1, p0, v0}, Lcom/bleplx/BlePlxModule$5;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$6;

    invoke-direct {v2, p0, v0}, Lcom/bleplx/BlePlxModule$6;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    invoke-interface {p2, p1, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->disable(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public discoverAllServicesAndCharacteristicsForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 401
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p3}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 402
    iget-object p3, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v1, Lcom/bleplx/BlePlxModule$26;

    invoke-direct {v1, p0, v0}, Lcom/bleplx/BlePlxModule$26;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$27;

    invoke-direct {v2, p0, v0}, Lcom/bleplx/BlePlxModule$27;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    invoke-interface {p3, p1, p2, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->discoverAllServicesAndCharacteristicsForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public enable(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 133
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p2}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 134
    iget-object p2, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v1, Lcom/bleplx/BlePlxModule$3;

    invoke-direct {v1, p0, v0}, Lcom/bleplx/BlePlxModule$3;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$4;

    invoke-direct {v2, p0, v0}, Lcom/bleplx/BlePlxModule$4;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    invoke-interface {p2, p1, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->enable(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-static {}, Lcom/bleplx/Event;->values()[Lcom/bleplx/Event;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 78
    iget-object v5, v4, Lcom/bleplx/Event;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/bleplx/Event;->name:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BlePlx"

    return-object v0
.end method

.method public isDeviceConnected(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v1, Lcom/bleplx/BlePlxModule$24;

    invoke-direct {v1, p0, p2}, Lcom/bleplx/BlePlxModule$24;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$25;

    invoke-direct {v2, p0, p2}, Lcom/bleplx/BlePlxModule$25;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->isDeviceConnected(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public logLevel(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->getLogLevel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public monitorCharacteristic(ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 712
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p3}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 714
    iget-object p3, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v1, Lcom/bleplx/BlePlxModule$44;

    invoke-direct {v1, p0, p2}, Lcom/bleplx/BlePlxModule$44;-><init>(Lcom/bleplx/BlePlxModule;Ljava/lang/String;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$45;

    invoke-direct {v2, p0, v0}, Lcom/bleplx/BlePlxModule$45;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    invoke-interface {p3, p1, p2, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->monitorCharacteristic(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public monitorCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 661
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p5}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 662
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v6, Lcom/bleplx/BlePlxModule$40;

    invoke-direct {v6, p0, p4}, Lcom/bleplx/BlePlxModule$40;-><init>(Lcom/bleplx/BlePlxModule;Ljava/lang/String;)V

    new-instance v7, Lcom/bleplx/BlePlxModule$41;

    invoke-direct {v7, p0, v0}, Lcom/bleplx/BlePlxModule$41;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->monitorCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public monitorCharacteristicForService(ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 687
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p4}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 688
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v5, Lcom/bleplx/BlePlxModule$42;

    invoke-direct {v5, p0, p3}, Lcom/bleplx/BlePlxModule$42;-><init>(Lcom/bleplx/BlePlxModule;Ljava/lang/String;)V

    new-instance v6, Lcom/bleplx/BlePlxModule$43;

    invoke-direct {v6, p0, v0}, Lcom/bleplx/BlePlxModule$43;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->monitorCharacteristicForService(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readCharacteristic(ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 637
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p3}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 639
    iget-object p3, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v1, Lcom/bleplx/BlePlxModule$38;

    invoke-direct {v1, p0, v0}, Lcom/bleplx/BlePlxModule$38;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$39;

    invoke-direct {v2, p0, v0}, Lcom/bleplx/BlePlxModule$39;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    invoke-interface {p3, p1, p2, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->readCharacteristic(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 592
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p5}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 594
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v6, Lcom/bleplx/BlePlxModule$34;

    invoke-direct {v6, p0, v0}, Lcom/bleplx/BlePlxModule$34;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v7, Lcom/bleplx/BlePlxModule$35;

    invoke-direct {v7, p0, v0}, Lcom/bleplx/BlePlxModule$35;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->readCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readCharacteristicForService(ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 615
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p4}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 617
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v5, Lcom/bleplx/BlePlxModule$36;

    invoke-direct {v5, p0, v0}, Lcom/bleplx/BlePlxModule$36;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v6, Lcom/bleplx/BlePlxModule$37;

    invoke-direct {v6, p0, v0}, Lcom/bleplx/BlePlxModule$37;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->readCharacteristicForService(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readDescriptor(ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v1, Lcom/bleplx/BlePlxModule$52;

    invoke-direct {v1, p0, p3}, Lcom/bleplx/BlePlxModule$52;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$53;

    invoke-direct {v2, p0, p3}, Lcom/bleplx/BlePlxModule$53;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->readDescriptor(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readDescriptorForCharacteristic(ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v4, Lcom/bleplx/BlePlxModule$50;

    invoke-direct {v4, p0, p4}, Lcom/bleplx/BlePlxModule$50;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v5, Lcom/bleplx/BlePlxModule$51;

    invoke-direct {v5, p0, p4}, Lcom/bleplx/BlePlxModule$51;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->readDescriptorForCharacteristic(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readDescriptorForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v6, Lcom/bleplx/BlePlxModule$46;

    invoke-direct {v6, p0, p6}, Lcom/bleplx/BlePlxModule$46;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v7, Lcom/bleplx/BlePlxModule$47;

    invoke-direct {v7, p0, p6}, Lcom/bleplx/BlePlxModule$47;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->readDescriptorForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readDescriptorForService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v5, Lcom/bleplx/BlePlxModule$48;

    invoke-direct {v5, p0, p5}, Lcom/bleplx/BlePlxModule$48;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v6, Lcom/bleplx/BlePlxModule$49;

    invoke-direct {v6, p0, p5}, Lcom/bleplx/BlePlxModule$49;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->readDescriptorForService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readRSSIForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 288
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p3}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 289
    iget-object p3, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v1, Lcom/bleplx/BlePlxModule$17;

    invoke-direct {v1, p0, v0}, Lcom/bleplx/BlePlxModule$17;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v2, Lcom/bleplx/BlePlxModule$18;

    invoke-direct {v2, p0, v0}, Lcom/bleplx/BlePlxModule$18;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    invoke-interface {p3, p1, p2, v1, v2}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->readRSSIForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public removeListeners(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public requestConnectionPriorityForDevice(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 254
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p4}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 255
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v5, Lcom/bleplx/BlePlxModule$13;

    invoke-direct {v5, p0, v0}, Lcom/bleplx/BlePlxModule$13;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v6, Lcom/bleplx/BlePlxModule$14;

    invoke-direct {v6, p0, v0}, Lcom/bleplx/BlePlxModule$14;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->requestConnectionPriorityForDevice(Ljava/lang/String;ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public requestMTUForDevice(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 271
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p4}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 272
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v5, Lcom/bleplx/BlePlxModule$15;

    invoke-direct {v5, p0, v0}, Lcom/bleplx/BlePlxModule$15;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v6, Lcom/bleplx/BlePlxModule$16;

    invoke-direct {v6, p0, v0}, Lcom/bleplx/BlePlxModule$16;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->requestMTUForDevice(Ljava/lang/String;ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public servicesForDevice(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->getServicesForDevice(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 422
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 423
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/multiplatformbleadapter/Service;

    .line 424
    iget-object v2, p0, Lcom/bleplx/BlePlxModule;->serviceConverter:Lcom/bleplx/converter/ServiceToJsObjectConverter;

    invoke-virtual {v2, v1}, Lcom/bleplx/converter/ServiceToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Service;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 428
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->errorConverter:Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    invoke-virtual {v1, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->toJs(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->setLogLevel(Ljava/lang/String;)V

    return-void
.end method

.method public startDeviceScan(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    const-string v2, "scanMode"

    .line 179
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v4, :cond_0

    .line 180
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string v2, "callbackType"

    .line 182
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v4, :cond_1

    .line 183
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    move v4, v0

    move v5, v1

    .line 187
    iget-object v2, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    if-eqz p1, :cond_2

    .line 188
    invoke-static {p1}, Lcom/bleplx/utils/ReadableArrayConverter;->toStringArray(Lcom/facebook/react/bridge/ReadableArray;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    new-instance v6, Lcom/bleplx/BlePlxModule$7;

    invoke-direct {v6, p0}, Lcom/bleplx/BlePlxModule$7;-><init>(Lcom/bleplx/BlePlxModule;)V

    new-instance v7, Lcom/bleplx/BlePlxModule$8;

    invoke-direct {v7, p0}, Lcom/bleplx/BlePlxModule$8;-><init>(Lcom/bleplx/BlePlxModule;)V

    .line 187
    invoke-interface/range {v2 .. v7}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->startDeviceScan([Ljava/lang/String;IILcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public state(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->getCurrentState()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public stopDeviceScan()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-interface {v0}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->stopDeviceScan()V

    return-void
.end method

.method public writeCharacteristic(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 570
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p5}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 572
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v6, Lcom/bleplx/BlePlxModule$32;

    invoke-direct {v6, p0, v0}, Lcom/bleplx/BlePlxModule$32;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v7, Lcom/bleplx/BlePlxModule$33;

    invoke-direct {v7, p0, v0}, Lcom/bleplx/BlePlxModule$33;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->writeCharacteristic(ILjava/lang/String;ZLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public writeCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 11
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object v0, p0

    .line 522
    new-instance v1, Lcom/bleplx/utils/SafePromise;

    move-object/from16 v2, p7

    invoke-direct {v1, v2}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 524
    iget-object v2, v0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    .line 525
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-instance v9, Lcom/bleplx/BlePlxModule$28;

    invoke-direct {v9, p0, v1}, Lcom/bleplx/BlePlxModule$28;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v10, Lcom/bleplx/BlePlxModule$29;

    invoke-direct {v10, p0, v1}, Lcom/bleplx/BlePlxModule$29;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    .line 524
    invoke-interface/range {v2 .. v10}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->writeCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public writeCharacteristicForService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 547
    new-instance v0, Lcom/bleplx/utils/SafePromise;

    invoke-direct {v0, p6}, Lcom/bleplx/utils/SafePromise;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 548
    iget-object v1, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    .line 549
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    new-instance v7, Lcom/bleplx/BlePlxModule$30;

    invoke-direct {v7, p0, v0}, Lcom/bleplx/BlePlxModule$30;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    new-instance v8, Lcom/bleplx/BlePlxModule$31;

    invoke-direct {v8, p0, v0}, Lcom/bleplx/BlePlxModule$31;-><init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    .line 548
    invoke-interface/range {v1 .. v8}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->writeCharacteristicForService(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public writeDescriptor(ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v4, Lcom/bleplx/BlePlxModule$60;

    invoke-direct {v4, p0, p4}, Lcom/bleplx/BlePlxModule$60;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v5, Lcom/bleplx/BlePlxModule$61;

    invoke-direct {v5, p0, p4}, Lcom/bleplx/BlePlxModule$61;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->writeDescriptor(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public writeDescriptorForCharacteristic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v5, Lcom/bleplx/BlePlxModule$58;

    invoke-direct {v5, p0, p5}, Lcom/bleplx/BlePlxModule$58;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v6, Lcom/bleplx/BlePlxModule$59;

    invoke-direct {v6, p0, p5}, Lcom/bleplx/BlePlxModule$59;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->writeDescriptorForCharacteristic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public writeDescriptorForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 10
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    .line 837
    iget-object v2, v0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v8, Lcom/bleplx/BlePlxModule$54;

    invoke-direct {v8, p0, v1}, Lcom/bleplx/BlePlxModule$54;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v9, Lcom/bleplx/BlePlxModule$55;

    invoke-direct {v9, p0, v1}, Lcom/bleplx/BlePlxModule$55;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->writeDescriptorForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public writeDescriptorForService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/bleplx/BlePlxModule;->bleAdapter:Lcom/polidea/multiplatformbleadapter/BleAdapter;

    new-instance v6, Lcom/bleplx/BlePlxModule$56;

    invoke-direct {v6, p0, p6}, Lcom/bleplx/BlePlxModule$56;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    new-instance v7, Lcom/bleplx/BlePlxModule$57;

    invoke-direct {v7, p0, p6}, Lcom/bleplx/BlePlxModule$57;-><init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/polidea/multiplatformbleadapter/BleAdapter;->writeDescriptorForService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method
