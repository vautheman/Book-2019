<?php
$header="MIME-Version: 1.0\r\n";
$header.='From: "autheman-victor.fr"<contact@autheman-victor.fr>'."\n";
$header.='Content-Type:text/html; charset"utf-8"'."\n";
$header.='Content-Transfer-Encoding: 8bit';

$messageMail='
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns:v="urn:schemas-microsoft-com:vml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
  </head>
  <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <table bgcolor="#242943"width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td bgcolor="#242943">
            <div>
              <table align="center" width="590" border="0" cellpadding="0" cellspacing="0">
                <tbody>
                <tr>
                  <td height="30" style="font-size: 30px; line-height: 30px;">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" style="text-align:center;">
                    <a href="http://autheman-victor.fr">
                      <img src="http://autheman-victor.fr/ancienSite/images/logo.png" width="78" border="0" alt="Logo autheman-victor.fr">
                    </a>
                  </td>
                </tr>
                <tr>
                  <td height="30" style="font-size: 30px; line-height: 30px;">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" style="font-family: Helvetica, sans-serif; text-align: center; font-size:32px; color: #FFF; mso-line-height-rule: exactly; line-height: 28px;">
                    Confirmation de votre compte
                  </td>
                </tr>
                <tr>
                  <td height="30" style="font-size: 30px; line-height: 30px;">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" style="font-family: Helvetica, sans-serif; text-align: center; font-size:15px; color: #878b99; mso-line-height-rule: exactly; line-height: 26px;">
                    <a href="https://autheman-victor.fr/updatePassword.php">Changer mon mot de passe</a>
                  </td>
                </tr>
                <tr>
                  <td height="30" style="font-size: 30px; line-height: 30px;">&nbsp;</td>
                </tr>
                </tbody>
              </table>
            </div>

          </td>
        </tr>
      </tbody>
    </table>
  </body>
</html>
';

mail($mail, "Confirmation de compte", $messageMail, $header);
?>
