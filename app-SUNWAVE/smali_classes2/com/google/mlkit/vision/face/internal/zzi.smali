.class public final synthetic Lcom/google/mlkit/vision/face/internal/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face/zzky;


# instance fields
.field public final synthetic zza:Z

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/mlkit_vision_face/zzis;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/mlkit/vision/face/internal/zzi;->zza:Z

    iput-object p2, p0, Lcom/google/mlkit/vision/face/internal/zzi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face/zzld;
    .locals 3

    iget-boolean v0, p0, Lcom/google/mlkit/vision/face/internal/zzi;->zza:Z

    iget-object v1, p0, Lcom/google/mlkit/vision/face/internal/zzi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;-><init>()V

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjk;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjk;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzis;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjk;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    move-result-object v0

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zziv;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;)Lcom/google/android/gms/internal/mlkit_vision_face/zziv;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzld;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zziv;)Lcom/google/android/gms/internal/mlkit_vision_face/zzld;

    move-result-object v0

    return-object v0
.end method
