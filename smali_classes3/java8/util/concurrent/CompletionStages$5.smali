.class public final Ljava8/util/concurrent/CompletionStages$5;
.super Ljava/lang/Object;
.source "CompletionStages.java"

# interfaces
.implements Ljava8/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/concurrent/CompletionStages;->exceptionallyComposeAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/function/BiFunction<",
        "TT;",
        "Ljava/lang/Throwable;",
        "Ljava8/util/concurrent/CompletionStage<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$executor:Ljava/util/concurrent/Executor;

.field public final synthetic val$fn:Ljava8/util/function/Function;

.field public final synthetic val$thisStage:Ljava8/util/concurrent/CompletionStage;


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/concurrent/CompletionStages$5;->val$thisStage:Ljava8/util/concurrent/CompletionStage;

    iput-object p2, p0, Ljava8/util/concurrent/CompletionStages$5;->val$fn:Ljava8/util/function/Function;

    iput-object p3, p0, Ljava8/util/concurrent/CompletionStages$5;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletionStages$5;->apply(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2
    iget-object p0, p0, Ljava8/util/concurrent/CompletionStages$5;->val$thisStage:Ljava8/util/concurrent/CompletionStage;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljava8/util/concurrent/CompletionStages$5;->val$thisStage:Ljava8/util/concurrent/CompletionStage;

    new-instance p2, Ljava8/util/concurrent/CompletionStages$5$1;

    invoke-direct {p2, p0}, Ljava8/util/concurrent/CompletionStages$5$1;-><init>(Ljava8/util/concurrent/CompletionStages$5;)V

    iget-object p0, p0, Ljava8/util/concurrent/CompletionStages$5;->val$executor:Ljava/util/concurrent/Executor;

    .line 3
    invoke-interface {p1, p2, p0}, Ljava8/util/concurrent/CompletionStage;->handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava8/util/function/Functions;->identity()Ljava8/util/function/Function;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/concurrent/CompletionStage;->thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    :goto_0
    return-object p0
.end method
