.class final Lcom/tencent/bugly/crashreport/crash/anr/b$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/anr/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/anr/b;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/anr/b;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$2;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$2;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->b(Lcom/tencent/bugly/crashreport/crash/anr/b;)V

    return-void
.end method
