<?php

namespace App\Controller\Admin;

use App\Entity\Avis;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class AvisCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Avis::class;
    }

    public function configureFilters(Filters $filters): Filters
    {
        return $filters
            ->add('nom')
            ->add('prenom')
        ;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Avis')
            ->setEntityLabelInPlural('Avis')
            ->setDefaultSort(['id' => 'DESC'])
        ;
    }

    public function configureFields(string $pageName): iterable
    {
        $timestamp = time();

         yield TextField::new('nom', 'Nom');
         yield TextField::new('prenom', 'Prénom');
         yield IntegerField::new('note', 'Note');
         yield TextareaField::new('contenu', 'Contenu');

    }


}
