.class public final Ljava8/util/stream/SortedOps$DoubleSortingSink;
.super Ljava8/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleSortingSink"
.end annotation


# instance fields
.field public b:Ljava8/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method public constructor <init>(Ljava8/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Sink<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava8/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 1
    iget-object p0, p0, Ljava8/util/stream/SortedOps$DoubleSortingSink;->b:Ljava8/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    return-void
.end method

.method public begin(J)V
    .locals 2

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfDouble;

    long-to-int p1, p1

    invoke-direct {v0, p1}, Ljava8/util/stream/SpinedBuffer$OfDouble;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer$OfDouble;-><init>()V

    :goto_0
    iput-object v0, p0, Ljava8/util/stream/SortedOps$DoubleSortingSink;->b:Ljava8/util/stream/SpinedBuffer$OfDouble;

    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public end()V
    .locals 6

    .line 1
    iget-object v0, p0, Ljava8/util/stream/SortedOps$DoubleSortingSink;->b:Ljava8/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 3
    iget-object v1, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava8/util/stream/Sink;->begin(J)V

    .line 4
    iget-boolean v1, p0, Ljava8/util/stream/SortedOps$AbstractDoubleSortingSink;->cancellationRequestedCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 6
    iget-object v5, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava8/util/stream/Sink;->accept(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 8
    iget-object v5, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v5}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v5, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava8/util/stream/Sink;->accept(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    :goto_2
    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0}, Ljava8/util/stream/Sink;->end()V

    return-void
.end method
