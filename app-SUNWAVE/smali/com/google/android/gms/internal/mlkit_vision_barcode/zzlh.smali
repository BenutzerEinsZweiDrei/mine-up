.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;-><init>()V

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzle;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlg;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Z
.end method
