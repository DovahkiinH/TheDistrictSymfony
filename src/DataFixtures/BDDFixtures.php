<?php

namespace App\DataFixtures;

use App\Entity\User;
use App\Entity\Categorie;
use app\Entity\Detail;
use App\Entity\Commande;
use App\Entity\Plat;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {

        $categorie1 = new Categorie ();

        $categorie1 -> setLibelle ("Entrée");
        $categorie1 -> setImage ("Entree_cat.jpg");
        $categorie1 -> setActive (1);

        $manager -> persist ($categorie1);
        $manager -> flush ();


        $categorie2 = new Categorie ();

        $categorie2 -> setLibelle ("Desserts");
        $categorie2 -> setImage ("Dessert_cat.jpg");
        $categorie2 -> setActive (1);

        $manager -> persist ($categorie2);
        $manager -> flush ();


        $categorie3 = new Categorie ();

        $categorie3 -> setLibelle ("Boissons");
        $categorie3 -> setImage ("Boissons_cat.jpg");
        $categorie3 -> setActive (1);

        $manager -> persist ($categorie3);
        $manager -> flush ();


        $categorie4 = new Categorie();

        $categorie4 -> setLibelle("Pizza");
        $categorie4 -> setImage("pizza_cat.jpg");
        $categorie4 -> setActive(1);

        $manager -> persist($categorie4);
        $manager -> flush();


        $categorie5 = new Categorie();

        $categorie5 -> setLibelle("Burger");
        $categorie5 -> setImage("burger_cat.jpg");
        $categorie5 -> setActive(1);

        $manager -> persist($categorie5);
        $manager -> flush();


        $categorie9 = new Categorie();

        $categorie9 -> setLibelle("Wraps");
        $categorie9 -> setImage("wrap_cat.jpg");
        $categorie9 -> setActive(1);

        $manager -> persist($categorie9);
        $manager -> flush();


        $categorie10 = new Categorie();

        $categorie10 -> setLibelle("Pasta");
        $categorie10 -> setImage("pasta_cat.jpg");
        $categorie10 -> setActive(1);

        $manager -> persist($categorie10);
        $manager -> flush();


        $categorie11 = new Categorie();

        $categorie11 -> setLibelle("Sandwich");
        $categorie11 -> setImage("sandwich_cat.jpg");
        $categorie11 -> setActive(0);

        $manager -> persist($categorie11);
        $manager -> flush();


        $categorie12 = new Categorie();

        $categorie12 -> setLibelle("Asian Food");
        $categorie12 -> setImage("asian_food_cat.jpg");
        $categorie12 -> setActive(0);

        $manager -> persist($categorie12);
        $manager -> flush();


        $categorie13 = new Categorie();

        $categorie13 -> setLibelle("Salade");
        $categorie13 -> setImage("salade_cat.jpg");
        $categorie13 -> setActive(1);

        $manager -> persist($categorie13);
        $manager -> flush();


        $categorie14 = new Categorie();

        $categorie14 -> setLibelle("Veggie");
        $categorie14 -> setImage("veggie_cat.jpg");
        $categorie14 -> setActive(1);

        $manager -> persist($categorie14);
        $manager -> flush();


        $plat1 = new Plat();

        $plat1 -> setCategorie ($categorie1);
        $plat1 -> setLibelle("Soupe à l'Oignon Gratinee");
        $plat1 -> setDescription ("Une soupe française traditionnelle préparée à base d'oignons caramélisés, de bouillon de bœuf, de vin blanc et d'herbes, garnie de croûtons de pain grillés et de fromage gratiné.");
        $plat1 -> setPrix(5);
        $plat1 -> setImage ("SoupeOignon.jpeg");
        $plat1 -> setActive (1);

        $manager -> persist ($plat1);
        $manager -> flush ();


        $plat2 = new Plat();

        $plat2 -> setCategorie ($categorie1);
        $plat2 -> setLibelle("Bruschetta");
        $plat2 -> setDescription ("Une entrée italienne classique composée de tranches de pain grillées frottées à l'ail et garnies de tomates fraîches coupées en dés, de basilic frais, d'huile d'olive et de sel.");
        $plat2 -> setPrix(6);
        $plat2 -> setImage ("Bruschetta.jpg");
        $plat2 -> setActive (1);

        $manager -> persist ($plat2);
        $manager -> flush ();


        $plat3 = new Plat();

        $plat3 -> setCategorie ($categorie1);
        $plat3 -> setLibelle("Hummus et Pita");
        $plat3 -> setDescription ("Un plat d'entrée populaire dans de nombreuses cuisines du Moyen-Orient et de la Méditerranée, consistant en une purée crémeuse de pois chiches, de tahini (pâte de sésame), d'ail, de jus de citron et d'huile d'olive, servi avec des pains pita chauds et moelleux pour tremper.");
        $plat3 -> setPrix(4);
        $plat3 -> setImage ("Hummus.jpg");
        $plat3 -> setActive (1);

        $manager -> persist ($plat3);
        $manager -> flush ();


        $plat4 = new Plat();

        $plat4 -> setCategorie($categorie5);
        $plat4 -> setLibelle("District Burger");
        $plat4 -> setDescription("Burger composé d'un bun's du boulanger, deux steacks de 80g (origine française), de deux tranches de poitrine de porc fumée, de deux tranches de cheddar affiné, salade et oignons confits.");
        $plat4 -> setPrix(8);
        $plat4 -> setImage("hamburger.jpg");
        $plat4 -> setActive(1);

        $manager -> persist($plat4);
        $manager -> flush();


        $plat5 = new Plat();

        $plat5 -> setCategorie($categorie4);
        $plat5 -> setLibelle("Pizza Bianca");
        $plat5 -> setDescription("Une pizza fine et croustillante garnie de crème mascarpone légèrement citronnée et de tranches de saumon fumé, le tout relevé de baies roses et de basilic frais.");
        $plat5 -> setPrix(14);
        $plat5 -> setImage("pizza-salmon.png");
        $plat5 -> setActive(1);

        $manager -> persist($plat5);
        $manager -> flush();
  

        $plat6 = new Plat();

        $plat6 -> setCategorie ($categorie2);
        $plat6 -> setLibelle ("Flan");
        $plat6 -> setDescription ("Un dessert français traditionnel, le flan pâtissier est un gâteau composé d'une pâte brisée ou feuilletée recouverte d'une crème à base d'œufs, de lait, de sucre, de farine et d'extrait de vanille. Contrairement au flan traditionnel, le flan pâtissier est cuit au four jusqu'à ce que la garniture se solidifie pour former une texture ferme et crémeuse.");
        $plat6 -> setPrix (3.5);
        $plat6 -> setImage ("Flan.jpg");
        $plat6 -> setActive (1);

        $manager -> persist ($plat6);
        $manager -> flush ();


        $plat7 = new Plat();

        $plat7 -> setCategorie ($categorie2);
        $plat7 -> setLibelle ("Brownie");
        $plat7 -> setDescription (" Un délicieux dessert américain connu pour sa texture dense et moelleuse, ainsi que son intense saveur de chocolat. Le brownie est préparé en mélangeant du chocolat fondu avec du beurre, du sucre, des œufs, de la farine et parfois des noix ou des pépites de chocolat, puis en cuisant le mélange dans un moule carré jusqu'à ce qu'il soit légèrement croquant à l'extérieur mais encore humide à l'intérieur.");
        $plat7 -> setPrix(4.5);
        $plat7 -> setImage ("Brownie.jpg");
        $plat7 -> setActive (1);

        $manager -> persist ($plat7);   
        $manager -> flush (); 


        $plat8 = new Plat();

        $plat8 -> setCategorie ($categorie2);
        $plat8 -> setLibelle ("Mille-feuille");
        $plat8 -> setDescription (" Un dessert emblématique de la pâtisserie française, le mille-feuille, également connu sous le nom de Napoleon, est composé de fines couches de pâte feuilletée croustillante alternant avec des couches de crème pâtissière légère et parfumée à la vanille. Le dessus du mille-feuille est souvent décoré de glaçage royal ou de sucre glace, créant une présentation élégante et raffinée.");
        $plat8 -> setPrix(4.5);
        $plat8 -> setImage ("MilleFeuille.jpg");
        $plat8 -> setActive (1);

        $manager -> persist ($plat8);   
        $manager -> flush ();  


        $plat9 = new Plat();

        $plat9 -> setCategorie($categorie9);
        $plat9 -> setLibelle("Buffalo Chicken Wrap");
        $plat9 -> setDescription("Du bon filet de poulet mariné dans notre spécialité sucrée & épicée, enveloppé dans une tortilla blanche douce faite maison.");
        $plat9 -> setPrix(5);
        $plat9 -> setImage("buffalo-chicken.webp");
        $plat9 -> setActive(1);

        $manager -> persist($plat9);
        $manager -> flush();


        $plat10 = new Plat();

        $plat10 -> setCategorie($categorie5);
        $plat10 -> setLibelle("Cheeseburger");
        $plat10 -> setDescription("Burger composé d'un bun's du boulanger, de salade, oignons rouges, pickles, oignon confit, tomate, d'un steack d'origine Française, d'une tranche de cheddar affiné, et de notre sauce maison.");
        $plat10 -> setPrix(8);
        $plat10 -> setImage("cheesburger.jpg");
        $plat10 -> setActive(1);

        $manager -> persist($plat10);
        $manager -> flush();


        $plat11 = new Plat();

        $plat11 -> setCategorie ($categorie3);
        $plat11 -> setLibelle ("Ice Tea");
        $plat11 -> setDescription ("Rafraîchissant et désaltérant, cet élixir glacé allie la fraîcheur du thé infusé aux notes subtiles de citron, offrant une expérience rafraîchissante inégalée.");
        $plat11 -> setPrix (1.5);
        $plat11 -> setImage ("ice-tea.jpg");
        $plat11 -> setActive (1);

        $manager -> persist ($plat11);
        $manager -> flush ();


        $plat12 = new Plat();

        $plat12 -> setCategorie($categorie10);
        $plat12 -> setLibelle("Spaghetti aux légumes");
        $plat12 -> setDescription("Un plat7 de spaghetti au pesto de basilic et légumes poêlés, très parfumé et rapide.");
        $plat12 -> setPrix(10);
        $plat12 -> setImage("spaghetti-legumes.jpg");
        $plat12 -> setActive(1);

        $manager -> persist($plat12);
        $manager -> flush();


        $plat13 = new Plat();

        $plat13 -> setCategorie ($categorie13);
        $plat13 -> setLibelle("Salade César");
        $plat13 -> setDescription ("Une délicieuse salade Caesar (César) composée de filets de poulet grillés, de feuilles croquantes de salade romaine, de croutons à l'ail, de tomates cerise et surtout de sa fameuse sauce Caesar. Le tout agrémenté de copeaux de parmesan.");
        $plat13 -> setPrix(7);
        $plat13 -> setImage ("cesar_salad.jpg");
        $plat13 -> setActive (1);

        $manager -> persist ($plat13);
        $manager -> flush ();


        $plat14 = new Plat();

        $plat14 -> setCategorie($categorie4);
        $plat14 -> setLibelle("Pizza Margherita");
        $plat14 -> setDescription("Une authentique pizza margarita, un classique de la cuisine italienne! Une pâte faite maison, une sauce tomate fraîche, de la mozzarella Fior di latte, du basilic, origan, ail, sucre, sel & poivre...");
        $plat14 -> setPrix(14);
        $plat14 -> setImage("pizza-margherita.jpg");
        $plat14 -> setActive(1);

        $manager -> persist($plat14);
        $manager -> flush();


        $plat15 = new Plat();

        $plat15 -> setCategorie ($categorie14);
        $plat15 -> setLibelle("Courgettes farcies au quinoa");
        $plat15 -> setDescription ("Voici une recette équilibrée à base de courgettes, quinoa et champignons, 100% vegan et sans gluten!");
        $plat15 -> setPrix(8);
        $plat15 -> setImage ("courgettes_farcies.jpg");
        $plat15 -> setActive (1);

        $manager -> persist ($plat10);
        $manager -> flush ();


        $plat16 = new Plat();

        $plat16 -> setCategorie($categorie10);
        $plat16 -> setLibelle("Lasagnes");
        $plat16 -> setDescription("Découvrez notre recette des lasagnes, l'une des spécialités italiennes que tout le monde aime avec sa viande hachée et gratiné à l'emmental. Et bien sûr, une inoubliable béchamel à la noix de muscane.");
        $plat16 -> setPrix(12);
        $plat16 -> setImage("lasagnes_viande.jpg");
        $plat16 -> setActive(1);

        $manager -> persist($plat16);
        $manager -> flush();


        $plat17 = new Plat();

        $plat17 -> setCategorie ($categorie10);
        $plat17 -> setLibelle("Tagliatelles au saumon");
        $plat17 -> setDescription ("Découvrez notre recette délicieuse de tagliatelles au saumon frais et à la crème qui vous assure un véritable régal!");
        $plat17 -> setPrix(12);
        $plat17 -> setImage ("tagliatelles_saumon.webp");
        $plat17 -> setActive (1);

        $manager -> persist ($plat17);
        $manager -> flush ();


        $plat18 = new Plat();

        $plat18 -> setCategorie ($categorie3);
        $plat18 -> setLibelle ("Coca-Cola");
        $plat18 -> setDescription ("Une boisson pétillante et rafraîchissante, symbole de convivialité, offrant une explosion de saveurs sucrées et acidulées qui éveillent les papilles à chaque gorgée.");
        $plat18 -> setImage ("coca.jpeg");
        $plat18 -> setPrix (1.5);
        $plat18 -> setActive (1);
                
        $manager -> persist ($plat18);
        $manager -> flush ();


        $user1 = new User();
        $user1 -> setEmail("Rambo@gmail.com");
        $user1 -> setRoles(["ROLE_USER"]);
        $user1 -> setPassword("mdp");
        $user1 -> setNom("Rambo");
        $user1 -> setPrenom("John");
        $user1 -> setTelephone("0651114406");
        $user1 -> setAdresse("30 rue du Vietnam");
        $user1 -> setCp("80000");
        $user1 -> setVille("Amiens");

        $manager -> persist( $user1 );
        $manager -> flush ();


        $user2 = new User();
        $user2 -> setEmail("Sacquet@gmail.com");
        $user2 -> setRoles(["ROLE_USER"]);
        $user2 -> setPassword("mdp");
        $user2 -> setNom("Sacquet");
        $user2 -> setPrenom("Bilbon");
        $user2 -> setTelephone("0614744441");
        $user2 -> setAdresse("330 Avenue de la Comtée");
        $user2 -> setCp("80000");
        $user2 -> setVille("Amiens");

        $manager -> persist( $user2 );
        $manager -> flush ();


        $user3 = new User();
        $user3 -> setEmail("kelly@gmail.com");
        $user3 -> setRoles(["ROLE_USER"]);
        $user3 -> setPassword("mdp");
        $user3 -> setNom("Dillard");
        $user3 -> setPrenom("Kelly");
        $user3 -> setTelephone("7896547800");
        $user3 -> setAdresse("308 Post Avenue");
        $user3 -> setCp("80000");
        $user3 -> setVille("Amiens");

        $manager -> persist( $user3 );
        $manager -> flush ();


        $user4 = new User();
        $user4 -> setEmail("thom@gmail.com");
        $user4 -> setRoles(["ROLE_USER"]);
        $user4 -> setPassword("mdp");
        $user4 -> setNom("Gilchrilst");
        $user4 -> setPrenom("Thomas");
        $user4 -> setTelephone("7410001450");
        $user4 -> setAdresse("1277 Sunburst Drive");
        $user4 -> setCp("80000");
        $user4 -> setVille("Amiens");

        $manager -> persist( $user4 );
        $manager -> flush ();


        $user5 = new User();
        $user5 -> setEmail("martha@gmail.com");
        $user5 -> setRoles(["ROLE_USER"]);
        $user5 -> setPassword("mdp");
        $user5 -> setNom("Woods");
        $user5 -> setPrenom("Martha");
        $user5 -> setTelephone("78540001200");
        $user5 -> setAdresse("478 Avenue Street");
        $user5 -> setCp("80000");
        $user5 -> setVille("Amiens");

        $manager -> persist( $user5 );
        $manager -> flush ();


        $user6 = new User();
        $user6 -> setEmail("charlie@gmail.com");
        $user6 -> setRoles(["ROLE_USER"]);
        $user6 -> setPassword("mdp");
        $user6 -> setNom("Chaplin");
        $user6 -> setPrenom("Charlie");
        $user6 -> setTelephone("7458965550");
        $user6 -> setAdresse("3140 Bartlett Avenue");
        $user6 -> setCp("80000");
        $user6 -> setVille("Amiens");

        $manager -> persist( $user6 );
        $manager -> flush ();


        $user7 = new User();
        $user7 -> setEmail("hedley@gmail.com");
        $user7 -> setRoles(["ROLE_USER"]);
        $user7 -> setPassword("mdp");
        $user7 -> setNom("Hedley");
        $user7 -> setPrenom("Claudia");
        $user7 -> setTelephone("745111440");
        $user7 -> setAdresse("1119 Kinney Street");
        $user7 -> setCp("80000");
        $user7 -> setVille("Amiens");

        $manager -> persist( $user7 );
        $manager -> flush ();


        $user8 = new User();
        $user8 -> setEmail("venno@gmail.com");
        $user8 -> setRoles(["ROLE_USER"]);
        $user8 -> setPassword("mdp");
        $user8 -> setNom("Vargas");
        $user8 -> setPrenom("Vernon");
        $user8 -> setTelephone("7414744440");
        $user8 -> setAdresse("1234 Hazelwood Avenue");
        $user8 -> setCp("80000");
        $user8 -> setVille("Amiens");

        $manager -> persist( $user8 );
        $manager -> flush ();


        $user9 = new User();
        $user9 -> setEmail("carlos@gmail.com");
        $user9 -> setRoles(["ROLE_USER"]);
        $user9 -> setPassword("mdp");
        $user9 -> setNom("Grayson");
        $user9 -> setPrenom("Carlos");
        $user9 -> setTelephone("7401456980");
        $user9 -> setAdresse("2969 Hartland Avenue");
        $user9 -> setCp("80000");
        $user9 -> setVille("Amiens");

        $manager -> persist( $user9 );
        $manager -> flush ();


        $user10 = new User();
        $user10 -> setEmail("jonathan@gmail.com");
        $user10 -> setRoles(["ROLE_USER"]);
        $user10 -> setPassword("mdp");
        $user10 -> setNom("Caudill");
        $user10 -> setPrenom("Jonathan");
        $user10 -> setTelephone("7410256996");
        $user10 -> setAdresse("1959 Limer Street");
        $user10 -> setCp("80000");
        $user10 -> setVille("Amiens");

        $manager -> persist( $user10 );
        $manager -> flush ();


        $commande1 = new Commande();
        $dateCommande1 = \DateTime::createFromFormat("Y-m-d H:i:s", "2024-03-15 09:38:45");
        $commande1 -> setDateCommande($dateCommande1);
        $commande1 -> setTotal(0);
        $commande1 -> setEtat("0");
        $commande1 -> setUser($user1);
        $manager -> persist( $commande1 );
        $manager -> flush ();   

        $commande2 = new Commande();
        $dateCommande2 = \DateTime::createFromFormat("Y-m-d H:i:s", "2024-03-15 09:40:22");
        $commande2 -> setDateCommande($dateCommande2);
        $commande2 -> setTotal(0);
        $commande2 -> setEtat("2");
        $commande2 -> setUser($user2);
        $manager -> persist( $commande2 );
        $manager -> flush ();   

        $commande3 = new Commande();
        $dateCommande3 = \DateTime::createFromFormat("Y-m-d H:i:s", "2024-03-15 09:42:16");
        $commande3 -> setDateCommande($dateCommande3);
        $commande3 -> setTotal(0);
        $commande3 -> setEtat("3");
        $commande3 -> setUser($user2);
        $manager -> persist( $commande3 );
        $manager -> flush ();   

    }
}