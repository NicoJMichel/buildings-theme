<#import "password-resetted.ftl" as pwResetted>
<#import "template.ftl" as layout>

<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
  <#if section = "header">
  <#if message?has_content && message.summary == msg("emailSentMessage")>
  <@pwResetted.passwordResettedHeader />
  <#else>
    <#assign logourl = url.resourcesPath + "/img/GRIDS standard Suite.svg">
      <img border="0" src="${logourl}" width="180" id="logo">
    </#if>
  <#elseif section = "snackbar" && message?has_content>
              <div id="snackbar" class="snackbar snackbar-${message.type}" >
                <button class="snackbar-close-button" onclick="removeIt()">
                &times;
                </button>
                <div class="snackbar-text-wrapper">
                <span class="snackbar-text">${message.summary}</span>
                </div>
              </div>
  <#elseif section = "form">
  <#if message?has_content && message.summary == msg("emailSentMessage")>
    <@pwResetted.passwordResettedContent />
    <#else>
    <div id="kc-form" <#if realm.password && social.providers??>class="${properties.kcContentWrapperClass!}"</#if>>
      <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
        <#if realm.password>
          <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
            <div class="inputField">
              <p class="inputFieldName">${msg("emailAddress")}</p>
              <#if usernameEditDisabled??>
                <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" disabled" placeholder="${msg('emailPlaceholder')}" />
              <#else>
                  <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" placeholder="${msg('emailPlaceholder')}" />
              </#if>
            </div>
            <div class="inputField">
              <div class="inputFieldName">
                <span>${msg("password")}</span>
              </div>
              <input tabindex="2" id="password" class="${properties.kcInputClass!}" name="password" type="password" autocomplete="off" placeholder="•••••••••••" />
            </div>
            <div class="inputField">
            <#if realm.resetPasswordAllowed>
                  <a href="${url.loginResetCredentialsUrl}" class="link" id="forgot-password">${msg("doForgotPassword")}</a>
                </#if>
                <#assign warning_icon = url.resourcesPath + "/img/warning_small.svg">
              <p class="caps-lock" id="caps-lock-warning">${msg("capsLock")}<img src="${warning_icon}"></p>
              <input id="btnEneLogin" tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
            </div>
            <div id="kc-form-options">
              <#if realm.rememberMe && !usernameEditDisabled??>
                <div id="divEneRememberMe">
                  <label class="checkbox">
                    <#if login.rememberMe??>
                      <input tabindex="3" name="rememberMe" type="checkbox" checked>
                      <span>${msg("rememberMe")}</span>
                    <#else>
                      <input tabindex="3" name="rememberMe" type="checkbox">
                      <span>${msg("rememberMe")}</span>
                    </#if>
                  </label>
                </div>
              </#if>
            </div>
          </form>
        </#if>
      </div>

      <#if realm.password && social.providers??>
        <div id="kc-social-providers" class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}">
          <ul class="${properties.kcFormSocialAccountListClass!} <#if social.providers?size gt 4>${properties.kcFormSocialAccountDoubleListClass!}</#if>">
            <#list social.providers as p>
              <li class="${properties.kcFormSocialAccountListLinkClass!}"><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span>${p.displayName}</span></a></li>
            </#list>
          </ul>
        </div>
      </#if>
    </div>
    </#if>
  <#elseif section = "info" >
    <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
      <!--
      <div id="kc-registration">
          <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
      </div>
      -->
    </#if>
  </#if>

  
</@layout.registrationLayout>
