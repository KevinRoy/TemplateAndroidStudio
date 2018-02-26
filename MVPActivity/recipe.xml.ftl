<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if generateKotlin>
    <instantiate from="root/src/app_package/SimpleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

    <instantiate from="root/src/app_package/ISimpleActivityView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${iActivityViewClass}.kt" />

    <instantiate from="root/src/app_package/SimpleActivityModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityModelClass}.kt" />

    <instantiate from="root/src/app_package/SimpleActivityPresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityPresenterClass}.kt" />
<#else>
    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="root/src/app_package/ISimpleActivityView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${iActivityViewClass}.java" />

    <instantiate from="root/src/app_package/SimpleActivityModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityModelClass}.java" />

    <instantiate from="root/src/app_package/SimpleActivityPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityPresenterClass}.java" />

</#if>

</recipe>
