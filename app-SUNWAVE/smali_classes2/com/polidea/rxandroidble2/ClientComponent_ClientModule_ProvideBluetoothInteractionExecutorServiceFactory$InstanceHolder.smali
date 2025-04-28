.class final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory;
    .locals 1

    .line 33
    sget-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory;

    return-object v0
.end method
