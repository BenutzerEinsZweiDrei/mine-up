.class final Lcom/tencent/bugly/crashreport/crash/b$h;
.super Lcom/tencent/bugly/crashreport/crash/b$a;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/crash/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2032
    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/b$a;-><init>(IB)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 2029
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/b$h;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .line 2037
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/c;->q()Z

    move-result v0

    return v0
.end method
