.class public final synthetic Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Consumer;


# static fields
.field public static final instance:Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$1;

    invoke-direct {v0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$1;-><init>()V

    sput-object v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$1;->instance:Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Consumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$1;->instance:Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->lambda$tryAdvance$148(Ljava/lang/Object;)V

    return-void
.end method
