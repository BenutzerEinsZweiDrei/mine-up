.class final Lcom/tencent/bugly/crashreport/common/info/b$g;
.super Lcom/tencent/bugly/crashreport/common/info/b$a;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/common/info/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 633
    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/common/info/b$a;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 633
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/common/info/b$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "ro.lenovo.series"

    .line 639
    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.build.version.incremental"

    .line 641
    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lenovo/VIBE/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
