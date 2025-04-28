.class public final synthetic Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->lambda$prepareConnection$0(Ljava/util/Set;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
