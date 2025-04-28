.class public interface abstract annotation Lcom/polidea/multiplatformbleadapter/utils/Constants$BluetoothLogLevel;
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
    name = "BluetoothLogLevel"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DEBUG:Ljava/lang/String; = "Debug"

.field public static final ERROR:Ljava/lang/String; = "Error"

.field public static final INFO:Ljava/lang/String; = "Info"

.field public static final NONE:Ljava/lang/String; = "None"

.field public static final VERBOSE:Ljava/lang/String; = "Verbose"

.field public static final WARNING:Ljava/lang/String; = "Warning"
