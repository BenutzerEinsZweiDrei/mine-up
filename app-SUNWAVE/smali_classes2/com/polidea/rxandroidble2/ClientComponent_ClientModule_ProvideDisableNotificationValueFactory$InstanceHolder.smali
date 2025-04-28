.class final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideDisableNotificationValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;
    .locals 1

    .line 31
    sget-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;

    return-object v0
.end method
