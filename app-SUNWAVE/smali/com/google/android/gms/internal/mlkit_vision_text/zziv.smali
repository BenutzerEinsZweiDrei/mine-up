.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zziv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# annotations
.annotation runtime Lcom/google/firebase/encoders/annotations/Encodable;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzki;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

.field private final zzc:Ljava/lang/Boolean;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkb;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzds;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zziu;Lcom/google/android/gms/internal/mlkit_vision_text/zzit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;->zzj(Lcom/google/android/gms/internal/mlkit_vision_text/zziu;)Lcom/google/android/gms/internal/mlkit_vision_text/zzki;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzki;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;->zzb(Lcom/google/android/gms/internal/mlkit_vision_text/zziu;)Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;->zzk(Lcom/google/android/gms/internal/mlkit_vision_text/zziu;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zzc:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;->zzi(Lcom/google/android/gms/internal/mlkit_vision_text/zziu;)Lcom/google/android/gms/internal/mlkit_vision_text/zzkb;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkb;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zziu;->zza(Lcom/google/android/gms/internal/mlkit_vision_text/zziu;)Lcom/google/android/gms/internal/mlkit_vision_text/zzds;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzds;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text/zzds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zze:Lcom/google/android/gms/internal/mlkit_vision_text/zzds;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzis;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_text/zzkb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkb;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_text/zzki;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzki;

    return-object v0
.end method

.method public final zze()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zziv;->zzc:Ljava/lang/Boolean;

    return-object v0
.end method
