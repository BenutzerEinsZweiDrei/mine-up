.class public Lcom/facebook/react/views/drawer/events/DrawerClosedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "DrawerClosedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/drawer/events/DrawerClosedEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topDrawerClose"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/facebook/react/views/drawer/events/DrawerClosedEvent;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 34
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "topDrawerClose"

    return-object v0
.end method
