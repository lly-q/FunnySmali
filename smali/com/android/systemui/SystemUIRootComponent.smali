.class public interface abstract Lcom/android/systemui/SystemUIRootComponent;
.super Ljava/lang/Object;
.source "SystemUIRootComponent.java"


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
.end method

.method public abstract createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
.end method

.method public abstract createGarbageMonitor()Lcom/android/systemui/util/leak/GarbageMonitor;
.end method

.method public abstract createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
.end method

.method public abstract getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end method

.method public abstract getStatusBarInjector()Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;
.end method

.method public abstract inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
.end method
