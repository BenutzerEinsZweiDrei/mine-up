.class public final Lcom/google/android/gms/internal/mlkit_common/zzas;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_common/zzav;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav;->zza:Lcom/google/android/gms/internal/mlkit_common/zzav;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzav;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzar;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzav;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzar;-><init>(ILcom/google/android/gms/internal/mlkit_common/zzav;)V

    return-object v0
.end method
