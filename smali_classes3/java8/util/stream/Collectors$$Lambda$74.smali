.class public final synthetic Ljava8/util/stream/Collectors$$Lambda$74;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field public final arg$1:Ljava8/util/function/Function;

.field public final arg$2:Ljava8/util/function/Function;

.field public final arg$3:Ljava8/util/function/BinaryOperator;


# direct methods
.method public constructor <init>(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$74;->arg$1:Ljava8/util/function/Function;

    iput-object p2, p0, Ljava8/util/stream/Collectors$$Lambda$74;->arg$2:Ljava8/util/function/Function;

    iput-object p3, p0, Ljava8/util/stream/Collectors$$Lambda$74;->arg$3:Ljava8/util/function/BinaryOperator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$74;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/Collectors$$Lambda$74;-><init>(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$74;->arg$1:Ljava8/util/function/Function;

    iget-object v1, p0, Ljava8/util/stream/Collectors$$Lambda$74;->arg$2:Ljava8/util/function/Function;

    iget-object p0, p0, Ljava8/util/stream/Collectors$$Lambda$74;->arg$3:Ljava8/util/function/BinaryOperator;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1, p0, p1, p2}, Ljava8/util/stream/Collectors;->lambda$toConcurrentMap$69(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V

    return-void
.end method
