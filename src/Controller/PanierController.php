<?php

namespace App\Controller;

use App\Repository\CategorieRepository;
use App\Repository\PlatRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class PanierController extends AbstractController
{

    private $CategorieRepository;
    private $PlatRepository;

    public function __construct(CategorieRepository $CategorieRepository, PlatRepository $PlatRepository)
    {
        $this->CategorieRepository = $CategorieRepository;
        $this->PlatRepository = $PlatRepository;
    }

    #[Route('/panier/', name: 'app_panier')]
    public function index(): Response
    {
        return $this->render('panier/index.html.twig', [
            'controller_name' => 'PanierController',
        ]);
    }


    #[Route('/panier/ajout/{id}', name: 'app_panierA')]
    public function ViewPanierA(): Response
    {
        return $this->render('panier/index.html.twig', [
            'controller_name' => 'PanierAController',
        ]);
    }
}
