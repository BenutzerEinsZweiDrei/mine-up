.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:[B

.field private final zze:[Landroid/graphics/Point;

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;

.field private final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

.field private final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;

.field private final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;

.field private final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmf;

.field private final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmg;

.field private final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmf;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmg;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zze:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmf;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmg;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmh;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zza:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzd:[B

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zze:[Landroid/graphics/Point;

    const/4 v2, 0x5

    .line 6
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzf:I

    const/4 v2, 0x6

    .line 7
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;

    const/4 v2, 0x7

    .line 8
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;

    const/16 v2, 0x8

    .line 9
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;

    const/16 v2, 0x9

    .line 10
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    const/16 v2, 0xa

    .line 11
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;

    const/16 v2, 0xb

    .line 12
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;

    const/16 v2, 0xc

    .line 13
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmf;

    const/16 v2, 0xd

    .line 14
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmg;

    const/16 v2, 0xe

    .line 15
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmh;

    const/16 v2, 0xf

    .line 16
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zza:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzf:I

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmf;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmg;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmh;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmi;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmm;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    return-object v0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzn()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zzd:[B

    return-object v0
.end method

.method public final zzo()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;->zze:[Landroid/graphics/Point;

    return-object v0
.end method
