.class final Lcom/google/android/gms/internal/mlkit_vision_text/zzau;
.super Lcom/google/android/gms/internal/mlkit_vision_text/zzax;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_text/zzax<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzau;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzax;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;Lcom/google/android/gms/internal/mlkit_vision_text/zzat;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzau;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;

    .line 1
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzaz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzbb;I)V

    return-object v0
.end method
