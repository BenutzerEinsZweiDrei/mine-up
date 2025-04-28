.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzhf;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@17.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_common/zzhf;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzau;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_common/zzhf;

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/mlkit_common/zzhf;


# instance fields
.field private final zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzhf;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzhf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzhf;

    const-string v3, "CUSTOM"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzhf;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzhf;

    const-string v5, "AUTOML_IMAGE_LABELING"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzhf;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zzhf;

    const-string v7, "BASE_TRANSLATE"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzhf;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_common/zzhf;

    const-string v9, "CUSTOM_OBJECT_DETECTION"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zzhf;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_common/zzhf;

    const-string v11, "CUSTOM_IMAGE_LABELING"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/mlkit_common/zzhf;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    new-instance v11, Lcom/google/android/gms/internal/mlkit_common/zzhf;

    const-string v13, "BASE_ENTITY_EXTRACTION"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/mlkit_common/zzhf;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    new-instance v13, Lcom/google/android/gms/internal/mlkit_common/zzhf;

    const-string v15, "BASE_DIGITAL_INK"

    const/4 v14, 0x7

    .line 8
    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/mlkit_common/zzhf;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/android/gms/internal/mlkit_common/zzhf;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzi:[Lcom/google/android/gms/internal/mlkit_common/zzhf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzj:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzhf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzi:[Lcom/google/android/gms/internal/mlkit_common/zzhf;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzhf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzhf;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zzj:I

    return v0
.end method
