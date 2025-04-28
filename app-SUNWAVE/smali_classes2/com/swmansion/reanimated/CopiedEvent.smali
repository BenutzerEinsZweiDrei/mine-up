.class public Lcom/swmansion/reanimated/CopiedEvent;
.super Ljava/lang/Object;
.source "CopiedEvent.java"


# instance fields
.field private eventName:Ljava/lang/String;

.field private payload:Lcom/facebook/react/bridge/WritableMap;

.field private targetTag:I


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/swmansion/reanimated/CopiedEvent$1;

    invoke-direct {v0, p0}, Lcom/swmansion/reanimated/CopiedEvent$1;-><init>(Lcom/swmansion/reanimated/CopiedEvent;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/events/Event;->dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    return-void
.end method

.method static synthetic access$002(Lcom/swmansion/reanimated/CopiedEvent;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/swmansion/reanimated/CopiedEvent;->targetTag:I

    return p1
.end method

.method static synthetic access$102(Lcom/swmansion/reanimated/CopiedEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/swmansion/reanimated/CopiedEvent;->eventName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/swmansion/reanimated/CopiedEvent;Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/swmansion/reanimated/CopiedEvent;->payload:Lcom/facebook/react/bridge/WritableMap;

    return-object p1
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/swmansion/reanimated/CopiedEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/swmansion/reanimated/CopiedEvent;->payload:Lcom/facebook/react/bridge/WritableMap;

    return-object v0
.end method

.method public getTargetTag()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/swmansion/reanimated/CopiedEvent;->targetTag:I

    return v0
.end method
