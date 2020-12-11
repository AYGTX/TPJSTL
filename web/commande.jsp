<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./style.css" type="text/css"/>
    </head>
    <body>
        <fieldset>
            <a href="/tp/client.jsp">Créer Client</a>
            <br>
            <a href="/tp/commande.jsp">Creer Commande</a>

        </fieldset>
        <form method="get" action="Commande">
            <fieldset>
                <legend>Informations commande</legend>
                <label for="dateCommande">Date <span
                        class="requis">*</span></label>
                <input type="text" id="dateCommande"
                       name="dateCommande" value="" size="20" maxlength="20" disabled />
                <br />
                <label for="montantCommande">Montant <span
                        class="requis">*</span></label>
                <input type="text" id="montantCommande"
                       name="montantCommande" value="" size="20" maxlength="20" />
                <br />
                <label for="modePaiementCommande">Mode de paiement <span class="requis">*</span></label>
                <input type="text" id="modePaiementCommande"
                       name="modePaiementCommande" value="" size="20" maxlength="20" />
                <br />
                <label for="statutPaiementCommande">Statut du paiement</label>
                <input type="text" id="statutPaiementCommande"
                       name="statutPaiementCommande" value="" size="20" maxlength="20" />
                <br />
                <label for="statutLivraisonCommande">Statut de
                    la livraison</label>
                <input type="text" id="statutLivraisonCommande"
                       name="statutLivraisonCommande" value="" size="20" maxlength="20" />
                <br />
            </fieldset>
            <input type="submit" value="Valider" />
            <input type="reset" value="Remettre à zéro" /> <br/>
        </form>
        <c:if var="${client.montant eq '  '}"> test </c:if>
    <c:if ${client.montant}!=null > <h2> Montant = ${client.montant}</h2></c:if>
    <h2> Mode Paiment = ${client.modep}</h2>
    <h2> Status P= ${client.statusp}</h2>
    <h2> Status Livraison = ${client.statusl} </h2>
    <h2> Date = ${client.date}</h2>
</body>
</html>
