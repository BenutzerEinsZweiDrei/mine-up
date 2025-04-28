.class public Lcom/tron/ReactWheelCurvedPicker;
.super Lcom/aigestudio/wheelpicker/WheelPicker;
.source "ReactWheelCurvedPicker.java"


# instance fields
.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mValueData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/aigestudio/wheelpicker/WheelPicker;-><init>(Landroid/content/Context;)V

    .line 38
    const-class v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/tron/ReactWheelCurvedPicker;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 39
    new-instance p1, Lcom/tron/ReactWheelCurvedPicker$1;

    invoke-direct {p1, p0}, Lcom/tron/ReactWheelCurvedPicker$1;-><init>(Lcom/tron/ReactWheelCurvedPicker;)V

    invoke-virtual {p0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setOnWheelChangeListener(Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tron/ReactWheelCurvedPicker;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tron/ReactWheelCurvedPicker;->mValueData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tron/ReactWheelCurvedPicker;)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tron/ReactWheelCurvedPicker;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-object p0
.end method


# virtual methods
.method public getState()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/aigestudio/wheelpicker/WheelPicker;->onMeasure(II)V

    return-void
.end method

.method public setValueData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/tron/ReactWheelCurvedPicker;->mValueData:Ljava/util/List;

    return-void
.end method
