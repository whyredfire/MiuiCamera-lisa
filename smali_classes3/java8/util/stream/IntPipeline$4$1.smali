.class public Ljava8/util/stream/IntPipeline$4$1;
.super Ljava8/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline$4;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Ljava8/util/stream/IntPipeline$4;


# direct methods
.method public constructor <init>(Ljava8/util/stream/IntPipeline$4;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/IntPipeline$4$1;->this$1:Ljava8/util/stream/IntPipeline$4;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedInt;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedInt;->downstream:Ljava8/util/stream/Sink;

    iget-object p0, p0, Ljava8/util/stream/IntPipeline$4$1;->this$1:Ljava8/util/stream/IntPipeline$4;

    iget-object p0, p0, Ljava8/util/stream/IntPipeline$4;->val$mapper:Ljava8/util/function/IntUnaryOperator;

    invoke-interface {p0, p1}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava8/util/stream/Sink;->accept(I)V

    return-void
.end method
