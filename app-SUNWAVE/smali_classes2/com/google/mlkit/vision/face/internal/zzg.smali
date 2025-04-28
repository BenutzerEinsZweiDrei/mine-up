.class public final synthetic Lcom/google/mlkit/vision/face/internal/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face/zzky;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/vision/face/internal/zzh;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

.field public final synthetic zzd:I

.field public final synthetic zze:I

.field public final synthetic zzf:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/face/internal/zzh;JLcom/google/android/gms/internal/mlkit_vision_face/zzis;IILcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zza:Lcom/google/mlkit/vision/face/internal/zzh;

    iput-wide p2, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zzb:J

    iput-object p4, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    iput p5, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zzd:I

    iput p6, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zze:I

    iput-object p7, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zzf:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face/zzld;
    .locals 7

    iget-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zza:Lcom/google/mlkit/vision/face/internal/zzh;

    iget-wide v1, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zzb:J

    iget-object v3, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzis;

    iget v4, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zzd:I

    iget v5, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zze:I

    iget-object v6, p0, Lcom/google/mlkit/vision/face/internal/zzg;->zzf:Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual/range {v0 .. v6}, Lcom/google/mlkit/vision/face/internal/zzh;->zze(JLcom/google/android/gms/internal/mlkit_vision_face/zzis;IILcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_face/zzld;

    move-result-object v0

    return-object v0
.end method
