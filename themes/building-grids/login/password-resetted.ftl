<#macro passwordResettedContent>
            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input id="submitButton" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg('doSubmit')}" disabled/>
                </div>
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                    <input type="button" id="back" value="${kcSanitize(msg('backToLogin'))?no_esc}" onclick="location.href='${url.loginUrl}'">
                    </div>
                </div>
            </div>
        </form>
</#macro>
