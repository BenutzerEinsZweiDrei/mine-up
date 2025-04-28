.class final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideBluetoothAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;
    .locals 1

    .line 34
    sget-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;

    return-object v0
.end method
