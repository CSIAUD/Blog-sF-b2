<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Entity\Post;
use App\Form\CommentType;
use App\Repository\CommentRepository;
use App\Repository\PostRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Psr\Log\LoggerInterface;

#[Route('/recettes')]
class RecetteController extends AbstractController
{
    #[Route('/', name: 'app_recettes', methods: ['GET'])]
    public function index(PostRepository $postRepository): Response
    {
        $posts = $postRepository->findLast(10);

        return $this->render('recette/index.html.twig', [
            'posts' => $posts,
        ]);
    }

    /*#[Route('/{id}', name: 'app_recettes_recentes', methods: ['GET'])]
    public function recettesrecentes(PostRepository $postRepository): Response
    {
        $posts = $postRepository->findLast(3);

        return $this->render('recette/recettesrecentes.html.twig', [
            'posts' => $posts,
        ]);
    }*/

    #[Route('/{id}', name: 'app_recette_detail', methods: ['GET', 'POST'])]
    public function recettedetail(Post $post, Request $request, CommentRepository $commentRepository, LoggerInterface $logger): Response
    {
        $logger->info('We are in recette controller');
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $logger->info('We are in valid form');
            $commentRepository->add($comment, true);

            return $this->redirectToRoute('app_comment_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('recette/recettedetail.html.twig', [
            'postdetail' => $post,
            'form' => $form,
        ]);
    }
}
