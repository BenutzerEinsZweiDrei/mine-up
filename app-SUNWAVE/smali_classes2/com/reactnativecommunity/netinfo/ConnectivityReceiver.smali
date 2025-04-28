.class public abstract Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;
.super Ljava/lang/Object;
.source "ConnectivityReceiver.java"


# instance fields
.field public hasListener:Z

.field private mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIsInternetReachable:Z

.field private mIsInternetReachableOverride:Ljava/lang/Boolean;

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->hasListener:Z

    .line 42
    sget-object v1, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iput-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    .line 46
    iput-boolean v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    .line 68
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "connectivity"

    .line 70
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "phone"

    .line 75
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private createDetailsMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 170
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "cellular"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "ethernet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string p1, "subnet"

    const-string v1, "ipAddress"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 204
    :pswitch_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-static {v2}, Lcom/reactnativecommunity/netinfo/NetInfoUtils;->isAccessWifiStatePermissionGranted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 205
    iget-object v2, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 209
    :try_start_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "<unknown ssid>"

    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "\""

    const-string v5, ""

    .line 212
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ssid"

    .line 213
    invoke-interface {v0, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :catch_0
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "bssid"

    .line 223
    invoke-interface {v0, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :catch_1
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    const-string v4, "strength"

    .line 234
    invoke-interface {v0, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    :catch_2
    :try_start_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_5

    .line 242
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    const-string v4, "frequency"

    .line 243
    invoke-interface {v0, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 252
    :catch_3
    :cond_5
    :try_start_4
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 253
    invoke-static {v3}, Lcom/reactnativecommunity/netinfo/NetInfoUtils;->reverseByteArray([B)V

    .line 254
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 255
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-interface {v0, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 264
    :catch_4
    :try_start_5
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 265
    invoke-static {v1}, Lcom/reactnativecommunity/netinfo/NetInfoUtils;->reverseByteArray([B)V

    .line 266
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 267
    invoke-static {v1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getSubnet(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 275
    :catch_5
    :try_start_6
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p1

    const-string v1, "linkSpeed"

    .line 276
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 p1, 0x1d

    .line 283
    :try_start_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, p1, :cond_6

    .line 285
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v1

    const-string v3, "rxLinkSpeed"

    .line 286
    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 294
    :catch_7
    :cond_6
    :try_start_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, p1, :cond_a

    .line 296
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result p1

    const-string v1, "txLinkSpeed"

    .line 297
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_1

    .line 174
    :pswitch_1
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    if-eqz p1, :cond_7

    .line 175
    iget-object p1, p1, Lcom/reactnativecommunity/netinfo/types/CellularGeneration;->label:Ljava/lang/String;

    const-string v1, "cellularGeneration"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_7
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v1, "carrier"

    .line 181
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :pswitch_2
    :try_start_9
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 187
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 189
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 190
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 191
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_9

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_9

    .line 192
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v4}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getSubnet(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    return-object v0

    :catch_8
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_9
    :cond_a
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5499b029 -> :sswitch_2
        -0x36a22696 -> :sswitch_1
        0x37af15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSubnet(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 50
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    .line 56
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InterfaceAddress;

    .line 57
    invoke-virtual {p0}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    const/4 v1, -0x1

    shl-int p0, v1, p0

    .line 58
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    and-int/lit16 p0, p0, 0xff

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, v2, v0

    const-string p0, "%d.%d.%d.%d"

    .line 58
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearIsInternetReachableOverride()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachableOverride:Ljava/lang/Boolean;

    return-void
.end method

.method protected createConnectivityEventMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/reactnativecommunity/netinfo/NetInfoUtils;->isAccessWifiStatePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const-string v2, "isWifiEnabled"

    .line 139
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object v1, v1, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->label:Ljava/lang/String;

    :goto_0
    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    sget-object v2, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->NONE:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 147
    invoke-virtual {v1, v2}, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    sget-object v4, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 148
    invoke-virtual {v1, v4}, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-string v4, "isConnected"

    .line 149
    invoke-interface {v0, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    iget-boolean v4, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    if-eqz v4, :cond_4

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object v4, v4, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->label:Ljava/lang/String;

    .line 154
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    const-string v4, "isInternetReachable"

    .line 152
    invoke-interface {v0, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    goto :goto_2

    .line 157
    :cond_5
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object p1, p1, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->label:Ljava/lang/String;

    .line 158
    :goto_2
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->createDetailsMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    if-eqz v1, :cond_7

    .line 161
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    :goto_3
    const-string v1, "isConnectionExpensive"

    .line 162
    invoke-interface {p1, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    const-string v1, "details"

    .line 164
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getCurrentState(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->createConnectivityEventMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method public abstract register()V
.end method

.method protected sendConnectivityChangedEvent()V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 129
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->createConnectivityEventMap(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "netInfo.networkStatusDidChange"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsInternetReachableOverride(Z)V
    .locals 2

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachableOverride:Ljava/lang/Boolean;

    .line 88
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    iget-boolean v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->updateConnectivity(Lcom/reactnativecommunity/netinfo/types/ConnectionType;Lcom/reactnativecommunity/netinfo/types/CellularGeneration;Z)V

    return-void
.end method

.method public abstract unregister()V
.end method

.method updateConnectivity(Lcom/reactnativecommunity/netinfo/types/ConnectionType;Lcom/reactnativecommunity/netinfo/types/CellularGeneration;Z)V
    .locals 5
    .param p1    # Lcom/reactnativecommunity/netinfo/types/ConnectionType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/reactnativecommunity/netinfo/types/CellularGeneration;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachableOverride:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 114
    :goto_1
    iget-object v3, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    if-eq p2, v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 115
    :goto_2
    iget-boolean v4, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    if-eq p3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    .line 118
    :cond_4
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 119
    iput-object p2, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    .line 120
    iput-boolean p3, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    .line 121
    iget-boolean p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->hasListener:Z

    if-eqz p1, :cond_5

    .line 122
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->sendConnectivityChangedEvent()V

    :cond_5
    return-void
.end method
