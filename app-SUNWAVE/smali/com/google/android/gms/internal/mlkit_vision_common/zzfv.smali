.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"


# annotations
.annotation runtime Lcom/google/firebase/encoders/annotations/Encodable;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;Lcom/google/android/gms/internal/mlkit_vision_common/zzft;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzg(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;)Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;

    return-object v0
.end method
