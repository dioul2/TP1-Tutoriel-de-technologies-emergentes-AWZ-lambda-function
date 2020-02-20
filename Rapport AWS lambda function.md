# Rapport TP1 Turotiel tecthnologies emergentes
## Choix du sujet: Function as a Service (Serverless)
Dans le cadre du cours **8INF853 - Architecture des applications d'entreprise** nous avons choisi de travailler sur la technologie serverless (“sans serveurs”) initiée par amazon. Elle a pour but de permettre au développeur de se concentrer uniquement sur son code et le provider gère les parties infrastructures et serveurs. En effet cette technologie a tendance à prendre de plus en plus une place importante dans les entreprises, et est très utilisé dans l’environnement du cloud computing. Dans ce sens apprendre et expérimenter cette nouvelle technologie émergente serait pour nous une opportunité de développer une nouvelle connaissance pour notre future insertion professionnelle.

## INTRODUCTION
Traditionnellement le développement et le déploiement  des applications est fait sur des serveurs par lequel les requêtes HTTP entrantes sur les serveurs sont contrôlés par l'équipe de développement. Ceci étant une tâche qui peut être lourde pour les petites entreprises et les développeurs individuels dans leur productivité. 
Dans les grandes entreprise bien qu’elles ont une équipe d'infrastructure qui se charge des services, le même problème se pose vu la dépendance avec l’équipe de développement. La notion de serverless est venu pour pallier à ces problèmes. Dans le cadre de projet nous allons dans un premier temps aborder les principes de bases de cette technologie et enfin nous allons voir la mise en place de cette dernière.

## I.ETAT DE L'ART
### 1.DEFINITION
La notion de serverless ou “sans serveur” est un modèle d’application de cloud computing dans lequel le provider gère la partie infrastructure et serveurs. Ainsi les clients peuvent créer et exécuter leurs applications sur le cloud sans se soucier des tâches  liées aux serveurs. Ceci permet d’alléger les tâches des développeurs puisse qu’ils ne se chargent plus de la gestion, la maintenance, la disponibilité ou d’ajuster la charge au niveau des serveurs.L’allocation des ressources nécessaires se fait de façon dynamique en fonction des besoins du client (développeur), ainsi la facturation est défini dépendra du temps d’utilisation/ quantité de ressources consommé. L'accès aux ressources se fait à travers un déclenchement d’une variété d’évènements notamment les requêtes http, les événements de bases de données, de file d’attentes [1]...

### 2. AVANTAGES ET INCONVENIENTS
Le serverless est aujourd’hui en forte croissante dans les entreprises en offrant plus de flexibilité et d’agilité dans les entreprises. Cependant étant une technologie jeune, elle présente des avantages ainsi que des inconvénients.  

Les principaux avantages sont les suivants:
* **La facturation sur la consommation:** avec le serverless la facturation se base sur la mesure en temps de d'éxécution du code et des ressources consommées. Donc plus de facturation inutile ou pendant qu’une fonction n’est pas utilisée.
* **Le gain de temps pour les développeurs:** les problèmes d’infrastructures ne sont plus gérés par les développeurs, ils se focalisent totalement sur la qualité du code et les fonctionnalités des applications.
* **isponibilité des ressources:** permet d’assurer l'accessibilité d’une ressource à chaque appelle de fonction.  

Mais cette technologie présente également quelques inconvénients que nous verrons ci dessous:
* **Le “vendor lock-in”:**  chaque fournisseur serverless a sa propre architecture et ses règles qu’il faut accepter. Cette différence entre ces providers fait qu’il est très difficile de migrer vers un autre. 
* **La sécurité:** l’utilisation du serverless augmente le périmètre d’attaque de l’utilisateur. En effet la jeunesse de cette technologie fait qu’elle n’est pas totalement maîtrisés par les responsables de la sécurité informatiques et les développeurs. Ainsi notre sécurité dépend en grande partie du provider.
* **Technologie encore jeune:** c’est une technologie en cours de développement et ne présente pas un forte communauté d’utilisateurs, pas de documentation solides, et présente quelques limitations techniques comme les langages de programmations supportés.  

### 3. Etudes des différents fournisseurs
Les fournisseurs de Cloud computing proposent actuellement la technologie Serverless. Dans cette partie nous allons faire une étude  des technologies proposés par Amazon, Microsoft et Google.  
* **AWS Lambda:** C’est l’environnement fourni par Amazon. Il permet d'exécuter du code pour créer des applications à la demande. Le service s’adapte automatiquement en fonction de l’utilisation, offre une tolérance au panne et une haute disponibilité du service. AWS lambda supporte les langages de programmation suivantes: Node.js(JavaScript), Python, Java (Java 8 compatible), C# (.NET Core), Go et PowerShell.  
Cependant le service Lambda a des limites concernant l’utilisation des ressources tels que l’allocation de la mémoire qui doit avoir une valeur minimale de 128 Mo et un maximum de 3008 Mo, mais peut être augmenté au besoin en payant des frais supplémentaires; le temps d’exécution maximale des fonctions Lambda est de 15 minutes, au delà de ce temps la fonction est automatiquement terminée; et le nombres d’instances d’exécution simultanées pour les fonctions d'une région donnée est fixé à 1 000.

