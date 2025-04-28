.class public Lnet/time4j/engine/ChronoException;
.super Ljava/lang/RuntimeException;
.source "ChronoException.java"


# static fields
.field private static final serialVersionUID:J = -0x5c3e28cabdf650b4L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
