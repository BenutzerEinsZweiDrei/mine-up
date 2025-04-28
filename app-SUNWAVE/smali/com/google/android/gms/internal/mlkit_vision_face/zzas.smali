.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzas;
.super Lcom/google/android/gms/internal/mlkit_vision_face/zzat;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_face/zzat<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzbc;

    const/16 v1, 0xc

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbc;-><init>(I)V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzat;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static zzr()Lcom/google/android/gms/internal/mlkit_vision_face/zzas;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/mlkit_vision_face/zzas<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzas;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzas;-><init>()V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic zza()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    .line 1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
