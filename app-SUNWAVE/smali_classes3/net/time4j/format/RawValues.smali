.class public Lnet/time4j/format/RawValues;
.super Ljava/lang/Object;
.source "RawValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/RawValues$EmptyRawValues;
    }
.end annotation


# instance fields
.field private rawValues:Lnet/time4j/engine/ChronoDisplay;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lnet/time4j/format/RawValues$EmptyRawValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/format/RawValues$EmptyRawValues;-><init>(Lnet/time4j/format/RawValues$1;)V

    iput-object v0, p0, Lnet/time4j/format/RawValues;->rawValues:Lnet/time4j/engine/ChronoDisplay;

    return-void
.end method


# virtual methods
.method public accept(Lnet/time4j/engine/ChronoDisplay;)V
    .locals 1

    const-string v0, "Missing raw values."

    .line 83
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    iput-object p1, p0, Lnet/time4j/format/RawValues;->rawValues:Lnet/time4j/engine/ChronoDisplay;

    return-void
.end method

.method public get()Lnet/time4j/engine/ChronoDisplay;
    .locals 1

    .line 104
    iget-object v0, p0, Lnet/time4j/format/RawValues;->rawValues:Lnet/time4j/engine/ChronoDisplay;

    return-object v0
.end method
