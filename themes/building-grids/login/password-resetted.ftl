<#macro passwordResettedHeader>
<div class="pwReset-header">
    <img id="iconReset" src="${url.resourcesPath}/img/icon.svg"/>
        <span class="resetPwText">
          ${msg("resetPasswordHeader")}
        </span>
</div>
</#macro>
<#macro passwordResettedContent>

            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                <div class="resettedInformation">
                <span>${msg("confirmPwResetMessage")}</span>
                </div>
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                    <input type="button" class="backToLogin" id="resettedBack" value="${kcSanitize(msg('backToLogin'))?no_esc}" onclick="location.href='${url.loginUrl}'">
                    </div>
                </div>
            </div>
        </form>
</#macro>
