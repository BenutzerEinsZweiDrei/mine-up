.class public Lcom/tencent/bugly/proguard/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static e:Ljava/net/Proxy;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field c:Lcom/tencent/bugly/proguard/h;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->d:Ljava/util/HashMap;

    const-string v0, "GBK"

    .line 32
    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/tencent/bugly/proguard/h;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/h;

    return-void
.end method

.method public static a(Landroid/app/ActivityManager;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "get anr state, ActivityManager is null"

    .line 84
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "get anr state, timeout:%d"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1f4

    .line 88
    div-long/2addr p1, v3

    move v5, v1

    .line 91
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 92
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget v9, v8, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    if-ne v9, v7, :cond_2

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "found current proc in the error state"

    invoke-static {v7, v6}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "current proc not in the error state"

    invoke-static {v7, v6}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_1
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "error state info list is null"

    invoke-static {v7, v6}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_2
    move-object v8, v0

    :goto_3
    if-nez v8, :cond_5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "found proc state is null"

    .line 97
    invoke-static {v7, v6}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 98
    :cond_5
    iget v6, v8, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    new-array p0, v2, [Ljava/lang/Object;

    .line 101
    iget-object p1, v8, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    aput-object p1, p0, v1

    const-string p1, "found proc state is anr! proc:%s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v8

    .line 103
    :cond_6
    iget v6, v8, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    if-ne v6, v2, :cond_7

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "found proc state is crashed!"

    .line 104
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_7
    :goto_4
    add-int/lit8 v6, v5, 0x1

    int-to-long v7, v5

    cmp-long v5, v7, p1

    if-gez v5, :cond_8

    new-array v5, v2, [Ljava/lang/Object;

    .line 108
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    const-string v7, "try the %s times:"

    invoke-static {v7, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 111
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/ab;->b(J)V

    move v5, v6

    goto :goto_0

    .line 115
    :cond_8
    new-instance p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    const-string p1, "Find process anr, but unable to get anr message."

    iput-object p1, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/an;
    .locals 5

    .line 228
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 229
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 238
    :cond_0
    :try_start_0
    new-instance v3, Lcom/tencent/bugly/proguard/an;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/an;-><init>()V

    .line 240
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    .line 241
    :try_start_1
    iput v4, v3, Lcom/tencent/bugly/proguard/an;->a:I

    .line 242
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/proguard/an;->b:Ljava/lang/String;

    .line 243
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/proguard/an;->c:Ljava/lang/String;

    .line 244
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    .line 245
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/proguard/an;->e:Ljava/lang/String;

    .line 246
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    .line 247
    iput p1, v3, Lcom/tencent/bugly/proguard/an;->g:I

    if-nez p2, :cond_1

    const-string p1, ""

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :cond_1
    iput-object p2, v3, Lcom/tencent/bugly/proguard/an;->h:[B

    .line 249
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/an;->i:Ljava/lang/String;

    .line 250
    iget-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    iput-object p1, v3, Lcom/tencent/bugly/proguard/an;->j:Ljava/lang/String;

    .line 251
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    .line 252
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/an;->l:Ljava/lang/String;

    .line 253
    iget-wide p1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:J

    iput-wide p1, v3, Lcom/tencent/bugly/proguard/an;->m:J

    .line 254
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/an;->o:Ljava/lang/String;

    .line 255
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/tencent/bugly/proguard/an;->p:Ljava/lang/String;

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v3, Lcom/tencent/bugly/proguard/an;->q:J

    .line 257
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/tencent/bugly/proguard/an;->r:Ljava/lang/String;

    .line 258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/tencent/bugly/proguard/an;->s:Ljava/lang/String;

    .line 259
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->p:Ljava/lang/String;

    iput-object p0, v3, Lcom/tencent/bugly/proguard/an;->t:Ljava/lang/String;

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "com.tencent.bugly"

    iput-object p0, v3, Lcom/tencent/bugly/proguard/an;->n:Ljava/lang/String;

    .line 263
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    const-string p1, "A26"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    const-string p1, "A62"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->H()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    const-string p1, "A63"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->I()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    const-string p1, "F11"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    const-string p1, "F12"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->y:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    const-string p1, "D3"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object p0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    if-eqz p0, :cond_3

    .line 284
    sget-object p0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/a;

    .line 285
    iget-object p2, p1, Lcom/tencent/bugly/a;->versionKey:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/tencent/bugly/a;->version:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 286
    iget-object p2, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/bugly/a;->versionKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/bugly/a;->version:Ljava/lang/String;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    :cond_3
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    const-string p1, "G15"

    const-string p2, "G15"

    const-string v1, ""

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    const-string p1, "G10"

    const-string p2, "G10"

    const-string v1, ""

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object p0, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    const-string p1, "D4"

    const-string p2, "D4"

    const-string v1, "0"

    .line 298
    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 297
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :try_start_2
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->B()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 304
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 306
    iget-object p2, v3, Lcom/tencent/bugly/proguard/an;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-object v3

    :catchall_0
    move-exception p0

    .line 299
    monitor-exit v0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 312
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 313
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return-object v2

    :cond_7
    :goto_2
    const-string p0, "Can not create request pkg for parameters is invalid."

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 232
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Lcom/tencent/bugly/proguard/ar;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 50
    :cond_0
    new-instance v1, Lcom/tencent/bugly/proguard/ar;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ar;-><init>()V

    .line 51
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/ar;->a:J

    .line 52
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/proguard/ar;->e:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/proguard/ar;->d:Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/proguard/ar;->c:Ljava/lang/String;

    .line 55
    iget v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/tencent/bugly/proguard/ar;->g:Z

    .line 57
    iget v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    const/4 v5, 0x2

    if-eq v2, v4, :cond_7

    const/4 v6, 0x4

    if-eq v2, v5, :cond_6

    const/4 v7, 0x3

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    const/16 v6, 0x8

    if-eq v2, v6, :cond_3

    .line 78
    iget v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    const/16 v6, 0xa

    if-lt v2, v6, :cond_2

    iget v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    const/16 v6, 0x14

    if-ge v2, v6, :cond_2

    .line 80
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/tencent/bugly/proguard/ar;->b:B

    goto :goto_1

    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    .line 82
    iget p0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "unknown uinfo type %d "

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 75
    :cond_3
    iput-byte v6, v1, Lcom/tencent/bugly/proguard/ar;->b:B

    goto :goto_1

    .line 71
    :cond_4
    iput-byte v7, v1, Lcom/tencent/bugly/proguard/ar;->b:B

    goto :goto_1

    .line 63
    :cond_5
    iput-byte v5, v1, Lcom/tencent/bugly/proguard/ar;->b:B

    goto :goto_1

    .line 67
    :cond_6
    iput-byte v6, v1, Lcom/tencent/bugly/proguard/ar;->b:B

    goto :goto_1

    .line 59
    :cond_7
    iput-byte v4, v1, Lcom/tencent/bugly/proguard/ar;->b:B

    .line 89
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    .line 90
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    if-ltz v0, :cond_8

    .line 91
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "C01"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_8
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    if-ltz v0, :cond_9

    .line 95
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "C02"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 99
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 100
    iget-object v6, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "C03_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 100
    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 105
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 106
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107
    iget-object v6, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "C04_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 107
    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 113
    :cond_b
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->l:Z

    xor-int/2addr v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "A36"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F02"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F03"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F04"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F05"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F06"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "F10"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p0, v5, [Ljava/lang/Object;

    .line 127
    iget-byte v0, v1, Lcom/tencent/bugly/proguard/ar;->b:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p0, v3

    iget-object v0, v1, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v4

    const-string v0, "summary type %d vm:%d"

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static a(Ljava/util/List;I)Lcom/tencent/bugly/proguard/as;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;I)",
            "Lcom/tencent/bugly/proguard/as;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 139
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 143
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/String;

    .line 144
    new-instance v2, Lcom/tencent/bugly/proguard/as;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/as;-><init>()V

    .line 145
    iget-object v3, v1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    .line 146
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/proguard/as;->c:Ljava/lang/String;

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 149
    invoke-static {v4}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Lcom/tencent/bugly/proguard/ar;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 151
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_3
    iput-object v3, v2, Lcom/tencent/bugly/proguard/as;->d:Ljava/util/ArrayList;

    .line 155
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    .line 156
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A7"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A6"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A5"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A2"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A1"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A24"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A17"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A15"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A13"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/common/info/a;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "F08"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object p0, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "F09"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->C()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 173
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 174
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 175
    iget-object v3, v2, Lcom/tencent/bugly/proguard/as;->e:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "C04_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 175
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    if-eq p1, p0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "unknown up type %d "

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 185
    :cond_5
    iput-byte v1, v2, Lcom/tencent/bugly/proguard/as;->a:B

    goto :goto_2

    .line 182
    :cond_6
    iput-byte p0, v2, Lcom/tencent/bugly/proguard/as;->a:B

    :goto_2
    return-object v2

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/bugly/proguard/j;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 203
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/j;

    .line 208
    new-instance v1, Lcom/tencent/bugly/proguard/h;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/h;-><init>([B)V

    const-string p0, "utf-8"

    .line 209
    invoke-virtual {v1, p0}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)I

    .line 210
    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 214
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 215
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 87
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "map"

    const-string v5, "list"

    if-ge v2, v3, :cond_12

    .line 88
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "java.lang.Integer"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "short"

    const-string v8, "float"

    const-string v9, "double"

    if-nez v6, :cond_11

    const-string v6, "int"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v6, "java.lang.Boolean"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "boolean"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v6, "java.lang.Byte"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "byte"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v6, "java.lang.Double"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v6, "java.lang.Float"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const-string v6, "java.lang.Long"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "long"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    const-string v6, "java.lang.Short"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    const-string v6, "java.lang.Character"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "java.lang.String"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v4, "string"

    goto :goto_8

    :cond_7
    const-string v6, "java.util.List"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v4, v5

    goto :goto_8

    :cond_8
    const-string v5, "java.util.Map"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_8

    :cond_9
    move-object v4, v3

    goto :goto_8

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "can not support java.lang.Character"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_1
    move-object v4, v7

    goto :goto_8

    :cond_c
    :goto_2
    const-string v4, "int64"

    goto :goto_8

    :cond_d
    :goto_3
    move-object v4, v8

    goto :goto_8

    :cond_e
    :goto_4
    move-object v4, v9

    goto :goto_8

    :cond_f
    :goto_5
    const-string v4, "char"

    goto :goto_8

    :cond_10
    :goto_6
    const-string v4, "bool"

    goto :goto_8

    :cond_11
    :goto_7
    const-string v4, "int32"

    :goto_8
    invoke-virtual {p0, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 90
    :cond_12
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move v2, v1

    .line 91
    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 92
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ">"

    const-string v8, "<"

    if-eqz v6, :cond_13

    add-int/lit8 v3, v2, -0x1

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 96
    :cond_13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    add-int/lit8 v3, v2, -0x1

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_14
    const-string v6, "Array"

    .line 99
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    add-int/lit8 v3, v2, -0x1

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 104
    :cond_16
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 108
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 26
    sput-object p0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 30
    sput-object v0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-void
.end method

.method public static a(Ljava/net/InetAddress;I)V
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 41
    sput-object p0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 45
    sput-object v0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 278
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "java.util.List"

    const-string v3, "?"

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p2, "Array"

    .line 286
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 280
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only byte[] is supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_2
    instance-of v0, p2, Ljava/lang/reflect/Array;

    if-nez v0, :cond_7

    .line 292
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 293
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    check-cast p2, Ljava/util/List;

    .line 295
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 296
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 301
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    const-string v0, "java.util.Map"

    .line 302
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    check-cast p2, Ljava/util/Map;

    .line 304
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 305
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 307
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_5
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 316
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 291
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can not support Array, please use List"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/app/ActivityManager;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "is proc running, ActivityManager is null"

    .line 29
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    move v2, v0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "running proc info list is empty, my proc not running."

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v3, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "my proc is running."

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "proc not in running proc info list, my proc not running."

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_4

    return v1

    :cond_4
    const-wide/16 v2, 0x0

    .line 32
    invoke-static {p0, v2, v3}, Lcom/tencent/bugly/proguard/a;->a(Landroid/app/ActivityManager;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public static a(Lcom/tencent/bugly/proguard/j;)[B
    .locals 2

    .line 373
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i;-><init>()V

    const-string v1, "utf-8"

    .line 374
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/i;)V

    .line 376
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/i;->b()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 378
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 2

    .line 324
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/d;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/d;-><init>()V

    .line 325
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/d;->c()V

    const-string v1, "utf-8"

    .line 326
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 327
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->a(I)V

    const-string v1, "RqdServer"

    .line 328
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->b(Ljava/lang/String;)V

    const-string v1, "sync"

    .line 329
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->c(Ljava/lang/String;)V

    const-string v1, "detail"

    .line 330
    invoke-virtual {v0, v1, p0}, Lcom/tencent/bugly/proguard/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/d;->a()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 333
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([B)Lcom/tencent/bugly/proguard/ao;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 347
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/d;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/d;-><init>()V

    .line 348
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/d;->c()V

    const-string v2, "utf-8"

    .line 349
    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/d;->a(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, p0}, Lcom/tencent/bugly/proguard/d;->a([B)V

    const-string p0, "detail"

    .line 351
    new-instance v2, Lcom/tencent/bugly/proguard/ao;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/ao;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/tencent/bugly/proguard/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 354
    const-class v1, Lcom/tencent/bugly/proguard/ao;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-class v1, Lcom/tencent/bugly/proguard/ao;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 359
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static b()Ljava/net/Proxy;
    .locals 1

    .line 52
    sget-object v0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 92
    instance-of v0, p2, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, p2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;I)V

    .line 98
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/i;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/k;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-direct {p0, v3, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 102
    invoke-static {v3}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p2, p0, Lcom/tencent/bugly/proguard/a;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p2, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can not support Set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put value can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put key can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([B)V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/h;->a([B)V

    .line 329
    iget-object p1, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)I

    .line 330
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 331
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    new-array v2, v0, [B

    const-string v3, ""

    .line 332
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v1, p1, v0, v0}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public a()[B
    .locals 3

    .line 321
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/i;-><init>(I)V

    .line 322
    iget-object v2, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 323
    iget-object v2, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    .line 324
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/i;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/k;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method