* **Microsoft Azure:** Concurrent direct d’Amazon Web Service (AWS), Azure est une plate-forme cloud de Microsoft. Elle fournit un ensemble de services cloud en pleine croissance permettant aux entreprises de construire, de gérer et de déployer des applications sur un gigantesque réseaux mondial en utilisant les infrastructures et outils de leurs choix à faible coûts.  
En effet, les prix varient selon le type de service mais aussi de la capacité de stockage utilisé ainsi les entreprise peuvent réaliser d’importantes économies en ne payant que ce qu’elles consomment surtout avec les deux programmes de microsoft (for Startups et for Students). Parmis les services les plus populaires de Microsoft Azure on y trouve:
  * RemoteApp: qui permet le déploiement de programme Windows sur différent OS par le biais d’une VM.
  * Azure IoT: qui permet de connecter et de surveiller les objets connectés mais aussi offre des fonctionnalités de télémétrie et          d’analyse. 
  * HDInsight: qui est un déploiement personnalisé de la plateforme Big Data Hadoop.
  * Azure Cosmos DB: qui est une  base de donnée NoSQL hébergé pour des cas d’utilisation spécifiques.
  *Azure Media Services: propose des services de lecture, d’indexation, de transcodage et de protection de contenu vidéo.

* **Google Cloud Platform (GPC):** est un ensemble de services cloud offert par Google pour les développeurs et les gestionnaires d’infrastructure regroupant différents services tels que: de stockage, de networking, de Big Data, de machine learning, d’internet d’objets, de sécurité, etc… Comme toutes les platform cloud, celle de google permet aussi d'épargner  aux entreprises toutes les tâches liées à l’infrastructure et de profiter pleinement à son service à faible coûts.  
      *mettre image*  
Parmis les services les plus populaires de Google Cloud Platform (GCP) on y trouve le google: Compute Engine, App Engine, cloud Storage, Container Engine.

### 4.CRITERES DE CHOIX

## II.CHOIX ET MISE EN PRATIQUE  
### 1.CHOIX DE PLATEFORME  
### 2.TUTORIEL D'UTILISATION AWS LAMBDA
Dans cette partie nous allons faire un tutoriel d’utilisation du service Lambda de AWS en mettant en place une fonction HelloWorld.<br><br>
La première étape consiste à créer un compte AWS puis se connecter à  la console AWS Management.  
[Cliquer ici pour aller sur AWS Amazon ](https://aws.amazon.com/fr/)<br><br>
Une fois authentifié, rechercher et lancer le service Lamba pour ensuite cliquez sur créer une  fonction.  
![Lambda logo](https://github.com/dioul2/TP1-Tutoriel-de-technologies-emergentes-AWZ-lambda-function/blob/master/img/Lambda.png "Lambda logo")<br><br>
Cette étape affiche plusieurs options afin de créer une fonction, nous allons prendre l’option: **“Créer à partir de zéro”**.<br><br>
![Option de crétion de compte](https://github.com/dioul2/TP1-Tutoriel-de-technologies-emergentes-AWZ-lambda-function/blob/master/img/Options%20creer%20fonction.png "Option de crétion de compte")<br><br>
Ensuite nous pouvons donner un nom à la fonction et choisir ou créer un modèle de d’éxécution. Pour ce tutoriel nous allons créer un  rôle, lui donner un nom et définir **le modèle de stratégies en une simple autorisation de microservice**.<br><br>
![ChoixDeFonctionCreer](https://github.com/dioul2/TP1-Tutoriel-de-technologies-emergentes-AWZ-lambda-function/blob/master/img/nomFonction_Role.PNG " ChoixDeFonctionCreer ")<br><br>
A cette étape vous aurez un environnement de développement de votre code et avez le choix parmis les langage de programmation supportés par AWS(.NET, Go, Java, NodeJs, Ruby et Python). Pour ce tutorial le choix est opté pour le NodeJs.
![ChoixLangageProg](https://github.com/dioul2/TP1-Tutoriel-de-technologies-emergentes-AWZ-lambda-function/blob/master/img/ChoixLangageProg.PNG " choisir le langage de programmation ")<br><br>
Maintenant nous pouvons mettre en place des évenements de test en cliqaunt sur le boutton tester, pour ensuite éxécuter la fonction.
![CreerEvent](https://github.com/dioul2/TP1-Tutoriel-de-technologies-emergentes-AWZ-lambda-function/blob/master/img/CreerEvent.PNG "creer event")<br><br>
Les evenements de test sont définis par le code suivant:  
<pre><code>{
 "key1": "Hello word",
 "key2": "Bonjour !!!"
}</code></pre>  
Maintenant nous pouvont appeler un événement au niveau du code NodeJs pour éxécuter la fonction.
<pre><code>exports.handler = async (event) => {
    // TODO implement
    const response = {
        statusCode: 200,
        body: JSON.stringify("Value is " + event.key1),
    };
    return response;
};</code></pre>  
Le résultats de notre fonction hellWord est illustré par la figure suivante.
![resultat](https://github.com/dioul2/TP1-Tutoriel-de-technologies-emergentes-AWZ-lambda-function/blob/master/img/resultat.PNG "resultat")<br><br>
