<?php

namespace App\Controller;

use App\Entity\Bands;
use App\Entity\Singer;
use App\Entity\FemSinger;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class SingerController extends AbstractController
{
    /**
     * @Route("/", name="home", methods="GET")
     */
    public function index()
    {
        $repo3 = $this->getDoctrine()->getRepository(Bands::class);
        $bands = $repo3->findAll();

        return $this->render('singer/index.html.twig', compact('bands'));
    }

    /**
     * @Route("/singer", name="male_singer", methods="GET")
     */
    public function singer(): Response
    {
        $repo = $this->getDoctrine()->getRepository(Singer::class);
        $singers = $repo->findAll();

        return $this->render('singer/singer.html.twig', compact('singers'));
    }

    /**
     * @Route("/singer/{id<[0-9]+>}", name="show_desc", methods="GET")
     */
    public function show(Singer $singer): Response
    {
        return $this->render('singer/show.html.twig', compact('singer'));
    }

    /**
     * @Route("/femSinger", name="female_singer", methods="GET")
     */
    public function femSinger(): Response
    {
        $repo2 = $this->getDoctrine()->getRepository(FemSinger::class);
        $femSingers = $repo2->findAll();

        return $this->render('singer/femSinger.html.twig', compact('femSingers'));
    }

    /**
     * @Route("/femSinger/{id<[0-9]+>}", name="showe_desc", methods="GET")
     */
    public function showe(FemSinger $femSinger): Response
    {
        return $this->render('singer/showe.html.twig', compact('femSinger'));
    }



}
