.class public Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$1;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->initPartialTraversalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

.field public final synthetic val$b:Ljava8/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method public constructor <init>(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;Ljava8/util/stream/SpinedBuffer$OfDouble;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$1;->this$0:Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    iput-object p2, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$1;->val$b:Ljava8/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 4
    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$1;->val$b:Ljava8/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 2
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 3
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$1;->accept(D)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$1;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    return-void
.end method

.method public cancellationRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public end()V
    .locals 0

    return-void
.end method
