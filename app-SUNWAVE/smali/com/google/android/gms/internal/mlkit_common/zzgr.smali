.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzgr;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@17.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_common/zzgr;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzau;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_common/zzgr;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_common/zzgr;

.field private static final synthetic zzc:[Lcom/google/android/gms/internal/mlkit_common/zzgr;


# instance fields
.field private final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzgr;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzgr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgr;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzgr;

    const-string v3, "TRANSLATE"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzgr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzgr;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/mlkit_common/zzgr;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zzc:[Lcom/google/android/gms/internal/mlkit_common/zzgr;

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

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zzd:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzgr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zzc:[Lcom/google/android/gms/internal/mlkit_common/zzgr;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzgr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzgr;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/mlkit_common/zzgr;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzgr;->values()[Lcom/google/android/gms/internal/mlkit_common/zzgr;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zzd:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgr;

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zzd:I

    return v0
.end method
