.class public Lcom/polidea/rxandroidble2/helpers/AdvertisedServiceUUIDExtractor;
.super Ljava/lang/Object;
.source "AdvertisedServiceUUIDExtractor.java"


# instance fields
.field private final parser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/helpers/AdvertisedServiceUUIDExtractor;->parser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

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

    .line 24
    iget-object v0, p0, Lcom/polidea/rxandroidble2/helpers/AdvertisedServiceUUIDExtractor;->parser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->extractUUIDs([B)Ljava/util/List;

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

    .line 30
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
