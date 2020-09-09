<?php

namespace App\Repository;

use App\Entity\FemSinger;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method FemSinger|null find($id, $lockMode = null, $lockVersion = null)
 * @method FemSinger|null findOneBy(array $criteria, array $orderBy = null)
 * @method FemSinger[]    findAll()
 * @method FemSinger[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class FemSingerRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, FemSinger::class);
    }

    // /**
    //  * @return FemSinger[] Returns an array of FemSinger objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('f.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?FemSinger
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
