.class public interface abstract annotation Lcom/polidea/multiplatformbleadapter/utils/Constants$ConnectionPriority;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/multiplatformbleadapter/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ConnectionPriority"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final BALANCED:I = 0x0

.field public static final HIGH:I = 0x1

.field public static final LOW_POWER:I = 0x2
