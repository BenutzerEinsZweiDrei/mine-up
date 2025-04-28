.class final Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ConnectionModule_GattWriteMtuOverheadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory;

    return-object v0
.end method
