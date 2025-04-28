.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzr;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_text/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:[Lcom/google/android/gms/internal/mlkit_vision_text/zzn;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

.field public final zzd:Ljava/lang/String;

.field public final zze:F

.field public final zzf:Ljava/lang/String;

.field public final zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/mlkit_vision_text/zzn;Lcom/google/android/gms/internal/mlkit_vision_text/zzf;Lcom/google/android/gms/internal/mlkit_vision_text/zzf;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zza:[Lcom/google/android/gms/internal/mlkit_vision_text/zzn;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzd:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zze:F

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzf:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzg:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zza:[Lcom/google/android/gms/internal/mlkit_vision_text/zzn;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    const/4 v2, 0x3

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzd:Ljava/lang/String;

    const/4 v1, 0x5

    .line 5
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zze:F

    const/4 v1, 0x6

    .line 6
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzf:Ljava/lang/String;

    const/4 v1, 0x7

    .line 7
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzg:Z

    const/16 v1, 0x8

    .line 8
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
