.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzt;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_vision_common/zzt;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzt;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzx;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzt;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;-><init>(ILcom/google/android/gms/internal/mlkit_vision_common/zzw;)V

    return-object v0
.end method
