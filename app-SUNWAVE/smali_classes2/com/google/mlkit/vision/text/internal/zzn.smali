.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# instance fields
.field public final synthetic zza:J

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

.field public final synthetic zzc:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(JLcom/google/android/gms/internal/mlkit_vision_text/zzir;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/mlkit/vision/text/internal/zzn;->zza:J

    iput-object p3, p0, Lcom/google/mlkit/vision/text/internal/zzn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    iput-object p4, p0, Lcom/google/mlkit/vision/text/internal/zzn;->zzc:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;
    .locals 4

    iget-wide v0, p0, Lcom/google/mlkit/vision/text/internal/zzn;->zza:J

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzir;

    iget-object v3, p0, Lcom/google/mlkit/vision/text/internal/zzn;->zzc:Lcom/google/mlkit/vision/common/InputImage;

    invoke-static {v0, v1, v2, v3}, Lcom/google/mlkit/vision/text/internal/zzo;->zzd(JLcom/google/android/gms/internal/mlkit_vision_text/zzir;Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;

    move-result-object v0

    return-object v0
.end method
