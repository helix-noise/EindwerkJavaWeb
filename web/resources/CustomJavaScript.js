function validatePassword() {
    var pw1 = document.forms["RegistreerKlant"]["Paswoord"].value;
    var pw2 = document.forms["RegistreerKlant"]["HPaswoord"].value;
    if (pw1 !== pw2) {
        alert("Paswoord klopt niet, gelieven beide wachtwoorden juist in te vullen.");
        return false;
    }
}


