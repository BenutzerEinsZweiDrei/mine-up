.class final Lcom/google/android/gms/internal/mlkit_common/zzah;
.super Lcom/google/android/gms/internal/mlkit_common/zzab;
.source "com.google.mlkit:common@@17.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_common/zzab<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzaj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzaj<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzaj;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_common/zzaj<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzaj;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzab;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaj;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaj;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzaj;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
