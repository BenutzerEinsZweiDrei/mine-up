.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzht;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;Ljava/lang/String;)V

    return-void
.end method
