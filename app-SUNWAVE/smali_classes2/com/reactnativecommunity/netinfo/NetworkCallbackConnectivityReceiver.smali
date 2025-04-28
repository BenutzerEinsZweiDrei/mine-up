.class public Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;
.super Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;
.source "NetworkCallbackConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;
    }
.end annotation


# static fields
.field private static final DELAY_MS:I = 0xfa


# instance fields
.field private mCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    .line 44
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mCapabilities:Landroid/net/NetworkCapabilities;

    .line 48
    new-instance v0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;

    invoke-direct {v0, p0, p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;-><init>(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$1;)V

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCallback:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;)Landroid/net/Network;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$102(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$200(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->asyncUpdateAndSend(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method private asyncUpdateAndSend(I)V
    .locals 4

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$asyncUpdateAndSend$0$com-reactnativecommunity-netinfo-NetworkCallbackConnectivityReceiver()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mCapabilities:Landroid/net/NetworkCapabilities;

    .line 142
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->updateAndSend()V

    return-void
.end method

.method public register()V
    .locals 2

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->asyncUpdateAndSend(I)V

    .line 62
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCallback:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetworkCallback:Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver$ConnectivityNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method updateAndSend()V
    .locals 9

    .line 81
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 87
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mNetwork:Landroid/net/Network;

    .line 88
    iget-object v2, p0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->mCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    const/4 v5, 0x2

    .line 92
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 93
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->BLUETOOTH:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->CELLULAR:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    .line 96
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->ETHERNET:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->WIFI:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    .line 100
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 101
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->VPN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 107
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v3

    .line 111
    :goto_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_6

    const/16 v7, 0x15

    .line 112
    invoke-virtual {v2, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    xor-int/2addr v7, v6

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    .line 115
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 116
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v6

    goto :goto_2

    :cond_7
    move v7, v4

    :goto_2
    const/16 v8, 0xc

    .line 123
    invoke-virtual {v2, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x10

    .line 124
    invoke-virtual {v2, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v7, :cond_8

    move v4, v6

    :cond_8
    if-eqz v1, :cond_a

    .line 129
    sget-object v1, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->CELLULAR:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    if-ne v0, v1, :cond_a

    if-eqz v4, :cond_a

    .line 130
    invoke-static {v5}, Lcom/reactnativecommunity/netinfo/types/CellularGeneration;->fromNetworkInfo(Landroid/net/NetworkInfo;)Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    move-result-object v3

    goto :goto_3

    .line 133
    :cond_9
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->NONE:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 136
    :cond_a
    :goto_3
    invoke-virtual {p0, v0, v3, v4}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;->updateConnectivity(Lcom/reactnativecommunity/netinfo/types/ConnectionType;Lcom/reactnativecommunity/netinfo/types/CellularGeneration;Z)V

    return-void
.end method
