.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zza;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zza;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjt;-><init>()V

    .line 1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjt;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjt;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzju;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzju;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    move-result-object v0

    return-object v0
.end method
