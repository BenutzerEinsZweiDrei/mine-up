.class public final Lcom/google/android/gms/internal/mlkit_vision_text/zzl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_text/zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:[Lcom/google/android/gms/internal/mlkit_vision_text/zzr;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

.field public final zze:Ljava/lang/String;

.field public final zzf:F

.field public final zzg:Ljava/lang/String;

.field public final zzh:I

.field public final zzi:Z

.field public final zzj:I

.field public final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/mlkit_vision_text/zzr;Lcom/google/android/gms/internal/mlkit_vision_text/zzf;Lcom/google/android/gms/internal/mlkit_vision_text/zzf;Lcom/google/android/gms/internal/mlkit_vision_text/zzf;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zza:[Lcom/google/android/gms/internal/mlkit_vision_text/zzr;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zze:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzf:F

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzg:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzh:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzi:Z

    iput p10, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzj:I

    iput p11, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzk:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zza:[Lcom/google/android/gms/internal/mlkit_vision_text/zzr;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    const/4 v2, 0x3

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    const/4 v2, 0x5

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zze:Ljava/lang/String;

    const/4 v1, 0x6

    .line 6
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzf:F

    const/4 v1, 0x7

    .line 7
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzg:Ljava/lang/String;

    const/16 v1, 0x8

    .line 8
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzh:I

    const/16 v1, 0x9

    .line 9
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzi:Z

    const/16 v1, 0xa

    .line 10
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzj:I

    const/16 v1, 0xb

    .line 11
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzk:I

    const/16 v1, 0xc

    .line 12
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
