<?php

namespace App\Controller\Admin;

use Imagine\Image\Box;
use App\Entity\Youtube;
use Imagine\Gd\Imagine;
use App\Utilities\Upload;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class YoutubeCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Youtube::class;
    }

    public function configureFilters(Filters $filters): Filters
    {
        return $filters
            ->add('title')
            ->add('categorie')
        ;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Vidéo')
            ->setEntityLabelInPlural('Vidéos')
            ->setDefaultSort(['id' => 'DESC'])
        ;
    }

    public function configureFields(string $pageName): iterable
    {
        $timestamp = time();

         yield TextField::new('title', 'Titre');
         yield ChoiceField::new('categorie')
            ->autocomplete()->setChoices([
                'Téléphonie' => 'Téléphonie',
                'Formation' => 'Formation',
                'Réparation' => 'Réparation',
                'Communication' => 'Communication',
                'Vente' => 'Vente',
                'Internet' => 'Internet',
            ]);
         yield TextField::new('link', 'Lien');
         yield TextField::new('time', 'Timer');
         yield ImageField::new('image')
                    ->setUploadDir('public/img/miniature/')
                    ->setBasePath('img/miniature/')
                    ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
                    ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                        $upload = new Upload();

                        $image = $upload->createName(
                            $file->getClientOriginalName(),
                            $this->getUploadRootDir().'/',
                            $timestamp
                        );

                        $imagine = new Imagine();

                        $size = new Box(586,327);
                        $imagine->open($file)
                                ->thumbnail($size, 'outbound')
                                ->save($this->getUploadRootDir().'miniature/'.$image);
                });
           yield BooleanField::new('isActive','Actif');
  
    }

    public function getUploadRootDir()
    {
        return __DIR__.'/../../../public/img/';
    }
}
