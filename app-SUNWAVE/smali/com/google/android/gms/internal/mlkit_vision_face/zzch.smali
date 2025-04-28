.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzch;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzck;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzck;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzch;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzck;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_vision_face/zzch;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzch;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face/zzcl;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzcg;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzch;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzch;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzck;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzcg;-><init>(ILcom/google/android/gms/internal/mlkit_vision_face/zzck;)V

    return-object v0
.end method
