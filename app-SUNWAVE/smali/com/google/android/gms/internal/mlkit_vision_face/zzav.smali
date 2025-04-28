.class final Lcom/google/android/gms/internal/mlkit_vision_face/zzav;
.super Lcom/google/android/gms/internal/mlkit_vision_face/zzay;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_face/zzay<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzbc;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzav;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzbc;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzay;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzbc;Lcom/google/android/gms/internal/mlkit_vision_face/zzau;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzba;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzav;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzbc;

    .line 1
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzba;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzbc;I)V

    return-object v0
.end method
