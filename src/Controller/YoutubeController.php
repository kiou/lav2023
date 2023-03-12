<?php
namespace App\Controller;

use App\Repository\YoutubeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class YoutubeController extends AbstractController
{
    public function index(YoutubeRepository $YoutubeRepository)
    {
        $youtubes = $YoutubeRepository->getAllYoutubes();

        return $this->render('youtubes.html.twig',[
            'youtubes' => $youtubes
        ]);

    }
}