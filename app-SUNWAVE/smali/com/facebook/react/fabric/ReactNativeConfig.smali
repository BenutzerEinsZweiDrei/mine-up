.class public interface abstract Lcom/facebook/react/fabric/ReactNativeConfig;
.super Ljava/lang/Object;
.source "ReactNativeConfig.java"


# static fields
.field public static final DEFAULT_CONFIG:Lcom/facebook/react/fabric/ReactNativeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/facebook/react/fabric/EmptyReactNativeConfig;

    invoke-direct {v0}, Lcom/facebook/react/fabric/EmptyReactNativeConfig;-><init>()V

    sput-object v0, Lcom/facebook/react/fabric/ReactNativeConfig;->DEFAULT_CONFIG:Lcom/facebook/react/fabric/ReactNativeConfig;

    return-void
.end method


# virtual methods
.method public abstract getBool(Ljava/lang/String;)Z
.end method

.method public abstract getDouble(Ljava/lang/String;)D
.end method

.method public abstract getInt64(Ljava/lang/String;)J
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method
