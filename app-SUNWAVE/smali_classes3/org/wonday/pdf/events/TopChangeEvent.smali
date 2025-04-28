.class public Lorg/wonday/pdf/events/TopChangeEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "TopChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lorg/wonday/pdf/events/TopChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private eventData:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method public constructor <init>(IILcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 13
    iput-object p3, p0, Lorg/wonday/pdf/events/TopChangeEvent;->eventData:Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method


# virtual methods
.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/wonday/pdf/events/TopChangeEvent;->eventData:Lcom/facebook/react/bridge/WritableMap;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topChange"

    return-object v0
.end method
