<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayWide=false>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="robots" content="noindex, nofollow">

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <#if properties.meta?has_content>
      <#list properties.meta?split(' ') as meta>
          <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
      </#list>
  </#if>
  
    <title>GRIDS energyCity</title>

    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
            <link href="${url.resourcesPath}/css/meu/styles.css" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <script>
    function showInfo(){
        var snackbar = document.getElementById("snackbar-info");
        if(!snackbar){
        setTimeout(removeInfo,8000);
        document.getElementById("kc-snackbar-wrapper").innerHTML += '<div id="snackbar-info" class="snackbar snackbar-info" >' +
                '<button class="snackbar-close-button" onclick="removeInfo()">'+
                '&times;'+
                '</button>'+
                '<div class="snackbar-text-wrapper"><span class="snackbar-text">${msg("forgotPasswordMessage")?no_esc}</span></div>'+
              '</div>'
        }
    }
    </script>
</head>

<body class="${properties.kcBodyClass!}">
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <div class="${properties.kcLoginClass!}">
    <div class="${properties.kcFormCardClass!} <#if displayWide>${properties.kcFormCardAccountClass!}</#if>">
    <div id="kc-snackbar-wrapper" class="${properties.kcInfoAreaWrapperClass!}">
        <#nested "snackbar">
    </div>
      <div id="kc-content">
        <div id="divEneLoginContainer">
            <div id="divEneLoginHeader">
                <#assign logourl = url.resourcesPath + "/img/GRIDS standard Suite.svg">
                 <img border="0" src="${logourl}" width="180" id="logo">
            </div>
            <div id="divEneLogin">	
                <div id="kc-form" class="${properties.kcFormAreaClass!}">
                    <div id="kc-form-wrapper" class="${properties.kcFormAreaWrapperClass!}">
                        <#nested "form">
                    </div>
                </div>
                <#if displayInfo>
                    <div id="kc-info" class="${properties.kcInfoAreaClass!}">
                        <div id="kc-info-wrapper" class="${properties.kcInfoAreaWrapperClass!}">
                            <#nested "info">
                        </div>
                    </div>
                </#if>    
            </div>
            <div id="divEneLoginfooter">
                <div id="divDatenschutzHinweis" class="datenschutz">
                    <span style='color:grey'>${msg("datenschutzhinweis")} ${msg("dataPrivacyStatement")}</span>
                    <a href="${url.loginResetCredentialsUrl}" class="link forgot-password">${msg("doForgotPassword")}</a>
                </div>
            </div>
        </div>
        </div>
    </div>
  </div>
</body>
</html>
</#macro>
