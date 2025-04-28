.class public Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;
.super Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;
.source "BroadcastReceiverConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# instance fields
.field private final mConnectivityBroadcastReceiver:Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 35
    new-instance p1, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;-><init>(Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$1;)V

    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->mConnectivityBroadcastReceiver:Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->updateAndSendConnectionType()V

    return-void
.end method

.method private updateAndSendConnectionType()V
    .locals 6

    .line 57
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 63
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 70
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    const/16 v3, 0x9

    if-eq v4, v3, :cond_4

    const/16 v3, 0x11

    if-eq v4, v3, :cond_3

    const/4 v3, 0x6

    if-eq v4, v3, :cond_2

    const/4 v3, 0x7

    if-eq v4, v3, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->BLUETOOTH:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_1

    .line 87
    :cond_2
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->WIMAX:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_1

    .line 90
    :cond_3
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->VPN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_1

    .line 76
    :cond_4
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->ETHERNET:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_1

    .line 84
    :cond_5
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->WIFI:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    goto :goto_1

    .line 80
    :cond_6
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->CELLULAR:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 81
    invoke-static {v3}, Lcom/reactnativecommunity/netinfo/types/CellularGeneration;->fromNetworkInfo(Landroid/net/NetworkInfo;)Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    move-result-object v1

    goto :goto_1

    .line 64
    :cond_7
    :goto_0
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->NONE:Lcom/reactnativecommunity/netinfo/types/ConnectionType;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 98
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->updateConnectivity(Lcom/reactnativecommunity/netinfo/types/ConnectionType;Lcom/reactnativecommunity/netinfo/types/CellularGeneration;Z)V

    return-void
.end method


# virtual methods
.method public register()V
    .locals 3

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->mConnectivityBroadcastReceiver:Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->mConnectivityBroadcastReceiver:Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;->setRegistered(Z)V

    .line 44
    invoke-direct {p0}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->updateAndSendConnectionType()V

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->mConnectivityBroadcastReceiver:Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->mConnectivityBroadcastReceiver:Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;->mConnectivityBroadcastReceiver:Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver$ConnectivityBroadcastReceiver;->setRegistered(Z)V

    :cond_0
    return-void
.end method
