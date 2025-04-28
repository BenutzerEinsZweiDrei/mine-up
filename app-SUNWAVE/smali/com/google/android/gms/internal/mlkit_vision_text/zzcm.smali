.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzcp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzcp;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzcp;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzcl;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzcp;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcl;-><init>(ILcom/google/android/gms/internal/mlkit_vision_text/zzcp;)V

    return-object v0
.end method
