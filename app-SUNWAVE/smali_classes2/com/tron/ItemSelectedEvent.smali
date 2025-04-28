.class Lcom/tron/ItemSelectedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactWheelCurvedPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/tron/ItemSelectedEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "wheelCurvedPickerPageSelected"


# instance fields
.field private final mValue:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 83
    iput-object p2, p0, Lcom/tron/ItemSelectedEvent;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 97
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/tron/ItemSelectedEvent;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 100
    const-class v2, Ljava/lang/Integer;

    const-string v3, "data"

    if-ne v1, v2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/tron/ItemSelectedEvent;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 102
    :cond_0
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_1

    .line 103
    iget-object v1, p0, Lcom/tron/ItemSelectedEvent;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/tron/ItemSelectedEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/tron/ItemSelectedEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/tron/ItemSelectedEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "wheelCurvedPickerPageSelected"

    return-object v0
.end method
