.class final Lcom/tencent/bugly/proguard/m$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/m;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/bugly/proguard/m;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/m;II)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    iput p2, p0, Lcom/tencent/bugly/proguard/m$1;->a:I

    iput p3, p0, Lcom/tencent/bugly/proguard/m$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    iget v2, p0, Lcom/tencent/bugly/proguard/m$1;->a:I

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/m;->b(Lcom/tencent/bugly/proguard/m;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/tencent/bugly/proguard/m$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 149
    iget-object v3, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/m;->b(Lcom/tencent/bugly/proguard/m;)Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/tencent/bugly/proguard/m$1;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/m;->b(Lcom/tencent/bugly/proguard/m;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/tencent/bugly/proguard/m$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 153
    new-instance v2, Lcom/tencent/bugly/proguard/l;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/l;-><init>()V

    .line 154
    iget v3, p0, Lcom/tencent/bugly/proguard/m$1;->a:I

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/tencent/bugly/proguard/l;->a:J

    .line 155
    sget-wide v3, Lcom/tencent/bugly/proguard/m;->a:J

    iput-wide v3, v2, Lcom/tencent/bugly/proguard/l;->g:J

    .line 156
    iget-object v3, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/l;->f:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/l;->e:Ljava/lang/String;

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/proguard/l;->c:J

    .line 160
    iget v3, p0, Lcom/tencent/bugly/proguard/m$1;->b:I

    iput v3, v2, Lcom/tencent/bugly/proguard/l;->d:I

    .line 161
    iget-object v3, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/m;->b(Lcom/tencent/bugly/proguard/m;)Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/tencent/bugly/proguard/m$1;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/m;->b(Lcom/tencent/bugly/proguard/m;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/tencent/bugly/proguard/m$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/l;

    .line 164
    iget v3, p0, Lcom/tencent/bugly/proguard/m$1;->b:I

    iput v3, v2, Lcom/tencent/bugly/proguard/l;->d:I

    .line 168
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/bugly/proguard/l;

    .line 170
    invoke-static {v6, v2}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/l;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x1

    .line 172
    iget v7, v2, Lcom/tencent/bugly/proguard/l;->d:I

    iput v7, v6, Lcom/tencent/bugly/proguard/l;->d:I

    .line 174
    :cond_5
    invoke-static {v6, v2}, Lcom/tencent/bugly/proguard/m;->b(Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/l;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 175
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    if-nez v5, :cond_7

    .line 182
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_7
    iget-object v2, p0, Lcom/tencent/bugly/proguard/m$1;->c:Lcom/tencent/bugly/proguard/m;

    iget v3, p0, Lcom/tencent/bugly/proguard/m$1;->a:I

    invoke-static {v2, v3, v1}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "saveCrashRecord failed"

    .line 186
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
