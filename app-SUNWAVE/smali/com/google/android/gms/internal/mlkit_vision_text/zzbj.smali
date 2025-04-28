.class final Lcom/google/android/gms/internal/mlkit_vision_text/zzbj;
.super Lcom/google/android/gms/internal/mlkit_vision_text/zzac;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_text/zzac<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_text/zzbl<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_text/zzbl<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzac;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzbj;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzbj;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbl;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
