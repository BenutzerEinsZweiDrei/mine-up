.class final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideEnableIndicationValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;
    .locals 1

    .line 31
    sget-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;

    return-object v0
.end method
