.class Lnet/time4j/calendar/Nengo$Node;
.super Ljava/lang/Object;
.source "Nengo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/Nengo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private c:C

.field private left:Lnet/time4j/calendar/Nengo$Node;

.field private mid:Lnet/time4j/calendar/Nengo$Node;

.field private nengos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/calendar/Nengo;",
            ">;"
        }
    .end annotation
.end field

.field private right:Lnet/time4j/calendar/Nengo$Node;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1789
    iput-char v0, p0, Lnet/time4j/calendar/Nengo$Node;->c:C

    const/4 v0, 0x0

    .line 1790
    iput-object v0, p0, Lnet/time4j/calendar/Nengo$Node;->left:Lnet/time4j/calendar/Nengo$Node;

    .line 1791
    iput-object v0, p0, Lnet/time4j/calendar/Nengo$Node;->mid:Lnet/time4j/calendar/Nengo$Node;

    .line 1792
    iput-object v0, p0, Lnet/time4j/calendar/Nengo$Node;->right:Lnet/time4j/calendar/Nengo$Node;

    .line 1793
    iput-object v0, p0, Lnet/time4j/calendar/Nengo$Node;->nengos:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/Nengo$1;)V
    .locals 0

    .line 1785
    invoke-direct {p0}, Lnet/time4j/calendar/Nengo$Node;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lnet/time4j/calendar/Nengo$Node;)Ljava/util/List;
    .locals 0

    .line 1785
    iget-object p0, p0, Lnet/time4j/calendar/Nengo$Node;->nengos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lnet/time4j/calendar/Nengo$Node;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1785
    iput-object p1, p0, Lnet/time4j/calendar/Nengo$Node;->nengos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lnet/time4j/calendar/Nengo$Node;)C
    .locals 0

    .line 1785
    iget-char p0, p0, Lnet/time4j/calendar/Nengo$Node;->c:C

    return p0
.end method

.method static synthetic access$1602(Lnet/time4j/calendar/Nengo$Node;C)C
    .locals 0

    .line 1785
    iput-char p1, p0, Lnet/time4j/calendar/Nengo$Node;->c:C

    return p1
.end method

.method static synthetic access$1700(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;
    .locals 0

    .line 1785
    iget-object p0, p0, Lnet/time4j/calendar/Nengo$Node;->left:Lnet/time4j/calendar/Nengo$Node;

    return-object p0
.end method

.method static synthetic access$1702(Lnet/time4j/calendar/Nengo$Node;Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;
    .locals 0

    .line 1785
    iput-object p1, p0, Lnet/time4j/calendar/Nengo$Node;->left:Lnet/time4j/calendar/Nengo$Node;

    return-object p1
.end method

.method static synthetic access$1800(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;
    .locals 0

    .line 1785
    iget-object p0, p0, Lnet/time4j/calendar/Nengo$Node;->right:Lnet/time4j/calendar/Nengo$Node;

    return-object p0
.end method

.method static synthetic access$1802(Lnet/time4j/calendar/Nengo$Node;Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;
    .locals 0

    .line 1785
    iput-object p1, p0, Lnet/time4j/calendar/Nengo$Node;->right:Lnet/time4j/calendar/Nengo$Node;

    return-object p1
.end method

.method static synthetic access$1900(Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;
    .locals 0

    .line 1785
    iget-object p0, p0, Lnet/time4j/calendar/Nengo$Node;->mid:Lnet/time4j/calendar/Nengo$Node;

    return-object p0
.end method

.method static synthetic access$1902(Lnet/time4j/calendar/Nengo$Node;Lnet/time4j/calendar/Nengo$Node;)Lnet/time4j/calendar/Nengo$Node;
    .locals 0

    .line 1785
    iput-object p1, p0, Lnet/time4j/calendar/Nengo$Node;->mid:Lnet/time4j/calendar/Nengo$Node;

    return-object p1
.end method
