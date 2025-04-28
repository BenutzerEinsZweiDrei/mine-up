.class Lnet/time4j/format/expert/ZoneLabels$Node;
.super Ljava/lang/Object;
.source "ZoneLabels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/ZoneLabels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field private final c:C

.field private final left:Lnet/time4j/format/expert/ZoneLabels$Node;

.field private final mid:Lnet/time4j/format/expert/ZoneLabels$Node;

.field private final right:Lnet/time4j/format/expert/ZoneLabels$Node;

.field private final zoneIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(C)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 227
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ZoneLabels$Node;-><init>(CLnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(CLnet/time4j/format/expert/ZoneLabels$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ZoneLabels$Node;-><init>(C)V

    return-void
.end method

.method private constructor <init>(CLnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lnet/time4j/format/expert/ZoneLabels$Node;",
            "Lnet/time4j/format/expert/ZoneLabels$Node;",
            "Lnet/time4j/format/expert/ZoneLabels$Node;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-char p1, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->c:C

    .line 235
    iput-object p2, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->left:Lnet/time4j/format/expert/ZoneLabels$Node;

    .line 236
    iput-object p3, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->mid:Lnet/time4j/format/expert/ZoneLabels$Node;

    .line 237
    iput-object p4, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->right:Lnet/time4j/format/expert/ZoneLabels$Node;

    .line 238
    iput-object p5, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->zoneIDs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/format/expert/ZoneLabels$Node;)C
    .locals 0

    .line 214
    iget-char p0, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->c:C

    return p0
.end method

.method static synthetic access$100(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 0

    .line 214
    iget-object p0, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->left:Lnet/time4j/format/expert/ZoneLabels$Node;

    return-object p0
.end method

.method static synthetic access$200(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 0

    .line 214
    iget-object p0, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->right:Lnet/time4j/format/expert/ZoneLabels$Node;

    return-object p0
.end method

.method static synthetic access$300(Lnet/time4j/format/expert/ZoneLabels$Node;)Ljava/util/List;
    .locals 0

    .line 214
    iget-object p0, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->zoneIDs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 0

    .line 214
    iget-object p0, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->mid:Lnet/time4j/format/expert/ZoneLabels$Node;

    return-object p0
.end method

.method static synthetic access$600(Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->withLeft(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->withRight(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->withMid(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ZoneLabels$Node;->with(Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object p0

    return-object p0
.end method

.method private with(Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 6

    .line 264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget-object v0, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->zoneIDs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    :cond_0
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance p1, Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-char v1, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->c:C

    iget-object v2, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->left:Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-object v3, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->mid:Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-object v4, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->right:Lnet/time4j/format/expert/ZoneLabels$Node;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ZoneLabels$Node;-><init>(CLnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/util/List;)V

    return-object p1
.end method

.method private withLeft(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 7

    .line 246
    new-instance v6, Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-char v1, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->c:C

    iget-object v3, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->mid:Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-object v4, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->right:Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-object v5, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->zoneIDs:Ljava/util/List;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ZoneLabels$Node;-><init>(CLnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/util/List;)V

    return-object v6
.end method

.method private withMid(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 7

    .line 252
    new-instance v6, Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-char v1, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->c:C

    iget-object v2, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->left:Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-object v4, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->right:Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-object v5, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->zoneIDs:Ljava/util/List;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ZoneLabels$Node;-><init>(CLnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/util/List;)V

    return-object v6
.end method

.method private withRight(Lnet/time4j/format/expert/ZoneLabels$Node;)Lnet/time4j/format/expert/ZoneLabels$Node;
    .locals 7

    .line 258
    new-instance v6, Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-char v1, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->c:C

    iget-object v2, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->left:Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-object v3, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->mid:Lnet/time4j/format/expert/ZoneLabels$Node;

    iget-object v5, p0, Lnet/time4j/format/expert/ZoneLabels$Node;->zoneIDs:Ljava/util/List;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ZoneLabels$Node;-><init>(CLnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/util/List;)V

    return-object v6
.end method
