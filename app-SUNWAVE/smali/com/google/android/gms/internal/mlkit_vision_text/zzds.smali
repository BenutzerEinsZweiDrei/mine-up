.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

.field private final zzb:Ljava/lang/Integer;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzib;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;Lcom/google/android/gms/internal/mlkit_vision_text/zzdo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;)Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;->zzg(Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzds;->zzb:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text/zzdp;)Lcom/google/android/gms/internal/mlkit_vision_text/zzib;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzds;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzib;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzdr;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzib;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzds;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzib;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzds;->zzb:Ljava/lang/Integer;

    return-object v0
.end method
