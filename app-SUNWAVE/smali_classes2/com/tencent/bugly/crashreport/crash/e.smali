.class public final Lcom/tencent/bugly/crashreport/crash/e;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static h:Ljava/lang/String;

.field private static final i:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/crashreport/crash/b;

.field private c:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private d:Lcom/tencent/bugly/crashreport/common/info/a;

.field private e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private g:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/e;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    .line 49
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    .line 51
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 52
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    return-void
.end method

.method private static a(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 437
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 438
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-lez p1, :cond_1

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v5, p1, :cond_1

    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "\n[Stack over limit size :"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , has been cutted !]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 445
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 449
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "gen stack error %s"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 451
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/lang/Throwable;Z)V
    .locals 8

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 205
    invoke-static {p1, v1}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 208
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "stack frame :%d, has cause %b"

    .line 207
    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v3, v3

    const-string v4, ""

    if-lez v3, :cond_1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    move-object v6, p1

    :goto_2
    if-eqz v6, :cond_2

    .line 216
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 217
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_4

    if-eq v6, p1, :cond_4

    .line 221
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 222
    invoke-static {v6, v1}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 223
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_3

    .line 224
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 227
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n......"

    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nCaused by:\n"

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    sget p2, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    invoke-static {v6, p2}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object p2

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    goto :goto_3

    .line 239
    :cond_4
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 242
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/c;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    .line 245
    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    .line 248
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 249
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 250
    sget p2, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    invoke-static {p1, p2}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object p2

    .line 251
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 254
    :goto_3
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 255
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 401
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 402
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 403
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "uncaughtException"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static a(Ljava/lang/Thread;)Z
    .locals 3

    .line 294
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/e;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/e;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/crashreport/crash/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 301
    monitor-exit v0

    return p0

    .line 298
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/crashreport/crash/e;->h:Ljava/lang/String;

    const/4 p0, 0x0

    .line 299
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 302
    monitor-exit v0

    throw p0
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "We can do nothing with a null throwable."

    .line 141
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 145
    :cond_0
    new-instance v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v2}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->j()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->e()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->l()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->n()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->f()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->g()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->h()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:J

    sget v3, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    invoke-static {v3, v0}, Lcom/tencent/bugly/proguard/ab;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->a()[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    array-length v4, v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "user log size:%d"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    iput v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->u()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    sget v3, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    invoke-static {p6, v3, v1}, Lcom/tencent/bugly/proguard/ab;->a(ZIZ)Ljava/util/Map;

    move-result-object p6

    iput-object p6, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object p6, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object p6, p6, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object p6, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {p6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->F()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:J

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Z

    move-result p1

    iput-boolean p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Z

    .line 151
    invoke-static {v2, p2, p3}, Lcom/tencent/bugly/crashreport/crash/e;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/lang/Throwable;Z)V

    if-eqz p3, :cond_3

    .line 154
    :try_start_0
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {p1, v2}, Lcom/tencent/bugly/crashreport/crash/b;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    if-eqz p5, :cond_5

    array-length p2, p5

    if-lez p2, :cond_5

    move p2, v0

    goto :goto_3

    :cond_5
    move p2, v1

    :goto_3
    if-eqz p1, :cond_6

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iget-object p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    const-string p3, "UserData"

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p2, :cond_7

    iput-object p5, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:[B

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->D()I

    move-result p1

    iput p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:I

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->E()I

    move-result p1

    iput p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:I

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->x()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/util/Map;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->C()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "handle crash error %s"

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_6
    return-object v2
.end method

.method private static b(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 2

    .line 460
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 465
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_1

    return-object p0

    .line 468
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n[Message over limit size:1000"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", has been cutted!]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 59
    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "java crash handler over %d, no need set."

    new-array v3, v3, [Ljava/lang/Object;

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    .line 65
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 70
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v1, "com.android.internal.os.RuntimeInit$UncaughtHandler"

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "backup system java handler: %s"

    new-array v4, v3, [Ljava/lang/Object;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 74
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 75
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_0

    :cond_2
    const-string v1, "backup java handler: %s"

    new-array v4, v3, [Ljava/lang/Object;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 78
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 86
    :cond_3
    :goto_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 87
    iget v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    const-string v0, "registered java monitor: %s"

    new-array v1, v3, [Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 417
    :try_start_0
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    iget-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    if-eq v0, v1, :cond_1

    const-string v0, "java changed to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 418
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 422
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 425
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "sys default last handle end!"

    const-string v6, "sys default last handle start!"

    const-string v7, "system handle end!"

    const-string v8, "system handle start!"

    const-string v9, "crashreport last handle end!"

    const-string v10, "crashreport last handle start!"

    const-string v11, "current process die"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 316
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v0, v12

    const-string v14, "Java Crash Happen cause by %s(%d)"

    invoke-static {v14, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 317
    invoke-static/range {p1 .. p1}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v13, [Ljava/lang/Object;

    const-string v14, "this class has handled this exception"

    .line 318
    invoke-static {v14, v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 320
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    new-array v0, v13, [Ljava/lang/Object;

    const-string v14, "call system handler"

    .line 321
    invoke-static {v14, v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 322
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-array v0, v13, [Ljava/lang/Object;

    .line 324
    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_1
    new-array v0, v13, [Ljava/lang/Object;

    const-string v14, "Java Catch Happen"

    .line 328
    invoke-static {v14, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 331
    :cond_2
    :goto_0
    :try_start_0
    iget-boolean v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    if-nez v0, :cond_6

    const-string v0, "Java crash handler is disable. Just return."

    new-array v14, v13, [Ljava/lang/Object;

    .line 332
    invoke-static {v0, v14}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    .line 371
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v13, [Ljava/lang/Object;

    .line 372
    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 373
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 374
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 375
    :cond_3
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    new-array v0, v13, [Ljava/lang/Object;

    .line 376
    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 378
    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_4
    new-array v0, v13, [Ljava/lang/Object;

    .line 380
    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v13, [Ljava/lang/Object;

    .line 381
    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 382
    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    return-void

    .line 336
    :cond_6
    :try_start_1
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "no remote but still store!"

    new-array v14, v13, [Ljava/lang/Object;

    .line 337
    invoke-static {v0, v14}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 340
    :cond_7
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 341
    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "JAVA_CRASH"

    const-string v15, "JAVA_CATCH"

    if-nez v0, :cond_c

    :try_start_2
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    new-array v12, v13, [Ljava/lang/Object;

    .line 342
    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v4, :cond_8

    move-object/from16 v16, v14

    goto :goto_1

    :cond_8
    move-object/from16 v16, v15

    .line 345
    :goto_1
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->a()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p2}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v18, v0

    .line 344
    invoke-static/range {v16 .. v21}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_b

    .line 371
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-array v0, v13, [Ljava/lang/Object;

    .line 372
    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 373
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 374
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 375
    :cond_9
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_a

    new-array v0, v13, [Ljava/lang/Object;

    .line 376
    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 378
    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-array v0, v13, [Ljava/lang/Object;

    .line 380
    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v13, [Ljava/lang/Object;

    .line 381
    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 382
    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_b
    return-void

    .line 351
    :cond_c
    :try_start_3
    invoke-direct/range {p0 .. p6}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "pkg crash datas fail!"

    new-array v12, v13, [Ljava/lang/Object;

    .line 353
    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_f

    .line 371
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-array v0, v13, [Ljava/lang/Object;

    .line 372
    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 373
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 374
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 375
    :cond_d
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_e

    new-array v0, v13, [Ljava/lang/Object;

    .line 376
    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 378
    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_e
    new-array v0, v13, [Ljava/lang/Object;

    .line 380
    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v13, [Ljava/lang/Object;

    .line 381
    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 382
    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_f
    return-void

    :cond_10
    if-eqz v4, :cond_11

    move-object/from16 v16, v14

    goto :goto_2

    :cond_11
    move-object/from16 v16, v15

    .line 357
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->a()Ljava/lang/String;

    move-result-object v17

    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v12, v12, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 358
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p2}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v12

    move-object/from16 v21, v0

    .line 357
    invoke-static/range {v16 .. v21}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 359
    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v12, v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 360
    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 v14, 0xbb8

    invoke-virtual {v12, v0, v14, v15, v4}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V

    :cond_12
    if-eqz v4, :cond_13

    .line 363
    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v12, v0}, Lcom/tencent/bugly/crashreport/crash/b;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_13
    if-eqz v4, :cond_19

    .line 371
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_14

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-array v0, v13, [Ljava/lang/Object;

    .line 372
    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 373
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 374
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 375
    :cond_14
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_15

    new-array v0, v13, [Ljava/lang/Object;

    .line 376
    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 378
    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_15
    new-array v0, v13, [Ljava/lang/Object;

    .line 380
    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v13, [Ljava/lang/Object;

    .line 381
    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 382
    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 366
    :try_start_5
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v12

    if-nez v12, :cond_16

    .line 367
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_16
    if-eqz v4, :cond_19

    .line 371
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-array v0, v13, [Ljava/lang/Object;

    .line 372
    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 373
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 374
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 375
    :cond_17
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_18

    new-array v0, v13, [Ljava/lang/Object;

    .line 376
    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 378
    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_18
    new-array v0, v13, [Ljava/lang/Object;

    .line 380
    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v13, [Ljava/lang/Object;

    .line 381
    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    new-array v0, v13, [Ljava/lang/Object;

    .line 382
    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_19
    return-void

    :catchall_1
    move-exception v0

    if-eqz v4, :cond_1d

    .line 371
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v4, :cond_1b

    invoke-static {v4}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_3

    :cond_1a
    new-array v4, v13, [Ljava/lang/Object;

    .line 372
    invoke-static {v6, v4}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 373
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v2, v13, [Ljava/lang/Object;

    .line 374
    invoke-static {v5, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 375
    :cond_1b
    :goto_3
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v4, :cond_1c

    new-array v4, v13, [Ljava/lang/Object;

    .line 376
    invoke-static {v8, v4}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v2, v13, [Ljava/lang/Object;

    .line 378
    invoke-static {v7, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1c
    new-array v2, v13, [Ljava/lang/Object;

    .line 380
    invoke-static {v10, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v2, v13, [Ljava/lang/Object;

    .line 381
    invoke-static {v11, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    new-array v2, v13, [Ljava/lang/Object;

    .line 382
    invoke-static {v9, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 385
    :cond_1d
    :goto_4
    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 95
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    const-string v1, "close java monitor!"

    new-array v2, v0, [Ljava/lang/Object;

    .line 96
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    const-string v2, "bugly"

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Java monitor to unregister: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 101
    iget v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .line 390
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/e;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Z

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V

    .line 392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
