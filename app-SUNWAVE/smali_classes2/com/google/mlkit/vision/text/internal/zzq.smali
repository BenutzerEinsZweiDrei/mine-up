.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/text/internal/zzq;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/text/internal/zzq;

    invoke-direct {v0}, Lcom/google/mlkit/vision/text/internal/zzq;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/text/internal/zzq;->zza:Lcom/google/mlkit/vision/text/internal/zzq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/mlkit/vision/text/internal/zzk;

    const-class v1, Lcom/google/mlkit/vision/text/internal/zzl;

    .line 1
    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/text/internal/zzl;

    const-class v2, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 2
    invoke-interface {p1, v2}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/vision/text/internal/zzk;-><init>(Lcom/google/mlkit/vision/text/internal/zzl;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;)V

    return-object v0
.end method
