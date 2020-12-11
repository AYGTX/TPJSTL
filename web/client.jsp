<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Creer client</title>
        <link rel="stylesheet"
              href="./style.css"
              type="text/css"/>
    <body>
        <div>
            <fieldset>
                <a href="/tp/client.jsp">Créer Client</a>
                <br>
                <a href="/tp/commande.jsp">Creer Commande</a>

            </fieldset>
            <form method="get" action="Client">
                <fieldset>
                    <legend>Informations client</legend>
                    <p class="erreur"> ${message}</p>
                    <label for="nomClient">Nom <span
                            class="requis">*</span></label>
                    <input type="text" id="nomClient" 
                           name="nomClient" value="" size="20" maxlength="20" />
                    <br />
                    <label for="prenomClient">Prénom </label>
                    <input type="text" id="prenomClient" value="Aymen"
                           name="prenomClient" value="" size="20" maxlength="20" />

                    <br />
                    <label for="adresseClient">Adresse de livraison<span class="requis">*</span></label>
                    <input type="text" id="adresseClient" name="adresseClient" value="" size="20" maxlength="20" />
                    <br/>
                    <label for="telephoneClient">Numéro de telephone <span class="requis">*</span></label>
                    <input type="text" id="telephoneClient"
                           name="telephoneClient" value="" size="20" maxlength="20" />
                    <br/>
                    <label for="emailClient">Adresse email</label>
                    <input type="email" id="emailClient" name="emailClient" value="a@aymen.a" size="20" maxlength="60" />
                    <br/>
                </fieldset>
                <input type="submit" value="Valider" />
                <input type="reset" value="Remettre à zéro" /> <br/>
            </form>
        </div>     
    <c:if test="${ empty client.nom}">  <h2> Nom client = ${client.nom}</h2></c:if>
    <c:if test="${ empty client.prenom}">  <h2> Prénom client = ${client.prenom}</h2><h2> Nom client = ${client.prenom}</h2></c:if>
    <c:if test="${ empty client.adresse}">  <h2> Adresse client = ${client.adresse}</h2></c:if>
    <c:if test="${ empty client.telephone}"> <h2> Telephone client = ${client.telephone} </h2></c:if>
    <c:if test="${ empty client.email}"> <h2> Email client = ${client.email}</h2></c:if>
</body>
</html>
