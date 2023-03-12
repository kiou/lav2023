<?php
namespace App\Controller;

use App\Entity\Contact;
use App\Form\Type\ContactType;
use App\Repository\AvisRepository;
use App\Repository\YoutubeRepository;
use App\Repository\ActualiteRepository;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class GlobalController extends AbstractController
{
    public function index(
            Request $request,
            MailerInterface $mailer,
            ActualiteRepository $ActualiteRepository,
            YoutubeRepository $YoutubeRepository,
            AvisRepository $AvisRepository
        )
    {
        $contact = new Contact;
        $form = $this->createForm(ContactType::class, $contact);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $email = (new TemplatedEmail())
                ->from('contact@lucpinelli.fr')
                ->to('pinelli.luc@outlook.fr')
                ->subject('Contat via lucpinelli.fr')
                ->htmlTemplate('mail/layout.html.twig')
                ->context([
                    'titre' => 'Contat via lucpinelli.fr',
                    'contenu' => 'Nom: '.$form->getData()->getNom().'<br> Téléphone: '.$form->getData()->getTel().'<br> Email: '.$form->getData()->getEmail().'<br> Message: '.$form->getData()->getMessage()
                ]);

            $mailer->send($email);

            $request->getSession()->getFlashBag()->add('succes', 'Votre message à bien été envoyé, j\'y répondrai dès que possible!');
            return $this->redirect($this->generateUrl('app_index'));

        }

        $actualites = $ActualiteRepository->getAccueilActualite();
        $videos = $YoutubeRepository->getLastVideo();
        $avis = $AvisRepository->getAllAvis();

        return $this->render('index.html.twig',[
            'form' => $form->createView(),
            'action' => 'accueil',
            'actualites' => $actualites,
            'videos' => $videos,
            'avis' => $avis
        ]);
    }

}