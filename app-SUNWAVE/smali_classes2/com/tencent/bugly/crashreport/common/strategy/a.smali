.class public final Lcom/tencent/bugly/crashreport/common/strategy/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I = 0x3e8

.field private static b:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private static h:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/tencent/bugly/proguard/x;

.field private final e:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

.field private f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 61
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;

    const-string v0, "oversea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "https://astat.bugly.qcloud.com/rqd/async"

    :goto_0
    sput-object p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    sput-object p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "na_https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async"

    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    new-instance p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {p1}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 64
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Ljava/util/List;

    .line 65
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Lcom/tencent/bugly/proguard/x;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/common/strategy/a;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/crashreport/common/strategy/a;
    .locals 2

    const-class v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/crashreport/common/strategy/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)",
            "Lcom/tencent/bugly/crashreport/common/strategy/a;"
        }
    .end annotation

    const-class v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/crashreport/common/strategy/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 75
    :cond_0
    sget-object p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 178
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    sput-object p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "URL user set is invalid."

    .line 179
    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p0
.end method

.method public static d()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 2

    .line 327
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/o;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 329
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/q;

    .line 330
    iget-object v1, v0, Lcom/tencent/bugly/proguard/q;->g:[B

    if-eqz v1, :cond_0

    .line 331
    iget-object v0, v0, Lcom/tencent/bugly/proguard/q;->g:[B

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/ab;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Lcom/tencent/bugly/proguard/x;

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/common/strategy/a$1;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/a;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 158
    const-class v2, Lcom/tencent/bugly/crashreport/biz/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "[Strategy] Notify %s"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 159
    invoke-static {p1, p2}, Lcom/tencent/bugly/crashreport/biz/b;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    .line 160
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/a;

    :try_start_0
    new-array v4, v0, [Ljava/lang/Object;

    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v1, p1}, Lcom/tencent/bugly/a;->onServerStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 165
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/aq;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/aq;->h:J

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iget-wide v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-void

    .line 197
    :cond_1
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    .line 199
    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/aq;->a:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    .line 200
    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/aq;->c:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    .line 201
    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/aq;->b:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z

    .line 204
    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v4, "[Strategy] Upload url changes to %s"

    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    :cond_3
    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v4, "[Strategy] Exception upload url changes to %s"

    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    .line 205
    :cond_4
    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->f:Lcom/tencent/bugly/proguard/ap;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->f:Lcom/tencent/bugly/proguard/ap;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ap;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->f:Lcom/tencent/bugly/proguard/ap;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ap;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 207
    :cond_5
    iget-wide v4, p1, Lcom/tencent/bugly/proguard/aq;->h:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 208
    iget-wide v4, p1, Lcom/tencent/bugly/proguard/aq;->h:J

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:J

    :cond_6
    if-nez p1, :cond_7

    goto/16 :goto_3

    .line 210
    :cond_7
    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_8

    goto/16 :goto_3

    :cond_8
    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    const-string v4, "B11"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "1"

    if-eqz v1, :cond_9

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_0

    :cond_9
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    const-string v5, "B3"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->v:J

    :cond_a
    iget v1, p1, Lcom/tencent/bugly/proguard/aq;->i:I

    int-to-long v5, v1

    iput-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    iget v1, p1, Lcom/tencent/bugly/proguard/aq;->i:I

    int-to-long v5, v1

    iput-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:J

    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    const-string v5, "B27"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    iput v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_1
    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    const-string v5, "B25"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_2

    :cond_c
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    :cond_d
    :goto_3
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    .line 216
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/4 v4, 0x3

    iget-boolean v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    .line 217
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x4

    iget-boolean v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x5

    iget-boolean v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x6

    iget-boolean v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:Z

    .line 218
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x7

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v4

    const/16 v4, 0x8

    iget-boolean v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    const/16 v4, 0x9

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:J

    .line 219
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v4

    const-string v4, "[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d"

    .line 212
    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 221
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 222
    iget-object v1, p1, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v4, ""

    if-nez v1, :cond_e

    new-array v1, v3, [Ljava/lang/Object;

    const-string v6, "[Strategy] download url is null"

    .line 223
    invoke-static {v6, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 224
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    .line 226
    :cond_e
    iget-object p1, p1, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "[Strategy] download crashurl is null"

    .line 227
    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 228
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object v4, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    .line 232
    :cond_f
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/tencent/bugly/proguard/o;->b(I)V

    .line 233
    new-instance p1, Lcom/tencent/bugly/proguard/q;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/q;-><init>()V

    .line 234
    iput v5, p1, Lcom/tencent/bugly/proguard/q;->b:I

    .line 235
    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->c:J

    iput-wide v3, p1, Lcom/tencent/bugly/proguard/q;->a:J

    .line 236
    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:J

    iput-wide v3, p1, Lcom/tencent/bugly/proguard/q;->e:J

    .line 237
    invoke-static {v0}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/os/Parcelable;)[B

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/bugly/proguard/q;->g:[B

    .line 238
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/q;)Z

    .line 241
    invoke-virtual {p0, v0, v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0

    .line 145
    :cond_2
    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    .line 146
    invoke-static {v0}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0
.end method
