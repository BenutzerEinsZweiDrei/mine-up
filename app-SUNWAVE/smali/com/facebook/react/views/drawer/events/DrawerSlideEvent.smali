.class public Lcom/facebook/react/views/drawer/events/DrawerSlideEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "DrawerSlideEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/drawer/events/DrawerSlideEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topDrawerSlide"


# instance fields
.field private final mOffset:F


# direct methods
.method public constructor <init>(IF)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/react/views/drawer/events/DrawerSlideEvent;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 28
    iput p3, p0, Lcom/facebook/react/views/drawer/events/DrawerSlideEvent;->mOffset:F

    return-void
.end method


# virtual methods
.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 42
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/facebook/react/views/drawer/events/DrawerSlideEvent;->getOffset()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "offset"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "topDrawerSlide"

    return-object v0
.end method

.method public getOffset()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/facebook/react/views/drawer/events/DrawerSlideEvent;->mOffset:F

    return v0
.end method
