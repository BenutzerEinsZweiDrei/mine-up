.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzii;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;IIJIIII)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzc(IIJIIII)Lcom/google/android/gms/internal/mlkit_vision_common/zzih;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;->zzbs:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzih;Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;IIJIIII)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzc(IIJIIII)Lcom/google/android/gms/internal/mlkit_vision_common/zzih;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;->zzbC:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzih;Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;)V

    return-void
.end method

.method private static zzc(IIJIIII)Lcom/google/android/gms/internal/mlkit_vision_common/zzih;
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;

    sub-long v8, v0, p2

    move-object v2, v11

    move v3, p0

    move v4, p1

    move/from16 v5, p6

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v10, p7

    .line 2
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;-><init>(IIIIIJI)V

    return-object v11
.end method
