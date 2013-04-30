.class public Lcom/androguide/pimp/my/rom/Voltage;
.super Ljava/lang/Object;
.source "Voltage.java"


# instance fields
.field private currentMv:Ljava/lang/String;

.field private freq:Ljava/lang/String;

.field private savedMv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentMv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Voltage;->currentMv:Ljava/lang/String;

    return-object v0
.end method

.method public getFreq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Voltage;->freq:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedMV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Voltage;->savedMv:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentMV(Ljava/lang/String;)V
    .locals 0
    .parameter "currentMv"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/Voltage;->currentMv:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setFreq(Ljava/lang/String;)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/Voltage;->freq:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public setSavedMV(Ljava/lang/String;)V
    .locals 0
    .parameter "savedMv"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/Voltage;->savedMv:Ljava/lang/String;

    .line 26
    return-void
.end method
