.class public final enum Lcom/bleplx/Event;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bleplx/Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bleplx/Event;

.field public static final enum DisconnectionEvent:Lcom/bleplx/Event;

.field public static final enum ReadEvent:Lcom/bleplx/Event;

.field public static final enum RestoreStateEvent:Lcom/bleplx/Event;

.field public static final enum ScanEvent:Lcom/bleplx/Event;

.field public static final enum StateChangeEvent:Lcom/bleplx/Event;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/bleplx/Event;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bleplx/Event;

    .line 3
    sget-object v1, Lcom/bleplx/Event;->ScanEvent:Lcom/bleplx/Event;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bleplx/Event;->ReadEvent:Lcom/bleplx/Event;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bleplx/Event;->StateChangeEvent:Lcom/bleplx/Event;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/bleplx/Event;->RestoreStateEvent:Lcom/bleplx/Event;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/bleplx/Event;->DisconnectionEvent:Lcom/bleplx/Event;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/bleplx/Event;

    const-string v1, "ScanEvent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/bleplx/Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bleplx/Event;->ScanEvent:Lcom/bleplx/Event;

    .line 6
    new-instance v0, Lcom/bleplx/Event;

    const-string v1, "ReadEvent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/bleplx/Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bleplx/Event;->ReadEvent:Lcom/bleplx/Event;

    .line 7
    new-instance v0, Lcom/bleplx/Event;

    const-string v1, "StateChangeEvent"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/bleplx/Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bleplx/Event;->StateChangeEvent:Lcom/bleplx/Event;

    .line 8
    new-instance v0, Lcom/bleplx/Event;

    const-string v1, "RestoreStateEvent"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/bleplx/Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bleplx/Event;->RestoreStateEvent:Lcom/bleplx/Event;

    .line 9
    new-instance v0, Lcom/bleplx/Event;

    const-string v1, "DisconnectionEvent"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/bleplx/Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bleplx/Event;->DisconnectionEvent:Lcom/bleplx/Event;

    .line 3
    invoke-static {}, Lcom/bleplx/Event;->$values()[Lcom/bleplx/Event;

    move-result-object v0

    sput-object v0, Lcom/bleplx/Event;->$VALUES:[Lcom/bleplx/Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/bleplx/Event;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bleplx/Event;
    .locals 1

    .line 3
    const-class v0, Lcom/bleplx/Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bleplx/Event;

    return-object p0
.end method

.method public static values()[Lcom/bleplx/Event;
    .locals 1

    .line 3
    sget-object v0, Lcom/bleplx/Event;->$VALUES:[Lcom/bleplx/Event;

    invoke-virtual {v0}, [Lcom/bleplx/Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bleplx/Event;

    return-object v0
.end method
