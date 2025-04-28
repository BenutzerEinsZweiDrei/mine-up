.class public Lcom/henninghall/date_picker/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deviceEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    .locals 2

    .line 19
    sget-object v0, Lcom/henninghall/date_picker/DatePickerPackage;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    return-object v0
.end method

.method private static eventEmitter()Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    .locals 2

    .line 15
    sget-object v0, Lcom/henninghall/date_picker/DatePickerPackage;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    return-object v0
.end method

.method public static onDateChange(Ljava/util/Calendar;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 23
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 24
    invoke-static {p0}, Lcom/henninghall/date_picker/Utils;->dateToIso(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "date"

    .line 25
    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "dateString"

    .line 26
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/henninghall/date_picker/Emitter;->eventEmitter()Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const-string p2, "dateChange"

    invoke-interface {p0, p1, p2, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
