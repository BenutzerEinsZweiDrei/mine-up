.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcy;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field public static final enum zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

.field private static final synthetic zzo:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;


# instance fields
.field private final zzp:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v1, "FORMAT_UNKNOWN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v3, "FORMAT_CODE_128"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v5, "FORMAT_CODE_39"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v7, "FORMAT_CODE_93"

    const/4 v8, 0x3

    const/4 v9, 0x4

    .line 4
    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v10, "FORMAT_CODABAR"

    const/16 v11, 0x8

    .line 5
    invoke-direct {v7, v10, v9, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v12, "FORMAT_DATA_MATRIX"

    const/4 v13, 0x5

    const/16 v14, 0x10

    .line 6
    invoke-direct {v10, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v14, "FORMAT_EAN_13"

    const/4 v15, 0x6

    const/16 v13, 0x20

    .line 7
    invoke-direct {v12, v14, v15, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v14, "FORMAT_EAN_8"

    const/4 v15, 0x7

    const/16 v9, 0x40

    .line 8
    invoke-direct {v13, v14, v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v14, "FORMAT_ITF"

    const/16 v15, 0x80

    .line 9
    invoke-direct {v9, v14, v11, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v15, "FORMAT_QR_CODE"

    const/16 v11, 0x9

    const/16 v8, 0x100

    .line 10
    invoke-direct {v14, v15, v11, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v15, "FORMAT_UPC_A"

    const/16 v11, 0xa

    const/16 v6, 0x200

    .line 11
    invoke-direct {v8, v15, v11, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v15, "FORMAT_UPC_E"

    const/16 v11, 0xb

    const/16 v4, 0x400

    .line 12
    invoke-direct {v6, v15, v11, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v15, "FORMAT_PDF417"

    const/16 v11, 0xc

    const/16 v2, 0x800

    .line 13
    invoke-direct {v4, v15, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const-string v15, "FORMAT_AZTEC"

    const/16 v11, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x1000

    .line 14
    invoke-direct {v2, v15, v11, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v9, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v2, v4, v11

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzo:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

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

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzp:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzo:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;->zzp:I

    return v0
.end method
