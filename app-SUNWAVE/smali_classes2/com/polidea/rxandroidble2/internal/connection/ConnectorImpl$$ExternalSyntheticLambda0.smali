.class public final synthetic Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->lambda$prepareConnection$1(Ljava/util/Set;)V

    return-void
.end method
