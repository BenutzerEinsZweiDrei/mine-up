.class public final Lcom/google/mlkit/vision/barcode/internal/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    return-void
.end method

.method private static zzq(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;)Lcom/google/mlkit/vision/barcode/Barcode$CalendarDateTime;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v9, Lcom/google/mlkit/vision/barcode/Barcode$CalendarDateTime;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->zzd:I

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->zze:I

    iget v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->zzf:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->zzg:Z

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;->zzh:Ljava/lang/String;

    move-object v0, v9

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/mlkit/vision/barcode/Barcode$CalendarDateTime;-><init>(IIIIIIZLjava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zza:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzd:I

    return v0
.end method

.method public final zzc()Landroid/graphics/Rect;
    .locals 8

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    .line 1
    array-length v7, v6

    if-ge v5, v7, :cond_0

    .line 2
    aget-object v6, v6, v5

    .line 3
    iget v7, v6, Landroid/graphics/Point;->x:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    iget v7, v6, Landroid/graphics/Point;->x:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5
    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6
    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final zzd()Lcom/google/mlkit/vision/barcode/Barcode$CalendarEvent;
    .locals 10

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v9, Lcom/google/mlkit/vision/barcode/Barcode$CalendarEvent;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;->zzb:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;->zzc:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;->zzd:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;->zze:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;

    invoke-static {v1}, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzq(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;)Lcom/google/mlkit/vision/barcode/Barcode$CalendarDateTime;

    move-result-object v7

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;

    invoke-static {v0}, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzq(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzf;)Lcom/google/mlkit/vision/barcode/Barcode$CalendarDateTime;

    move-result-object v8

    move-object v1, v9

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/google/mlkit/vision/barcode/Barcode$CalendarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/mlkit/vision/barcode/Barcode$CalendarDateTime;Lcom/google/mlkit/vision/barcode/Barcode$CalendarDateTime;)V

    return-object v9
.end method

.method public final zze()Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v11, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    if-nez v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, Lcom/google/mlkit/vision/barcode/Barcode$PersonName;

    iget-object v13, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zza:Ljava/lang/String;

    iget-object v14, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzb:Ljava/lang/String;

    iget-object v15, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzc:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzd:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zze:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzf:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzg:Ljava/lang/String;

    move-object v12, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v3

    .line 2
    invoke-direct/range {v12 .. v19}, Lcom/google/mlkit/vision/barcode/Barcode$PersonName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v4, v2

    .line 1
    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzc:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    new-instance v7, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_3

    array-length v8, v2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 4
    aget-object v10, v2, v9

    if-eqz v10, :cond_2

    new-instance v12, Lcom/google/mlkit/vision/barcode/Barcode$Phone;

    iget-object v13, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzb:Ljava/lang/String;

    iget v10, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zza:I

    .line 5
    invoke-direct {v12, v13, v10}, Lcom/google/mlkit/vision/barcode/Barcode$Phone;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    new-instance v8, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_5

    array-length v9, v2

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_5

    .line 7
    aget-object v12, v2, v10

    if-eqz v12, :cond_4

    new-instance v13, Lcom/google/mlkit/vision/barcode/Barcode$Email;

    iget v14, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zza:I

    iget-object v15, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzb:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzc:Ljava/lang/String;

    iget-object v12, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzd:Ljava/lang/String;

    .line 8
    invoke-direct {v13, v14, v15, v3, v12}, Lcom/google/mlkit/vision/barcode/Barcode$Email;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzf:[Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 9
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    .line 13
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    move-object v9, v2

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;

    new-instance v10, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_8

    array-length v2, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_8

    .line 11
    aget-object v12, v1, v3

    if-eqz v12, :cond_7

    new-instance v13, Lcom/google/mlkit/vision/barcode/Barcode$Address;

    iget v14, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;->zza:I

    iget-object v12, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;->zzb:[Ljava/lang/String;

    .line 12
    invoke-direct {v13, v14, v12}, Lcom/google/mlkit/vision/barcode/Barcode$Address;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    move-object v3, v11

    .line 13
    invoke-direct/range {v3 .. v10}, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;-><init>(Lcom/google/mlkit/vision/barcode/Barcode$PersonName;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v11
.end method

.method public final zzf()Lcom/google/mlkit/vision/barcode/Barcode$DriverLicense;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v17, Lcom/google/mlkit/vision/barcode/Barcode$DriverLicense;

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zza:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzc:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzd:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zze:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzf:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzg:Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzh:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzi:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzj:Ljava/lang/String;

    iget-object v13, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzk:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzl:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzm:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzn:Ljava/lang/String;

    move-object/from16 v2, v17

    move-object/from16 v16, v1

    .line 2
    invoke-direct/range {v2 .. v16}, Lcom/google/mlkit/vision/barcode/Barcode$DriverLicense;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v17
.end method

.method public final zzg()Lcom/google/mlkit/vision/barcode/Barcode$Email;
    .locals 5

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/mlkit/vision/barcode/Barcode$Email;

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zza:I

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzb:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzc:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzd:Ljava/lang/String;

    .line 2
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/mlkit/vision/barcode/Barcode$Email;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzh()Lcom/google/mlkit/vision/barcode/Barcode$GeoPoint;
    .locals 6

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/mlkit/vision/barcode/Barcode$GeoPoint;

    iget-wide v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->zza:D

    iget-wide v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->zzb:D

    .line 2
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/mlkit/vision/barcode/Barcode$GeoPoint;-><init>(DD)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzi()Lcom/google/mlkit/vision/barcode/Barcode$Phone;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/mlkit/vision/barcode/Barcode$Phone;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzb:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zza:I

    .line 2
    invoke-direct {v1, v2, v0}, Lcom/google/mlkit/vision/barcode/Barcode$Phone;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzj()Lcom/google/mlkit/vision/barcode/Barcode$Sms;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/mlkit/vision/barcode/Barcode$Sms;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;->zzb:Ljava/lang/String;

    .line 2
    invoke-direct {v1, v2, v0}, Lcom/google/mlkit/vision/barcode/Barcode$Sms;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzk()Lcom/google/mlkit/vision/barcode/Barcode$UrlBookmark;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/mlkit/vision/barcode/Barcode$UrlBookmark;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;->zzb:Ljava/lang/String;

    .line 2
    invoke-direct {v1, v2, v0}, Lcom/google/mlkit/vision/barcode/Barcode$UrlBookmark;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzl()Lcom/google/mlkit/vision/barcode/Barcode$WiFi;
    .locals 4

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/mlkit/vision/barcode/Barcode$WiFi;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zzb:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zzc:I

    .line 2
    invoke-direct {v1, v2, v3, v0}, Lcom/google/mlkit/vision/barcode/Barcode$WiFi;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzo()[B
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzo:[B

    return-object v0
.end method

.method public final zzp()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    return-object v0
.end method
