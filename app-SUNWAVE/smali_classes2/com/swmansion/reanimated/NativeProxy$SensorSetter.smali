.class public Lcom/swmansion/reanimated/NativeProxy$SensorSetter;
.super Ljava/lang/Object;
.source "NativeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/NativeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorSetter"
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/swmansion/reanimated/NativeProxy$SensorSetter;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method


# virtual methods
.method public native sensorSetter([F)V
.end method
