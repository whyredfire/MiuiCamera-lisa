.class public final Ljava8/util/Spliterators$LongArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongArraySpliterator"
.end annotation


# instance fields
.field public final array:[J

.field public final characteristics:I

.field public final fence:I

.field public index:I


# direct methods
.method public constructor <init>([JI)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava8/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-void
.end method

.method public constructor <init>([JIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ljava8/util/Spliterators$LongArraySpliterator;->array:[J

    .line 4
    iput p2, p0, Ljava8/util/Spliterators$LongArraySpliterator;->index:I

    .line 5
    iput p3, p0, Ljava8/util/Spliterators$LongArraySpliterator;->fence:I

    or-int/lit8 p1, p4, 0x40

    or-int/lit16 p1, p1, 0x4000

    .line 6
    iput p1, p0, Ljava8/util/Spliterators$LongArraySpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    .line 1
    iget p0, p0, Ljava8/util/Spliterators$LongArraySpliterator;->characteristics:I

    return p0
.end method

.method public estimateSize()J
    .locals 2

    .line 1
    iget v0, p0, Ljava8/util/Spliterators$LongArraySpliterator;->fence:I

    iget p0, p0, Ljava8/util/Spliterators$LongArraySpliterator;->index:I

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$LongArraySpliterator;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 5

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ljava8/util/Spliterators$LongArraySpliterator;->array:[J

    array-length v1, v0

    iget v2, p0, Ljava8/util/Spliterators$LongArraySpliterator;->fence:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Ljava8/util/Spliterators$LongArraySpliterator;->index:I

    if-ltz v1, :cond_1

    iput v2, p0, Ljava8/util/Spliterators$LongArraySpliterator;->index:I

    if-ge v1, v2, :cond_1

    .line 4
    :cond_0
    aget-wide v3, v0, v1

    invoke-interface {p1, v3, v4}, Ljava8/util/function/LongConsumer;->accept(J)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_0

    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Ljava8/util/Spliterators$LongArraySpliterator;->hasCharacteristics(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$LongArraySpliterator;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 3

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Ljava8/util/Spliterators$LongArraySpliterator;->index:I

    if-ltz v0, :cond_0

    iget v1, p0, Ljava8/util/Spliterators$LongArraySpliterator;->fence:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Ljava8/util/Spliterators$LongArraySpliterator;->array:[J

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava8/util/Spliterators$LongArraySpliterator;->index:I

    aget-wide v0, v1, v0

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 4

    .line 3
    iget v0, p0, Ljava8/util/Spliterators$LongArraySpliterator;->index:I

    iget v1, p0, Ljava8/util/Spliterators$LongArraySpliterator;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ljava8/util/Spliterators$LongArraySpliterator;

    iget-object v3, p0, Ljava8/util/Spliterators$LongArraySpliterator;->array:[J

    iput v1, p0, Ljava8/util/Spliterators$LongArraySpliterator;->index:I

    iget p0, p0, Ljava8/util/Spliterators$LongArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, p0}, Ljava8/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    move-object p0, v2

    :goto_0
    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava8/util/Spliterators$LongArraySpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava8/util/Spliterators$LongArraySpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method
