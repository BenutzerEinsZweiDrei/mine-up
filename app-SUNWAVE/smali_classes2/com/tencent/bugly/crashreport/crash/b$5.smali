.class final Lcom/tencent/bugly/crashreport/crash/b$5;
.super Ljava/util/HashMap;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/crash/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x3

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BuglyAnrCrashReport"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/b$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BuglyJavaCrashReport"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/b$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BuglyNativeCrashReport"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/b$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
