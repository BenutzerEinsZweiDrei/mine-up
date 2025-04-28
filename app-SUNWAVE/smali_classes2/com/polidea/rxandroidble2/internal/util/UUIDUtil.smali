.class public Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;
.super Ljava/lang/Object;
.source "UUIDUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# instance fields
.field private final parser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Landroid/os/ParcelUuid;

    sget-object v1, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->BASE_UUID:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;->BASE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;->parser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    return-void
.end method


# virtual methods
.method public extractUUIDs([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;->parser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->extractUUIDs([B)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseFromBytes([B)Lcom/polidea/rxandroidble2/scan/ScanRecord;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;->parser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseFromBytes([B)Lcom/polidea/rxandroidble2/scan/ScanRecord;

    move-result-object p1

    return-object p1
.end method

.method public toDistinctSet([Ljava/util/UUID;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/UUID;

    .line 48
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
