.class final Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;
.super Ljava/lang/Object;
.source "QtiRadioConfigAidl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioConfigAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QtiRadioConfigDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioConfigAidl;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioConfigAidl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 587
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 593
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "IQtiRadioConfig died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$mresetQtiRadioConfigHalInterfaces(Lcom/qti/phone/QtiRadioConfigAidl;)V

    .line 595
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$minitQtiRadioConfig(Lcom/qti/phone/QtiRadioConfigAidl;)V

    return-void
.end method
